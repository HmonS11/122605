//
//  MainViewController.swift
//  StoryboardEx
//
//  Created by wizard on 2022/10/20.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func actPushVC(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "a") as? AViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func actPresentVC(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "b") as? BViewController else { return }
        present(vc, animated: true)
    }
    
    @IBAction func actFromOtherStoryboard(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Sub", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "aaa") as? SubViewController else { return }
        
        navigationController?.pushViewController(vc, animated: true)
//        present(vc, animated: true)
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
