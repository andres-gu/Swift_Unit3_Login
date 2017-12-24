//
//  ViewController.swift
//  Login
//
//  Created by Andres Gutierrez on 12/23/17.
//  Copyright © 2017 Andres Gutierrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var forgotUsernameBtn: UIButton!
    @IBOutlet weak var forgotPasswordBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func ForgotUsernameButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotUorP", sender: forgotUsernameBtn)
    }
    
    @IBAction func ForgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotUorP", sender: forgotPasswordBtn)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotPasswordBtn {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameBtn {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameField.text
        }
    }
}

