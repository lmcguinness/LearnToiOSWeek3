//
//  ViewController.swift
//  Week3LearnToiOS
//
//  Created by Leanne McGuinness on 29/05/2018.
//  Copyright © 2018 Leanne McGuinness. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var myPets = [
        Pet(name: "Tyson", type: "Dog", age: 4),
        Pet(name: "Jack", type: "Cat", age: 5),
        Pet(name: "Gill", type: "Rabbit", age: 6),
        Pet(name: "Rusty", type: "Cow", age: 3),
        Pet(name: "Kim", type: "Pig", age: 9)
    ]
    
    var newDateForSections:[[Pet]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = myPets[indexPath.row]
        let dequeued = tableView.dequeueReusableCell(withIdentifier: "MyPet", for: indexPath) as! petTableViewCell
        
        dequeued.PETNAME.text = cellData.name
        //cellData.currency.rawValue
        //dequeued.detailTextLabel?.text = cellData.type
        
        return dequeued
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPets.count
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return newDateForSections[section].first?
//    }

}

