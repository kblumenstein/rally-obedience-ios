//
//  ViewController.swift
//  rallyobedience
//
//  Created by Kerstin Blumenstein on 01/10/2016.
//  Copyright © 2016 St. Poelten University of Applied Sciences. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var uiName: UILabel!
    @IBOutlet weak var uiDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let realm = try! Realm()
        
        let myStation = realm.objects(Station.self).first
        
        self.id.text = myStation?.id
        self.uiName.text = myStation?.name
        self.uiDescription.text = myStation?.desc
        self.image.image = UIImage(named: (myStation?.picture)!)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

