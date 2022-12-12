//
//  ContactsDetailsViewController.swift
//  ContactApplication
//
//  Created by user230806 on 12/11/22.
//

import UIKit

class ContactsDetailsViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    var contacts: Contacts!
    var phoneNumber: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        firstNameTextField.text = contacts.firstName
        lastNameTextField.text = contacts.lastName
        phoneNumberTextField.text = contacts.phoneNumber
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        contacts.firstName = firstNameTextField.text ?? ""
        contacts.lastName = lastNameTextField.text ?? ""
        contacts.phoneNumber = phoneNumberTextField.text ?? ""
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
