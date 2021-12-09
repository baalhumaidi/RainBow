//
//  ViewController.swift
//  RainBow
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {

    
    let colors : [UIColor]  = [.red,.orange,.yellow,.green,.blue,.purple]
    @IBOutlet weak var RainBow: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
              RainBow.dataSource = self
     
        
    RainBow.rowHeight = view.frame.height/CGFloat(colors.count)
        print(colors.count)
    
        // why does not accept a vriable has int value,
      //  RainBow.rowHeight = view.frame.height/10  // but accept numbers
        
        // Do any additional setup after loading the view.
    


}

}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//let cell = UITableViewCell()

        let cell = RainBow.dequeueReusableCell(withIdentifier: "onecell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
           
    
    return cell
    
}
}
