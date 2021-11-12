    //
    //  GridViewController.swift
    //  GridAndListToogle
    //
    //  Created by - on 12/11/2021.
    //




    import UIKit

    class GridViewController: UIViewController {
        @IBOutlet weak var collectionView: UICollectionView!
        
        let productTypeName: [String] = ["Bedsheet","Books","furniture","kids table","kids","mans wear"]
        let productImage: [String] = ["Bedsheet","Books","furniture","kids table","kids","mans wear"]
        
        override func viewDidLoad() {
            super.viewDidLoad()

            overrideUserInterfaceStyle = .dark
        }


    }

    // FlowLayout The methods of this protocol define the size of items and the spacing between items in the grid.
    extension GridViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
    {
        // Asks your data source object for the number of items in the specified section.
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return productTypeName.count
        }
        // Asks your data source object to provide a supplementary view to display in the collection view.
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GridViewCell
            cell.image.image = UIImage(named: productImage[indexPath.row])
            cell.label.text = productTypeName[indexPath.row]
                cell.designMyCell()
                    return cell
        }
        // Asks the delegate for the size of the specified item’s cell.For size what you want
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
            let size = (collectionView.frame.size.width - 10) / 2
            return CGSize(width: size, height: size)
        }
    }
     
    // For design cell
    extension UIView{
        func designMyCell(){
            self.layer.cornerRadius = 10
            self.layer.borderWidth = 5.0
            self.layer.borderColor = UIColor.white.cgColor
            
        }
    }
