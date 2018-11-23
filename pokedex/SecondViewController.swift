//
//  SecondViewController.swift
//  pokedex
//
//  Created by Roberto Evangelista da Silva Filho on 23/11/2018.
//  Copyright © 2018 Roberto Evangelista da Silva Filho. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableDetail: UITableView!
    var selectedPokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableDetail.delegate = self
        tableDetail.dataSource = self
    }
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonDetailViewCell", for: indexPath) as! PokeDetailTableViewCell
        if let myPokemon = selectedPokemon {
            cell.pkmImage.image = myPokemon.image
            cell.pkmName.text = myPokemon.name
            cell.pkmDescription.text = myPokemon.description
        } else {
            print("Deu ruim clã")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1000
    }
}
