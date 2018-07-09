//
//  DetailViewController.swift
//  Favorite Cities
//
//  Created by Aslan Lee on 7/9/18.
//  Copyright © 2018 Aslan Lee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var detailItem: City? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    func configureView() {
        // Update the UI for the detail item
        if let city = self.detailItem {
        if cityTextField != nil {
            cityTextField.text = city.name
            stateTextField.text = city.state
            populationTextField.text = String(city.population)
            imageView.image = UIImage(data: city.image)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let city = self.detailItem
            {
            city.name = cityTextField.text!
            city.state = stateTextField.text!
            city.population = Int(populationTextField.text!)!
            }
    }
}




