//
//  IntroViewController.swift
//  Carousel
//
//  Created by Kyler Blue on 10/18/16.
//  Copyright © 2016 Kyler Blue. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width:320,height:1136)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //image1
        let offset  = Float(scrollView.contentOffset.y)
        
        let tx = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let ty = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -325, r2Max: 0)
        
        let scale = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        
        let rotation = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile1View.transform = CGAffineTransform(translationX: CGFloat(tx),y: CGFloat(ty))
        print(offset)
        
        tile1View.transform = tile1View.transform.scaledBy(x: CGFloat(scale), y: CGFloat(scale))
        
        tile1View.transform = tile1View.transform.rotated(byDegrees: CGFloat(rotation))
        print(offset)
        
        //image2
        let offset2  = Float(scrollView.contentOffset.y)
        
        let tx2 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 75, r2Max: 0)
        let ty2 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
        
        let scale2 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        
        let rotation2 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile2View.transform = CGAffineTransform(translationX: CGFloat(tx2),y: CGFloat(ty2))
        print(offset2)
        
        tile2View.transform = tile2View.transform.scaledBy(x: CGFloat(scale2), y: CGFloat(scale2))
        
        tile2View.transform = tile2View.transform.rotated(byDegrees: CGFloat(rotation2))
        
        
        //image3
        let offset3  = Float(scrollView.contentOffset.y)
        
        let tx3 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -66, r2Max: 0)
        let ty3 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -415, r2Max: 0)
        
        let scale3 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        
        let rotation3 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile3View.transform = CGAffineTransform(translationX: CGFloat(tx3),y: CGFloat(ty3))
        print(offset3)
        
        tile3View.transform = tile3View.transform.scaledBy(x: CGFloat(scale3), y: CGFloat(scale3))
        
        tile3View.transform = tile3View.transform.rotated(byDegrees: CGFloat(rotation3))
        
        
        //image4
        let offset4  = Float(scrollView.contentOffset.y)
        
        let tx4 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        let ty4 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        
        let scale4 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        
        let rotation4 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile4View.transform = CGAffineTransform(translationX: CGFloat(tx4),y: CGFloat(ty4))
        print(offset4)
        
        tile4View.transform = tile4View.transform.scaledBy(x: CGFloat(scale4), y: CGFloat(scale4))
        
        tile4View.transform = tile4View.transform.rotated(byDegrees: CGFloat(rotation4))
        

        
        //image5
        let offset5  = Float(scrollView.contentOffset.y)
        
        let tx5 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -160, r2Max: 0)
        let ty5 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -480, r2Max: 0)
        
        let scale5 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        
        let rotation5 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile5View.transform = CGAffineTransform(translationX: CGFloat(tx5),y: CGFloat(ty5))
        print(offset5)
        
        tile5View.transform = tile5View.transform.scaledBy(x: CGFloat(scale5), y: CGFloat(scale5))
        
        tile5View.transform = tile5View.transform.rotated(byDegrees: CGFloat(rotation5))
        
        
        
        //image6
        let offset6  = Float(scrollView.contentOffset.y)
        
        let tx6 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -40, r2Max: 0)
        let ty6 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -400, r2Max: 0)
        
        let scale6 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        
        let rotation6 = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile6View.transform = CGAffineTransform(translationX: CGFloat(tx6),y: CGFloat(ty6))
        print(offset6)
        
        tile6View.transform = tile6View.transform.scaledBy(x: CGFloat(scale6), y: CGFloat(scale6))
        
        tile6View.transform = tile6View.transform.rotated(byDegrees: CGFloat(rotation6))
        
        
        
    }


        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


