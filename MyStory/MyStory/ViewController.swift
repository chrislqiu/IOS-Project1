//
//  ViewController.swift
//  MyStory
//
//  Created by user233598 on 1/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let about = Pete(title: "About Pete", info: "Pete is Purdue University's mascot, often seen at sports games. In addition to this, he was also nominated as the creepiest college mascot.")
    let likes = Pete(title: "Likes", info: "Pete likes when you attend games and being a Boilermaker with Purdue Grit")
    let dislikes = Pete(title: "Dislikes", info: "He dislikes when students do not have Purdue Grit and when students walk under the bell tower")
    
    var info : [Pete] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        info = [about, likes, dislikes]
    }
    

    
    @IBAction func button(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.which = info[0]
            } else if tappedView.tag == 1 {
                detailViewController.which = info[1]
            } else if tappedView.tag == 2 {
                detailViewController.which = info[2]
            }
        }
    }
    
    
    
}

