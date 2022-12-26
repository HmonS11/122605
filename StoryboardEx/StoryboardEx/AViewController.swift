//
//  AViewController.swift
//  StoryboardEx
//
//  Created by wizard on 2022/10/20.
//

import UIKit

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actPop(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actPopToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
       // self.navigationController?.popToViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
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
