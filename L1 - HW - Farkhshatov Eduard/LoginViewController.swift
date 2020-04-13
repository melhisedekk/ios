//
//  LoginViewController.swift
//  L1 - HW - Farkhshatov Eduard
//
//  Created by Эдуард Фархшатов on 26.03.2020.
//  Copyright © 2020 Эдуард Фархшатов. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var scrollBottomConstraint2: NSLayoutConstraint!
    
    @IBOutlet weak var loginScrollView: UIScrollView!
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // жест нажатия
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(keyboardHide))
        loginScrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWasShown(notification:)),
            name: UIResponder.keyboardWillShowNotification,
            object: nil)
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillBeHidden(notification:)),
            name: UIResponder.keyboardWillHideNotification,
            object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(
            self,
            name: UIResponder.keyboardWillShowNotification,
            object: nil)
        
        NotificationCenter.default.removeObserver(
            self,
            name: UIResponder.keyboardWillHideNotification,
            object: nil)        
    }
    
    @objc func keyboardWasShown(notification: Notification) {
        let userInfo = (notification as NSNotification).userInfo as! [String: Any]
        let frame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        scrollBottomConstraint2.constant = frame.height
        print("login scroll view +")
    }
    
    @objc func keyboardWillBeHidden(notification: Notification) {
        scrollBottomConstraint2.constant = 0
        print("login scroll view -")
    }
    
    @objc func keyboardHide() {
        self.loginScrollView?.endEditing(true)
        print("fifnish editing login scroll view")
    }
    
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "loginSegue":
            let isAuth = login()
            if !isAuth {
                showErrorAlert()
            }
            return login()
        default:
            return true
        }
    }
    

    
    func login() -> Bool {
        let login = loginTextField.text!
        let password = passwordTextField.text!
        
        return login == "admin" && password == "123456"
    }
    
    func showErrorAlert() {
        // Создаем контроллер
        let alert = UIAlertController(title: "Auth error", message: "Wrong user data: login, password", preferredStyle: .alert)
        // Создаем кнопку для UIAlertController
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        // Добавляем кнопку на UIAlertController
        alert.addAction(action)
        // Показываем UIAlertController
        present(alert, animated: true, completion: nil)
    }
}





//let login = loginTextField.text!
//       let password = passwordTextField.text!
//       if login == "admin" && password == "123456" {
//           print("auth ok")
//       } else {
//       print("auth error")
//       }
//   }
