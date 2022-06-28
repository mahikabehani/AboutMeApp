//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Mahika on 23/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var startImage: UIImageView!
    @IBOutlet weak var fact: UILabel!
    var funFacts = ["I love horses!" , "I have an older brother!" , "I'm Indian!" , "Dogs are my favourite animal!" , "I love the beach!" , "I love colours!"]
    
    let arrays = [UIImage(named: "IMG_3683"),UIImage(named: "3269971e-bbf4-40ec-a179-89bc0f46c431"),UIImage(named: "IMG_4557"),UIImage(named: "IMG_5975"),UIImage(named: "IMG_9054"),UIImage(named: "a5a30ae9-a067-4158-b65d-aba684f45b3f"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showFacts(_ sender: UIButton) {
        startImage.isHidden = true
        let randomIndex = Int.random(in: 0..<funFacts.count)
        let randomFact = funFacts [randomIndex]
        fact.text = randomFact
        let image = arrays [randomIndex]
        imageView.image = image
    }
    
}

