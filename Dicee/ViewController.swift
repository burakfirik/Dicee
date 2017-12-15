//
//  ViewController.swift
//  Dicee
//
//  Created by Burak Firik on 12/14/17.
//  Copyright © 2017 Burak Firik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var diceImageView1: UIImageView!
  @IBOutlet weak var diceImageView2: UIImageView!
  
  @IBAction func rollButtonTapped(_ sender: Any) {
    updateImages()
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    updateImages()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func updateImages() {
    var rand1 = Int(arc4random_uniform(6)) +  1
    var rand2 = Int(arc4random_uniform(6)) +  1
    diceImageView1.image = UIImage(named: "dice\(rand1)")
    diceImageView2.image = UIImage(named: "dice\(rand2)")
  }

  override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
    updateImages()
  }
  
}

