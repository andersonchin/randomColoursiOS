//
//  ColoursTableVC.swift
//  RandomColours2
//
//  Created by Anderson Chin on 24/5/2023.
//

import UIKit

class ColoursTableVC: UIViewController {
    
    var colours : [UIColor] = []
    
    enum Cells {
        static let colourCell = "RandomColour"
    }
    
    enum Segue {
        static let toDetail = "ToColoursDetailVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColour()
        // Do any additional setup after loading the view.
    }
    
    func addRandomColour() {
        for _ in 0..<50 {
            colours.append(.random())
        }
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColoursDetailVC
        destVC.colour = sender as? UIColor
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//delegating ViewController with a TableView
//conforming to delegate (use extension for code orginisation)
extension ColoursTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colours.count
    }
    
    //delegate methods are automatic
    //this runs when action happens (kind of like lambda or eventhandler)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colourCell) else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = colours[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colour = colours[indexPath.row]
        performSegue(withIdentifier: Segue.toDetail, sender: colour)
    }
}
