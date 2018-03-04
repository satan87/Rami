//
//  PlayViewController.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-02-04.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if ( gameInProgress ) {
            
        }else{
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func leaveTheScene(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
