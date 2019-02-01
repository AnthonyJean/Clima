//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Anthony Jean on 01/02/2019.
//  Copyright (c) 2019 London App Brewery. All rights reserved.
//

import UIKit


//Protocol declaration
protocol ChangeCityDelegate {
    func userEnteredANewCityName(city : String)
}


class ChangeCityViewController: UIViewController {
    
    //Delegate variable
    var delegate : ChangeCityDelegate?
    
    //IBOutlets to the text field:
    @IBOutlet weak var changeCityTextField: UITextField!

    
    //IBAction that gets called when the user taps on the "Get Weather" button:
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    //TIBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
