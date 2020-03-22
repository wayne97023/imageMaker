//
//  ViewController.swift
//  imageMaker
//
//  Created by 林奇杰 on 2020/3/22.
//  Copyright © 2020 林奇杰. All rights reserved.
//

import UIKit
import CoreImage.CIFilterBuiltins
class ViewController: UIViewController {

    @IBOutlet weak var label01: UILabel!
    @IBOutlet weak var label02: UILabel!
    @IBOutlet weak var textField01: UITextField!
    @IBOutlet weak var textField02: UITextField!
    
    @IBOutlet weak var fontSizeSlider: UISlider!
    @IBOutlet weak var filterSlider: UISlider!
    @IBOutlet weak var fontColorSegment: UISegmentedControl!
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var image01: UIImageView!
    @IBOutlet weak var image02: UIImageView!
    @IBOutlet weak var image03: UIImageView!
    @IBOutlet weak var image04: UIImageView!
    
    var currentImageName:UIImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label01.textAlignment = .center
        label02.textAlignment = .center
        
        label01.font = UIFont.systemFont(ofSize: 30)
        label02.font = UIFont.systemFont(ofSize: 30)
        
        
        label01.numberOfLines = 2
        label02.numberOfLines = 2
        
        label01.adjustsFontSizeToFitWidth = true
        label02.adjustsFontSizeToFitWidth = true
        
        textField01.text = "你是不是很喜歡我"
        textField02.text = "那你還愣在那邊幹嘛"
        label01.text = textField01.text
        label02.text = textField02.text
        
        textField01.addTarget(self, action: #selector(closeKeyboard), for: .editingDidEndOnExit)
        
        textField02.addTarget(self, action: #selector(closeKeyboard), for: .editingDidEndOnExit)
        
    }
    
    @IBAction func closeKeyboard(_ sender: Any) {
    }
    
    @IBAction func changeLabel01(_ sender: Any) {
        label01.text = textField01.text
    }
    
    @IBAction func changeLabel02(_ sender: Any) {
        label02.text = textField02.text
    }
    
    @IBAction func image01Btn(_ sender: Any) {
        let image = image01.image
        imageDisplay.image = image01.image
        
        currentImageName = image01
        var text1 = textField01.text!
        var text2 = textField02.text!
        
        label01.text = text1
        label02.text = text2
        
        let clearColor:UIColor = UIColor.clear
        let white:UIColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        let black:UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label01.backgroundColor = clearColor
        label01.textColor = black
        label02.backgroundColor = clearColor
        label02.textColor = black
        
        fontColorSegment.selectedSegmentIndex = 0
        
        label01.frame = CGRect(x: 22, y: 259, width: 142, height: 57)
        label02.frame = CGRect(x: 252, y: 259, width: 142, height: 57)
        view.endEditing(true)
    }
    
    @IBAction func image02Btn(_ sender: Any) {
        let image = image02.image
        imageDisplay.image = image
        
        currentImageName = image02
        
        var text1 = textField01.text!
        var text2 = textField02.text!
        
        label01.text = text1
        label02.text = text2
        
        let clearColor:UIColor = UIColor.clear
        let white:UIColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        let black:UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label01.backgroundColor = clearColor
        label01.textColor = black
        label02.backgroundColor = clearColor
        label02.textColor = black
        
        fontColorSegment.selectedSegmentIndex = 0
        
        label01.frame = CGRect(x: 20, y: 262, width: 374, height: 57)
        label02.frame = CGRect(x: 20, y: 557, width: 374, height: 57)
        view.endEditing(true)
    }
    
    @IBAction func image03Btn(_ sender: Any) {
        let image = image03.image
        imageDisplay.image = image
        
        currentImageName = image03
        
        var text1 = textField01.text!
        var text2 = textField02.text!
        
        label01.text = text1
        label02.text = text2
        
        let clearColor:UIColor = UIColor.clear
        let white:UIColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        let black:UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label01.backgroundColor = black
        label01.textColor = white
        label02.backgroundColor = black
        label02.textColor = white
        
        fontColorSegment.selectedSegmentIndex = 0
        
        label01.frame = CGRect(x: 20, y: 262, width: 374, height: 57)
        label02.frame = CGRect(x: 20, y: 557, width: 374, height: 57)
        view.endEditing(true)
    }
    
    @IBAction func image04Btn(_ sender: Any) {
        let image = image04.image
        imageDisplay.image = image
        imageDisplay.contentMode = .scaleAspectFill
        
        currentImageName = image04
        
        var text1 = textField01.text!
        var text2 = textField02.text!
        
        label01.text = text1
        label02.text = text2
        
        let clearColor:UIColor = UIColor.clear
        let white:UIColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        let black:UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label01.backgroundColor = black
        label01.textColor = white
        label02.backgroundColor = black
        label02.textColor = white
        
        fontColorSegment.selectedSegmentIndex = 0
        
        label01.frame = CGRect(x: 20, y: 262, width: 374, height: 57)
        label02.frame = CGRect(x: 20, y: 580, width: 374, height: 57)
        view.endEditing(true)
    }
    
    @IBAction func changeFontSize(_ sender: Any) {
        print(fontSizeSlider.value)
        let fontSize = fontSizeSlider.value
        label01.font = UIFont.systemFont(ofSize: CGFloat(fontSize))
        label02.font = UIFont.systemFont(ofSize: CGFloat(fontSize))
    }
    
    @IBAction func changeFontColor(_ sender: Any) {
        let clearColor:UIColor = UIColor.clear
        let white:UIColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        let black:UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        let red:UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1)
        let blue:UIColor = UIColor(red: 0, green: 0, blue: 255, alpha: 1)
        let yellow:UIColor = UIColor(red: 255, green: 255, blue: 0, alpha: 1)
        let green:UIColor = UIColor(red: 0, green: 255, blue: 0, alpha: 1)
        
        if fontColorSegment.selectedSegmentIndex == 0{
            label01.textColor = black
            label02.textColor = black
        }else if fontColorSegment.selectedSegmentIndex == 1{
            label01.textColor = red
            label02.textColor = red
        }else if fontColorSegment.selectedSegmentIndex == 2{
            label01.textColor = blue
            label02.textColor = blue
        }else if fontColorSegment.selectedSegmentIndex == 3{
            label01.textColor = yellow
            label02.textColor = yellow
        }else if fontColorSegment.selectedSegmentIndex == 4{
            label01.textColor = green
            label02.textColor = green
        }
    }
    
    @IBAction func filterSliderChange(_ sender: Any) {
        let image = currentImageName.image
        if let image = image{
            let ciImage = CIImage(image: image)
            let filter = CIFilter.colorMonochrome()
            filter.inputImage = ciImage
            filter.intensity = filterSlider.value
            if let outputCIImage = filter.outputImage {
                let filterImage = UIImage(ciImage: outputCIImage)
                imageDisplay.image = filterImage
            }
        }
    }
}

