//
//  ViewController.swift
//  CountriesCallingCodesDemo
//
//  Created by Muhammad Imran on 03/12/2020.
//

import UIKit
import CountriesCallingCodes
class ViewController: UIViewController, callingCodeData {
    @IBOutlet weak var textLabel : UILabel!

   
    
    func countryCodeAndFlag(name: String, flag: String, code: String, dialCode: String) {
        textLabel.text = "\(flag) \(name) \(dialCode)"
        
    }
    @objc func callingCodeVC(){
        let vc = CallingCodesVC()
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(callingCodeVC))
        textLabel.addGestureRecognizer(tap)
        
    }


}

