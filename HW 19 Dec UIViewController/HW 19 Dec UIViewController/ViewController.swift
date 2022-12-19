//
//  ViewController.swift
//  HW 19 Dec UIViewController
//
//  Created by Артем Чжен on 19/12/22.
//

import UIKit

class ViewController: UITableViewController {
    var nameUIViewControllers = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "UIViewController"
        navigationItem.largeTitleDisplayMode = .never
        
        let fm = FileManager.default
            let path = Bundle.main.resourcePath!
            let items = try! fm.contentsOfDirectory(atPath: path)
            
        for item in items {
            if item.hasSuffix("().png") {
                nameUIViewControllers.append(item)
            }
        }
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameUIViewControllers.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Name", for: indexPath)
        cell.textLabel?.text = nameUIViewControllers[indexPath.row].replacingOccurrences(of: ".png", with: "")
//        cell.imageView?.image = UIImage(named: nameUIViewControllers[indexPath.row])
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Two") as? ViewControllerTwo {
            vc.selectedImage = nameUIViewControllers[indexPath.row]
//            vc.textLabel?.text = nameUIViewControllers[indexPath.row]
//            vc.selectedWebsite = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
