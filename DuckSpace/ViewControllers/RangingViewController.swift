//
//  RangingViewController.swift
//  DuckSpace
//
//  Created by Robert Manson on 9/26/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import UIKit


class RangingViewController: UIViewController {

    @IBOutlet weak var takePhotoButton: UIButton!
    @IBOutlet weak var distanceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        takePhotoButton.hidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func takeSelfieButtonPressed(sender: UIButton) {
        UIAlertView(title: "Looking Good", message: "Keep at it bro", delegate: nil, cancelButtonTitle: "Roger that")
    }
    func outOfRange(dismissed: Void -> Void) {
        dismissViewControllerAnimated(false) {
            dismissed()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
