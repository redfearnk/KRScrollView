//
//  ExampleViewController.swift
//  KRScrollView
//
//  Created by Kyle Redfearn on 4/19/17.
//  Copyright © 2017 Kyle Redfearn. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

    var scrollView: KRScrollView!
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        // Save the contentOffsetRatio before we rotate so we can properly determine the new content offset
        let ratio = self.scrollView.contentOffsetRatio;
        coordinator.animate(alongsideTransition: { (context) in
            self.scrollView.determineNewContentOffset(for: ratio)
        }, completion: nil)
    }

}
