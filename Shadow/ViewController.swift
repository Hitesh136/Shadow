//
//  ViewController.swift
//  User
//
//  Created by Hitesh  Agarwal on 01/09/19.
//  Copyright © 2019 Hitesh  Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playView: UIView!
    
    var width: CGFloat = 1 {
        didSet {
            
            widthLabel.text = "Width \n\(widthSlider.value)"
        }
    }
    
    var height: CGFloat = 10 {
        didSet {
            
            heightLabel.text = "height \n\(heightSlider.value)"
        }
    }
    
    var radius: CGFloat = 10 {
        didSet {
            
            radiusLabel.text = "Radius \n\(radiusSlider.value)"
        }
    }
    
    var opacity: Float = 0.9 {
        didSet {
            
            opacityLabel.text = "Opacity \n\(opacitySlider.value)"
        }
    }
    
    var pathX: CGFloat = 1 {
        didSet {
            
            pathXLabel.text = "PathX \n\(pathXSlider.value)"
        }
    }
    
    var pathY: CGFloat = 10 {
        didSet {
            
            pathYLabel.text = "PathY \n\(pathYSlider.value)"
        }
    }
    
    var pathWidth: CGFloat = 10 {
        didSet {
            
            pathWidthLabel.text = "pathWidth \n\(pathWidthSlider.value)"
        }
    }
    
    var pathHeight: CGFloat = 0.9 {
        didSet {
            
            pathHeightLabel.text = "pathHeight \n\(pathHeightSlider.value)"
        }
    }
    
    @IBOutlet weak var pathXLabel: UILabel!
    @IBOutlet weak var pathYLabel: UILabel!
    @IBOutlet weak var pathWidthLabel: UILabel!
    @IBOutlet weak var pathHeightLabel: UILabel!
    @IBOutlet weak var widthLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var radiusLabel: UILabel!
    @IBOutlet weak var opacityLabel: UILabel!
    
    @IBOutlet weak var pathXSlider: UISlider!
    @IBOutlet weak var pathYSlider: UISlider!
    @IBOutlet weak var pathWidthSlider: UISlider!
    @IBOutlet weak var pathHeightSlider: UISlider!
    @IBOutlet weak var widthSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var radiusSlider: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        congfigureView()
        
    }
    
    func congfigureView() {
        width = 10
        height = 10
        radius = 10
        opacity = 0.9
        pathX = -20
        pathY = 20
        pathWidth = 10
        pathHeight = 10
        
        widthSlider.value = Float(pathX)
        heightSlider.value = Float(pathY)
        radiusSlider.value = Float(pathWidth)
        opacitySlider.value = Float(pathHeight)
        pathXSlider.value = Float(width)
        pathYSlider.value = Float(height)
        pathWidthSlider.value = Float(radius)
        pathHeightSlider.value = opacity
        applyShadow()
    }
    
    func applyShadow() {
        
        let shadowPathRect = CGRect(x: pathX, y: pathY, width: pathWidth, height: pathHeight)
        playView.layer.masksToBounds = false
        playView.layer.shadowPath = UIBezierPath(rect: shadowPathRect).cgPath
        playView.layer.shadowColor = UIColor.black.cgColor
        playView.layer.shadowOffset = CGSize(width: width, height: height)
        playView.layer.shadowRadius = radius
        playView.layer.shadowOpacity = opacity
    }
    
    @IBAction func actionPathX(_ sender: UISlider) {
        pathX = CGFloat(sender.value)
        applyShadow()
    }
    
    @IBAction func actionPathY(_ sender: UISlider) {
        pathY = CGFloat(sender.value)
        applyShadow()
    }
    
    @IBAction func actionPathWidth(_ sender: UISlider) {
        pathWidth = CGFloat(sender.value)
        applyShadow()
    }
    
    @IBAction func actionPathHeight(_ sender: UISlider) {
        pathHeight = CGFloat(sender.value)
        applyShadow()
    }
    
    @IBAction func actionWidth(_ sender: UISlider) {
        width = CGFloat(sender.value)
        applyShadow()
    }
    
    @IBAction func actionHeight(_ sender: UISlider) {
        height = CGFloat(sender.value)
        applyShadow()
    }
    
    @IBAction func actionRadius(_ sender: UISlider) {
        radius = CGFloat(sender.value)
        applyShadow()
    }
    
    @IBAction func actionOpacity(_ sender: UISlider) {
        opacity = sender.value
        applyShadow()
    }
}




