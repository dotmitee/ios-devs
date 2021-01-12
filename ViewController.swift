//
//  ViewController.swift
//  RealTraining
//
//  Created by Dotun on 1/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PriceTxt: UITextField!
    

    @IBOutlet weak var salesTaxTxt: UITextField!

    @IBOutlet weak var TotalPriceLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TotalPriceLbl.text = ""
    }
    

    @IBAction func CalculatedPrice(_ sender: Any) {
        let price = Double(PriceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        
        TotalPriceLbl.text = "$\(totalPrice)"
    }
    
    
}

