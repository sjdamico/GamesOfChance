//
//  SevenElevenViewController.swift
//  Games of Chance
//
//  Created by Steve D'Amico on 2/27/16.
//  Copyright © 2016 Steve D'Amico. All rights reserved.
//

import UIKit

class SevenElevenViewController: UIViewController {
    private var images:[UIImage]!

    @IBOutlet weak var dualPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    // Do any additional setup after loading the view.
    images = [UIImage(named: "1Dice")!, UIImage(named: "2Dice")!, UIImage(named: "3Dice")!, UIImage(named: "4Dice")!, UIImage(named: "5Dice")!, UIImage(named: "6Dice")!]
        arc4random_stir()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func spin(sender: AnyObject) {

        for i in 0..<2 {
            let newValue = Int(arc4random_uniform(UInt32(images.count)))
            dualPicker.selectRow(newValue, inComponent: i, animated: true)
            dualPicker.reloadComponent(i)
        }
    }
    
        // MARK:-
        // MARK: Picker Data Source Methods
        func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
            return 2
        }
    
        func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return images.count
        }

        // MARK:-
        // MARK: Picker Delegate Methods
        func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
            let image = images[row]
            let imageView = UIImageView(image: image)
            return imageView
        }
        
        func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 64
        }
    }

