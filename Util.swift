//
//  Util.swift
//  MAD_Ind04_Quinton_Kolton
//
//  Created by Kolton Quinton on 4/5/22.
//


import UIKit

fileprivate var aView : UIView?

extension UIViewController {
        
    func showSpinner() {
        let aView = UIView(frame: self.view.bounds)
        
        let ai = UIActivityIndicatorView()
        ai.center = aView.center
        ai.startAnimating()
        aView.addSubview(ai)
        self.view.addSubview(aView)
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) {
            (t) in
            self.removeSpinner()
            ai.stopAnimating()
            ai.hidesWhenStopped
        }
    }
    
    func removeSpinner() {
        aView?.removeFromSuperview()
        aView = nil
    }
}
