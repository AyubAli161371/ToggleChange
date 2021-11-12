//
//
////
////  ViewController.swift
////  TableView
////
////  Created by - on 28/10/2021.
////
//
//import UIKit
//// To show data to user in the form of tableThe data source provides information about what to display, like how many rows,
////The delegate tells the tableview what to do when the user selects a row,
///
///
///
///
//class ListViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
//
//    // section of the data mean that how many rows are present in the table
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return game.count
//    }
//
//    // cell which is add and where data is coming
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell:UITableViewCell? = mykTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell?.textLabel?.text = game[indexPath.row]
//        return cell!
//    }
//
//
//    @IBOutlet weak var mytext: UITextField!
//    @IBOutlet weak var mykTable: UITableView!
//
//    var game: [String] = ["Cricket","Football","Hockey","Baskatball"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    @IBAction func SaveButton(_ sender: UIButton) {
//        // for that where mytext is not nil
//        guard let data = mytext.text
//        else
//        {
//            return
//        }
//
//        game.append(data)
//
//        // this for alert message
//        let alerttitle = "Saving!!"
//        let message = "Data has been successfully added to the tabel"
//        let alertBox = UIAlertController(title: alerttitle, message: message, preferredStyle: .alert)
//
//
//        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
//        alertBox.addAction(alertAction)
//
//        present(alertBox, animated: true, completion: nil)
//
//        //This is for reload the data in the table
//        mykTable.reloadData()
//        mytext.text = ""
//    }
//
//}




//
//  ViewController.swift
//  TableView1
//
//  Created by - on 12/11/2021.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate,UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListViewCell
        cell.productName.text = listOfItem[indexPath.row].meterial
        cell.productImage.image = UIImage(named: listOfItem[indexPath.row].photo)
        return cell
    }
    
    
    @IBOutlet weak var myTable: UITableView!
    
    var listOfItem = [shop]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = shop(meterialzItem: "Bedsheet", photoitem: "Bedsheet")
        listOfItem.append(item1)
        let item2 = shop(meterialzItem: "Books", photoitem: "Books")
        listOfItem.append(item2)
        let item3 = shop(meterialzItem: "furniture", photoitem: "furniture")
        listOfItem.append(item3)
       let item4 = shop(meterialzItem: "kids", photoitem: "kids")
        listOfItem.append(item4)
        let item5 = shop(meterialzItem: "kids table", photoitem: "kids table")
        listOfItem.append(item5)
        let item6 = shop(meterialzItem: "mans wear", photoitem: "mans wear")
        listOfItem.append(item6)
        
        myTable.tableFooterView = UIView(frame: .zero)
       
    }
}


