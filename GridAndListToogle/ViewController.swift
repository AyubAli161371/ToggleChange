//
//  ViewController.swift
//  GridAndListToogle
//
//  Created by - on 12/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var list: UIView!
    @IBOutlet weak var grid: UIView!
    @IBOutlet weak var press: UIButton!
    
    var pressedBtn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPressed(_ sender: Any) {
        changeFormat()
        
            }
    func changeFormat()
    {
        if pressedBtn == true
        {
            press.setTitle("list", for: .normal)
            list.isHidden = true
            grid.isHidden = false
            // Show List and dissmiss grid viewcontroller
            pressedBtn = false
        }
        else
        {
            list.isHidden = false
            grid.isHidden = true
            press.setTitle("Grid", for: .normal)
            pressedBtn = true
        }
      }
}

