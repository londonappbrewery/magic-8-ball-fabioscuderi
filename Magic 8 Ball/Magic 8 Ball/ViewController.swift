//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Fabio Scuderi on 14/02/17.
//
//

import UIKit

class ViewController: UIViewController {
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: UIButton) {
        func newBallImage() {
            randomBallNumber = Int(arc4random_uniform(4))
            imageView.image = UIImage(named: ballArray[randomBallNumber])
        }
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        func newBallImage() {
            randomBallNumber = Int(arc4random_uniform(4))
            imageView.image = UIImage(named: ballArray[randomBallNumber])
        }
        newBallImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "ball1")
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

