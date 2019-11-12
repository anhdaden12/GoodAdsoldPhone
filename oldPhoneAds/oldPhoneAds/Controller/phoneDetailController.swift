//
//  phoneDetailController.swift
//  oldPhoneAds
//
//  Created by Apple on 11/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class phoneDetailController: UIViewController {

    @IBOutlet weak var lblPhoneName: UILabel!
    @IBOutlet weak var imagePhoneDetail: UIImageView!
    
    
    var phoneDetail: oldPhone?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblPhoneName.text = phoneDetail?.name
        imagePhoneDetail.image = UIImage(named: phoneDetail?.imageName ?? "")
        
    }
    

    @IBAction func addtoCart(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
