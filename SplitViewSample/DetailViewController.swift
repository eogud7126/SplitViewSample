//
//  DetailViewController.swift
//  SplitViewSample
//
//  Created by USER on 28/08/2020.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var icon: UIImageView!
    
    var numbers: Number? {
        didSet {
            refreshUI()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        icon.image = numbers?.number.image
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
