//
//  ViewController.swift
//  pokedex
//
//  Created by Roberto Evangelista da Silva Filho on 23/11/2018.
//  Copyright © 2018 Roberto Evangelista da Silva Filho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var pokemonTable: UITableView!
    var pokemons = [Pokemon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonTable.delegate = self
        pokemonTable.dataSource = self
        pokemons.append(Pokemon(image: UIImage(named: "001-bulbasaur")!, name: "Bulbasaur", description: "Type: Grass"))
        pokemons.append(Pokemon(image: UIImage(named: "002-ivysaur")!, name: "Ivysaur", description: "Type: Grass"))
        pokemons.append(Pokemon(image: UIImage(named: "003-venusaur")!, name: "Venusaur", description: "Type: Grass"))
        pokemons.append(Pokemon(image: UIImage(named: "004-charmander")!, name: "Charmander", description: "Type: Fire"))
        pokemons.append(Pokemon(image: UIImage(named: "005-charmeleon")!, name: "Charmeleon", description: "Type: Fire"))
        pokemons.append(Pokemon(image: UIImage(named: "006-charizard")!, name: "Charizard", description: "Type: Fire"))
        pokemons.append(Pokemon(image: UIImage(named: "007-squirtle")!, name: "Squirtle", description: "Type: Water"))
        pokemons.append(Pokemon(image: UIImage(named: "008-wartortle")!, name: "Wartortle", description: "Type: Water"))
        pokemons.append(Pokemon(image: UIImage(named: "009-blastoise")!, name: "Blastoise", description: "Type: Water"))

    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonTableCell", for: indexPath) as! PokemonTableViewCell
        
        let pokemon = pokemons[indexPath.row]
        cell.pokemonImage.image = pokemon.image
        cell.pokemonName.text = pokemon.name
        cell.pokemonDescription.text = pokemon.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokedex"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemon = pokemons[indexPath.row]
        performSegue(withIdentifier: "mainSegue", sender: pokemon)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? SecondViewController {
            controller.selectedPokemon = sender as? Pokemon
        }
    }
}
