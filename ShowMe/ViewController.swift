//
//  ViewController.swift
//  ShowMe
//
//  Created by Xoi's iMac on 2015-07-15.
//  Copyright (c) 2015 Xoi's iMac. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    
    
    @IBOutlet weak var textToSendField: UITextField!
    
    
    @IBAction func showMe(sender: UIButton) {
        NSLog("User Wrote: %@", textToSendField.text)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let messageController = segue.destinationViewController as! MessageViewController
        messageController.messageData = textToSendField.text
        
    }


}

