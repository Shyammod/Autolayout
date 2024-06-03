//
//  ViewController.swift
//  Assign
//
//  Created by user228349 on 6/2/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var First: UITextField!
    @IBOutlet weak var Surname: UITextField!
    @IBOutlet weak var City: UITextField!
    @IBOutlet weak var Address: UITextField!
    @IBOutlet weak var DOB: UITextField!
    @IBOutlet weak var Info: UITextView!
    @IBOutlet weak var mylbl: UILabel!
    
    
    @IBAction func Reset(_ sender: Any) {
        First.text = ""
        Surname.text = ""
        City.text = ""
        Address.text = ""
        DOB.text = ""
        Info.text = ""
    }
    
    @IBAction func Decline(_ sender: Any) {
        First.text = ""
        Surname.text = ""
        City.text = ""
        Address.text = ""
        DOB.text = ""
        Info.text = ""
        mylbl.text = "user declined"
    }
    
    @IBAction func Accept(_ sender: Any) {
        if First.text?.isEmpty == true || Surname.text?.isEmpty == true || City.text?.isEmpty == true || Address.text?.isEmpty == true || DOB.text?.isEmpty == true {
            
        } else {
            mylbl.text = " fill the field."
            return
        }
        
        let birthdateformatter = DateFormatter()
        birthdateformatter.dateFormat = "MM/dd/yyyy"
        guard let birthdate = birthdateformatter.date(from: DOB.text!) else {
            mylbl.text = " Invalid."
            return
        }
        let calendar = Calendar.current
        let now = Date()
        let ageComponents = calendar.dateComponents([.year], from: birthdate, to: now)
        let age = ageComponents.year!
        
        if age > 18 {
            mylbl.text = " age must be over 18."
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

