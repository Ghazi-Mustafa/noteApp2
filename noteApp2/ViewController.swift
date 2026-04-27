//
//  ViewController.swift
//  noteApp2
//
//  Created by Mustafa Ghazi on 27/04/26.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    

    @IBOutlet weak var notesTableView : UITableView!
    var notes : [NoteModel] = [
        NoteModel(title: "note1", description: "this is note1"),
        NoteModel(title: "note2", description: "this is note2"),
        NoteModel(title: "note3", description: "this is note3"),
    ]
    var noteToPass : NoteModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        notesTableView.delegate = self
        notesTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "") as! NoteTableViewCell
        cell.titleLabel.text = notes[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        noteToPass = notes[indexPath.row]
        performSegue(withIdentifier: "", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // we have to do it later
    }

}

