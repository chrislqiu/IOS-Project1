//
//  DetailViewController.swift
//  MyStory
//
//  Created by user233598 on 1/20/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    var which : Pete?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let fill = which {
            header.text = fill.title
            desc.text = fill.info
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
