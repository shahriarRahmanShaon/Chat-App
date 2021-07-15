//
//  chatViewController.swift
//  Chat App
//
//  Created by sergio shaon on 13/7/21.
//

import UIKit
class ChatViewController: UIViewController {
    
    @IBOutlet weak var chatTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        //MARK:- register delegates
        chatTableView.dataSource = self
        //MARK:- Register nibs
        chatTableView.register(UINib(nibName: "ChatTableViewCell" , bundle: nil), forCellReuseIdentifier: "reUseCell")
        
    }
    
    @IBAction func logoutButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
}

extension ChatViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reUseCell", for: indexPath) as! ChatTableViewCell
        cell.cellText.text = "hola tress commas"
        
        return cell
    }
    
    
}
