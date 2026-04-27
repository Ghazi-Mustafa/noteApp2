//
//  DetailViewController.swift
//  noteApp2
//
//  Created by Mustafa Ghazi on 27/04/26.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var descLabel : UILabel!
    var titleNote : String = "note"
    var descNote = "Desc"
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    func updateUi(){
        descLabel.text = descNote
        title = titleNote
    }

}
