//
//  ViewController.swift
//  PlantAFriend
//
//  Created by Yosvani Lopez on 10/8/16.
//  Copyright © 2016 Yosvani Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var contactTable: UITableView!
    var contactList: [Contact]!
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTable.dataSource = self
        contactTable.delegate = self
        loadContacts()
    }
    
    func loadContacts() {
        
    }
    
/* Tableview handler funcitons */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ContactCell()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    @IBAction func menuButton(_ sender: AnyObject) {
    }

}

