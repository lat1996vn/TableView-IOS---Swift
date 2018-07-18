//
//  PlayerInfo.swift
//  TableView Review
//
//  Created by LTT on 7/19/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import Foundation

class Player {
    private var _playerImage: String!
    private var _playerName: String!
    private var _playerAge: String!
    
    var playerImage: String {
        return _playerImage
    }
    
    var playerName: String {
        get {
            return _playerName
        } set {
            _playerName = newValue
        }
    }
    
    var playerAge: String {
        get {
            return _playerAge
        } set {
            _playerAge = newValue
        }
    }
    
    init(playerImage: String, playerName: String, playerAge: String) {
        
        _playerImage = playerImage
        _playerName = playerName
        _playerAge = playerAge
    }
}

