//
//  ViewController.swift
//  Scroll View Images
//
//  Created by Danny Nguyen on 10/22/16.
//  Copyright © 2016 Danny Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainScrollView.frame = view.frame
        
        imageArray = [#imageLiteral(resourceName: "DM_03242016_0234"),#imageLiteral(resourceName: "dsc02416-739"),#imageLiteral(resourceName: "dsc02425-742"),#imageLiteral(resourceName: "dsc08971-4283"),#imageLiteral(resourceName: "pumpkins_fJHFLHcd"),#imageLiteral(resourceName: "dsc08996-3-4302"),#imageLiteral(resourceName: "market_My2cvNcu"),#imageLiteral(resourceName: "market-scene_fkB94S5u")]
        
        for i in 0..<imageArray.count {
            
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

