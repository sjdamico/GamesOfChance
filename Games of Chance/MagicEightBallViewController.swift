//
//  MagicEightBallViewController.swift
//  Games of Chance
//
//  Created by Steve D'Amico on 2/27/16.
//  Copyright © 2016 Steve D'Amico. All rights reserved.
//

import UIKit

class MagicEightBallViewController: UIViewController {

    @IBOutlet weak var singlePicker: UIPickerView!
    private let answerValues = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        let selected = Int(arc4random_uniform(UInt32(answerValues.count)))
        let title = "The answer to your question is: \(answerValues[selected])!"
        
        let alert = UIAlertController(title: title, message: "Interested in another answer? Ask another question and roll again", preferredStyle: .Alert)
        let action = UIAlertAction(title: "Enjoy!", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
        singlePicker.selectRow(selected, inComponent: 0, animated: true)
    }
    // MARK:-
    // MARK: Picker Data Source Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return answerValues.count
    }
    
    // MARK:-
    // MARK: Picker Delegate Methods
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return answerValues[row]
    }
}
