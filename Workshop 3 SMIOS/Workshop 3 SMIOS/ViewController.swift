//
//  ViewController.swift
//  Workshop 3 SMIOS
//
//  Created by Bart van de Klundert on 21/02/2019.
//  Copyright © 2019 Bart van de Klundert. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    final let url = URL(string: "https://i886625.venus.fhict.nl/pirates.json")
    
    private var pirates = [Pirate]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
    }
    
    func downloadJson() {
        guard let downloadURL = url else {return}
    
        
        URLSession.shared.dataTask(with: downloadURL) { (data, urlResponse, error) in
            
            guard let data = data, error == nil, urlResponse != nil else{
                print("something is wrong")
                return
            }
            print("downloaded")
            do{
                let decoder = JSONDecoder()
                let downloadedPirates = try decoder.decode([Pirate].self, from: data)
                self.pirates = downloadedPirates
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }catch{
                print("something wrong after downloading")
            }
        }.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pirates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pirateCell") as? PirateCell else{return UITableViewCell()}
        
        cell.nameLBL.text = pirates[indexPath.row].name
        cell.lifeLBL.text = pirates[indexPath.row].life
        cell.countryLBL.text = pirates[indexPath.row].country_of_origin
        
        return cell
    }
}

