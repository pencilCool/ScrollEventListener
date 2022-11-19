//
//  ViewController.swift
//  ScrollEventListener
//
//  Created by pencilCool on 11/19/2022.
//  Copyright (c) 2022 pencilCool. All rights reserved.
//

import UIKit
import ScrollEventListener

class ViewController: UITableViewController{
    var scrollListener = ScrollEventListener()
    var listener2 = ScrollEventListener()
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollListener.stopClosure = {
           print("stop scroll")
        }

        scrollListener.scrollClosure = {
            print("end scroll")
        }

        scrollListener.start()
//        scrollListener.stop()
        
//        listener2.stopClosure = {
//           print("stop scroll")
//        }
//
//        listener2.scrollClosure = {
//            print("end scroll")
//        }
//
//        listener2.start()

    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

