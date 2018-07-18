//
//  ViewController.swift
//  TableView Review
//
//  Created by LTT on 7/16/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tbvListPlayer: UITableView!
    var players = [Player]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Add data
        let p1 = Player(playerImage: "Kylian Mbappé 19", playerName: "Kylian Mbappé", playerAge: "19")
        let p2 = Player(playerImage: "Jordan Pickford 24", playerName: "Jordan Pickford", playerAge: "24")
        let p3 = Player(playerImage: "Mohamed Salah 26", playerName: "Mohamed Salah", playerAge: "26")
        let p4 = Player(playerImage: "N'Golo Kante 27", playerName: "N'Golo Kante", playerAge: "27")
        let p5 = Player(playerImage: "Luka Modric 33", playerName: "Luka Modric", playerAge: "33")
        players.append(p1)
        players.append(p2)
        players.append(p3)
        players.append(p4)
        players.append(p5)

        tbvListPlayer.dataSource = self
        tbvListPlayer.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Create cell with data
        if let cell = tbvListPlayer.dequeueReusableCell(withIdentifier: "tbvCell", for: indexPath) as? tbvCell {
            let player = players[indexPath.row]
            cell.updateUI(player: player)
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let player = players[indexPath.row]
        performSegue(withIdentifier: "MainToDetail", sender: player)
    }
    @IBAction func unwindToMainVC(_ sender: UIStoryboardSegue) {
        // Use data from the view controller which initiated the unwind segue
        if sender.identifier == "DetailToMain" {
            if let detailVC = sender.source as? DetailVC {
                //players[0] = detailVC.player
                tbvListPlayer.reloadData()
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainToDetail" {
            if let destination = segue.destination as? DetailVC{
                if let player = sender as? Player {
                    destination.player = player
               }
            }
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if let destination = segue.destination as? DetailVC {
//
//            if let player = sender as? Player {
//                destination.player = player
//            }
//
//        }
//
//    }
   
}

