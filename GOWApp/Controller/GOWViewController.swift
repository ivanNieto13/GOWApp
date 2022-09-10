//
//  GOWViewController.swift
//  GOWApp
//
//  Created by Ivan Nieto on 09/09/22.
//

import UIKit

class GOWViewController:
    UIViewController,
    UITableViewDataSource,
    UITableViewDelegate {
    
    let menuOptions : [MenuOption] = [
        MenuOption(
            title:"Videojuegos",
            image:"gamecontroller.fill",
            segue:"gamesSegue")
        , MenuOption(
            title:"Personajes",
            image:"person.crop.rectangle.stack.fill",
            segue:"charactersSegue")
        , MenuOption(title:"Armas",
                     image:"shield.fill",
                     segue:"weaponsSegue")
        ,MenuOption(
            title:"Mercancia",
            image:"shippingbox.fill",
            segue:"merchandiseSegue")
    ]

    @IBOutlet var menuButton: UIButton!
    @IBOutlet var menuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.layer.isHidden = true

    }
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        toggleMenu()
    }
    
    func toggleMenu() {
        if menuTableView.layer.isHidden {
            menuTableView.layer.isHidden = false
        } else {
            menuTableView.layer.isHidden = true
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.parent!.performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: Self.self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuOptionCell", for: indexPath) as! MenuOptionTableViewCell
        cell.menuOptionImage.image = UIImage.init(systemName: menuOptions[indexPath.row].image)
        cell.menuOptionLabel.text = menuOptions[indexPath.row].title
        return cell
    }
    
}
