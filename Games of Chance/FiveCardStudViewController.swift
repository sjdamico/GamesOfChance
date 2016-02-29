//
//  FiveCardStudViewController.swift
//  Games of Chance
//
//  Created by Steve D'Amico on 2/27/16.
//  Copyright © 2016 Steve D'Amico. All rights reserved.
//

import UIKit

class FiveCardStudViewController: UIViewController {

    private var images:[UIImage]!
    
    @IBOutlet weak var fivePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        images = [UIImage(named: "1C")!, UIImage(named: "2C")!, UIImage(named: "3C")!, UIImage(named: "4C")!, UIImage(named: "5C")!, UIImage(named: "6C")!, UIImage(named: "7C")!, UIImage(named: "8C")!, UIImage(named: "9C")!, UIImage(named: "10C")!, UIImage(named: "JC")!, UIImage(named: "QC")!, UIImage(named: "KC")!, UIImage(named: "1D")!, UIImage(named: "2D")!, UIImage(named: "3D")!, UIImage(named: "4D")!, UIImage(named: "5D")!, UIImage(named: "6D")!, UIImage(named: "7D")!, UIImage(named: "8D")!, UIImage(named: "9D")!, UIImage(named: "10D")!, UIImage(named: "JD")!, UIImage(named: "QD")!, UIImage(named: "KD")!, UIImage(named: "1H")!, UIImage(named: "2H")!, UIImage(named: "3H")!, UIImage(named: "4H")!, UIImage(named: "5H")!, UIImage(named: "6H")!, UIImage(named: "7H")!, UIImage(named: "8H")!, UIImage(named: "9H")!, UIImage(named: "10H")!, UIImage(named: "JH")!, UIImage(named: "QH")!, UIImage(named: "KH")!, UIImage(named: "1S")!, UIImage(named: "2S")!, UIImage(named: "3S")!, UIImage(named: "4S")!, UIImage(named: "5S")!, UIImage(named: "6S")!, UIImage(named: "7S")!, UIImage(named: "8S")!, UIImage(named: "9S")!, UIImage(named: "10S")!, UIImage(named: "JS")!, UIImage(named: "QS")!, UIImage(named: "KS")!]
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
        for i in 0..<5 {
            let newValue = Int(arc4random_uniform(UInt32(images.count)))
            fivePicker.selectRow(newValue, inComponent: i, animated: true)
            fivePicker.reloadComponent(i)
        }
    }
    @IBAction func oneHold(sender: AnyObject) {
    }
    @IBAction func twoHold(sender: AnyObject) {
    }
    @IBAction func threeHold(sender: AnyObject) {
    }
    @IBAction func fourHold(sender: AnyObject) {
    }
    
    @IBAction func fiveHold(sender: AnyObject) {
    }
    
    // MARK:-
    // MARK: Picker Data Source Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 5
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
