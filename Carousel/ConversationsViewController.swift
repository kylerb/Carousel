//
//  ConversationsViewController.swift
//  Carousel
//
//  Created by Kyler Blue on 10/22/16.
//  Copyright © 2016 Kyler Blue. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {
    
    @IBOutlet weak var didPressBack: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController?.popToRootViewController(animated: true)
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
