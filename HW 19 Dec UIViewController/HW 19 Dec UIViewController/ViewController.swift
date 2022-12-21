//
//  ViewController.swift
//  HW 19 Dec UIViewController
//
//  Created by Артем Чжен on 19/12/22.
//

import UIKit

class ViewController: UITableViewController {
    var nameUIViewController =  ["init()", "loadView()", "viewDidLoad()", "viewWillAppear()", "viewDidAppear()", "viewWillDisappear()", "viewDidDisappear()", "viewDidUnload()"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "UIViewController"
        navigationItem.largeTitleDisplayMode = .never

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameUIViewController.count
       
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Name", for: indexPath)
        cell.textLabel?.text = nameUIViewController[indexPath.row].replacingOccurrences(of: ".png", with: "")
        return cell
      
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Two") as? ViewControllerTwo {
            vc.selectedImage = nameUIViewController[indexPath.row]
           
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

