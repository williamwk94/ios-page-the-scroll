//
//  ViewController.swift
//  PageTheScroll
//
//  Created by William Kurniawan on 25/2/17.
//  Copyright © 2017 William Kurniawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth: CGFloat = 0.0
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            contentWidth += view.frame.size.width
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 62.5, y: (view.frame.size.height / 2) - 62.5, width: 125, height: 125)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

}

