//
//  ViewController.swift
//  Bank.Vladykin
//
//  Created by user on 23/11/2020.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func loginclick(_ sender: UIButton) {
        let alert = UIAlertController(title: "Авторизация", message: "Введите логин и пароль", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        let alertLogin = UIAlertAction(title: "Войти", style: .default, handler: { UIAlertAction in
            self.performSegue(withIdentifier: "mySegue", sender: nil)
        })
        let alertCancel = UIAlertAction(title: "Отмена", style: .default, handler: nil)
        alert.addAction(alertLogin)
        alert.addAction(alertCancel)
        alert.addTextField { (loginTF) in
            loginTF.placeholder = "Login"
    }
        alert.addTextField { (passwordTF) in
            passwordTF.placeholder = "Password"
            passwordTF.isSecureTextEntry = true
        }
    
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

