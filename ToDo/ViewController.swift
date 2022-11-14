//
//  ViewController.swift
//  ToDo
//
//  Created by Sharonda Daniels on 11/14/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Initialize the variables we will need
    @IBOutlet weak var tableView: UITableView!
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    private var models = [ToDoItem]()
    
    
    // When the view loads get the items we already have
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Get the items to load here:
        
        
    }


    // Ask for a new item when the add button is pressed
    @IBAction func didTapAdd() {
        // Make an Alert Controller here:
        
        
        // Add a text field and submit button to the alert
//        alert.addTextField(configurationHandler: nil)
//        alert.addAction(UIAlertAction(title: "Submit", style: .cancel, handler: { [weak self] _ in
//            guard let field = alert.textFields?.first, let text = field.text, !text.isEmpty else {
//                return
//            }
//            self?.createItem(name: text)
//        }))

        // Present the Alert Controller here:
        

    }

    // Tell the table how many rows to print
    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 0
    }

    // Print the cells of the table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the cell and the model it would correspond to in the model array
        let cell:AppearanceTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! AppearanceTableViewCell
        let model = models[indexPath.row]

        // Update the cell's name and creation date here:
        
        
        // Toggle the button icon to checkmark or empty circle
        if (model.completed) {
            cell.completeButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
        } else {
            cell.completeButton.setImage(UIImage(systemName: "circle"), for: .normal)
        }
        
        // Return the cell
        return cell
    }

    // Present options and listen for what the user wants to do when they click on an item
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Unselect the row
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Get the item being requested on and present the edit menu
        let item = models[indexPath.row]
        let sheet = UIAlertController(title: "Edit", message: nil, preferredStyle: .actionSheet)
        
        // Add edit, delete, and cancel options to the sheet
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        sheet.addAction(UIAlertAction(title: "Edit", style: .default, handler: { _ in
            // Add an editing alert here (FROM CODEBANK):
            
            
        }))
        sheet.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { [weak self] _ in
            self?.deleteItem(item: item)
        }))
        
        // Present the options
        present(sheet, animated: true)
    }


    // When a user checks/unchecks the item update its completion and change the button icon
    @IBAction func onComplete(_ sender: UITableViewCell) {
        // Retrieve the cell that was checked on
        guard let cell = sender.superview?.superview as? AppearanceTableViewCell else {
            return
        }
        
        // Toggle the button icon to checkmark or empty circle
        if cell.completeButton.imageView?.image != UIImage(systemName: "circle") {
            cell.completeButton.setImage(UIImage(systemName: "circle"), for: .normal)
        } else {
            cell.completeButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
        }
        
        // Update the item's completion here:
        
        
        // Save it and update our array copy
        do {
//            try context.save()
//            getAllItems()
        }
        catch {

        }
        

    }
    
    // Here begins the retrieve, create, delete, and edit functions using Core Data
    
    // Get all of the items stored in Core Data
    func getAllItems() {
        do {
            // Fetch items and reverse them here:
            

            // Reload the table data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        catch {
            
        }
    }

    
    // Create an item with the given name
    func createItem(name: String) {
        // Create the new item here:
        
        
        // Update the new items's fields here:
        
        
        // Save it and update our array copy
        do {
//            try context.save()
//            getAllItems()
        }
        catch {

        }
    }

    
    // Delete the item sent to this function
    func deleteItem(item: ToDoItem) {
        // Delete the item here:
        
        
        // Save it and update our array copy
        do {
//            try context.save()
//            getAllItems()
        }
        catch {

        }
    }

    
    // Change the item's name to the given string
    func updateItem(item: ToDoItem, newName: String) {
        // Update the item name here:
        
        
        // Save it and update our array copy
        do {
//            try context.save()
//            getAllItems()
        }
        catch {

        }
    }
    
    // Provide formatter for the date and time
    static let formatter: DateFormatter = {
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .medium
        dateformatter.timeStyle = .short
        dateformatter.locale = .current
        return dateformatter
    }()
}


// Code Bank

/*
 
// Create an alert for editing the item
let alert = UIAlertController(title: "Message", message: "Message", preferredStyle: .alert)
 
// Add a text field with the item's name
alert.addTextField(configurationHandler: nil)
alert.textFields?.first?.text = item.name
 
// Add a save button which updates the item
alert.addAction(UIAlertAction(title: "Message", style: .cancel, handler: { [weak self] _ in
    guard let field = alert.textFields?.first, let newName = field.text, !newName.isEmpty else {
        return
    }
    self?.updateItem(item: item, newName: newName)
}))

// Present this alert
self.present(alert, animated: true)
 
*/





