//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by macOS on 23.08.2022.
//

import UIKit

class ProfileView: UIView {
    
    
    @IBOutlet weak var newImage: UIImageView!
    
    @IBOutlet weak var newLable1: UILabel!
    
    @IBOutlet weak var newLable2: UILabel!
    
    @IBOutlet weak var newLable3: UILabel!
    
    @IBOutlet weak var newText1: UITextView!
    
    required init?(coder: NSCoder) {
            super.init(coder: coder)
            self.setup()
        }
        
        private func setup() {
            let view = self.loadViewFromXib()
            self.addSubview(view)
            view.frame = self.bounds
            
        }
        
        private func loadViewFromXib() -> UIView {
            guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self)?.first as? UIView else {
                return UIView()
            }
            
            return view
        }

    
}



