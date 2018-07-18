//
//  DetailVC.swift
//  TableView Review
//
//  Created by LTT on 7/18/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imgFootballPlayer: UIImageView!
    @IBOutlet weak var tfPlayerName: UITextField!
    @IBOutlet weak var tfPlayerAge: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    @IBAction func btnSaveClick(_ sender: Any) {
        //change player info		
        player.playerName = tfPlayerName.text!
        player.playerAge = tfPlayerAge.text!
    }
    
    private var _player: Player!
    
    var player: Player {
        get {
            return _player
        } set {
            _player = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(text)
        imgFootballPlayer.image = UIImage(named: player.playerImage)
        tfPlayerName.text = player.playerName
        tfPlayerAge.text = player.playerAge
        btnSave.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
