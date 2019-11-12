//
//  TableViewController.swift
//  oldPhoneAds
//
//  Created by Apple on 11/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {

    
    var data: [oldPhone] = [
        oldPhone(name: "swing phone 1987", imageName: "1"),
        oldPhone(name: "kitty phone 1989", imageName: "2"),
        oldPhone(name: "homeless 1687", imageName: "3"),
        oldPhone(name: "swallow phone 1995", imageName: "4"),
        oldPhone(name: "NBsmatcot phone 1999", imageName: "5"),
        oldPhone(name: "PwonderW 1998", imageName: "6"),
    ]
    
    
    
    let refresh = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh.tintColor = UIColor(displayP3Red: 0.25, green: 0.72, blue: 0.85, alpha: 1)
        refresh.attributedTitle = NSAttributedString(string: "Reload data...")
        refresh.addTarget(self, action: #selector(refresData), for: .valueChanged)
        tableView.addSubview(refresh)
    }
    
    @objc func refresData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            print("refresh success")
            self.refresh.endRefreshing()
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let datA = data[indexPath.row]
        cell.lblName.text = datA.name
        cell.imageview.image = UIImage(named: datA.imageName)
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! phoneDetailController
        if let index = tableView.indexPathForSelectedRow {
            detailVC.phoneDetail = data[index.row]
        }
    }
    
   
    
    
}
