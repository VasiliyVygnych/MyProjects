//
//  LoginScreen.swift
//  MyApp
//
//  Created by Vasiliy Vygnych on 21.04.2023.
//

//два Label для TextField

//два TextField для входа

//кнопка входа на главный View если уже зарегистрирован

//кнопка регистрации на UserRegistration если не зарегистрирован



//адаптацию языка

import UIKit
import SnapKit

class LoginScreen: UIViewController {
    static let shared = LoginScreen()
    //MARK: - UIUILabell
    private lazy var loginLabel: UILabel = {
        let loginLabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.font = .systemFont(ofSize: 15, weight: .semibold)
        return loginLabel
    }()
    private lazy var passwordLabel: UILabel = {
        let passwordLabel = UILabel()
        passwordLabel.text = "Password"
        passwordLabel.font = .systemFont(ofSize: 10, weight: .semibold)
        return passwordLabel
    }()
    //MARK: - UITextField
    private lazy var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.placeholder = "number or email"
        loginTextField.backgroundColor = .white
        loginTextField.layer.cornerRadius = 10
        loginTextField.borderStyle = .roundedRect
        return loginTextField
    }()
    private lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "***********"
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.borderStyle = .roundedRect
        return passwordTextField
    }()
    //MARK: - UIButton
    private lazy var loginButton: UIButton = { //ведет на главный View
       let loginButton = UIButton()
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Вход", for: .normal)//Log in
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.backgroundColor = .gray
        loginButton.layer.cornerRadius = 16
        //action
        return loginButton
    }()
    private lazy var RegistrationButton: UIButton = { // веден на страницу регистрации UserRegistration
       let RegistrationButton = UIButton()
        RegistrationButton.translatesAutoresizingMaskIntoConstraints = false
        RegistrationButton.setTitle("Регистрация", for: .normal)
        RegistrationButton.setTitleColor(.black, for: .normal)
        RegistrationButton.backgroundColor = .gray
        RegistrationButton.layer.cornerRadius = 16
        //action
        return RegistrationButton
    }()
    // MARK: - StackView
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
   
        stackView.addSubview(loginButton)
        stackView.addSubview(RegistrationButton)
        stackView.addSubview(loginLabel)
        stackView.addSubview(passwordLabel)
        
        stackView.addSubview(loginTextField)
        stackView.addSubview(passwordTextField)
        
       // stackView.backgroundColor = .red
        return stackView
    }()
    
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stackView)
        setupeConstraints()
    }
    //MARK: - SetupeConstraints
    private func setupeConstraints() {
        stackView.snp.makeConstraints { make in
            make.left.equalTo(view.snp.left)
            make.top.equalTo(view.snp.top)
            make.right.equalTo(view.snp.right)
            make.bottom.equalTo(view.snp.bottom)
        }
        //MARK: - ConstraintsTextField
        loginTextField.snp.makeConstraints { make in
            make.width.equalTo(380)
            make.height.equalTo(50)
            make.left.equalTo(5)
            make.top.equalTo(200)
           }
        passwordTextField.snp.makeConstraints { make in
            make.width.equalTo(380)
            make.height.equalTo(50)
            make.left.equalTo(5)
            make.top.equalTo(loginTextField.snp.top).inset(55)//152
           }
        //MARK: - ConstraintsButton
        loginButton.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.left.equalTo(234)
            make.top.equalTo(passwordTextField.snp.top).inset(105)
        }
        RegistrationButton.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.left.equalTo(10)
            make.top.equalTo(passwordTextField.snp.top).inset(105)
        }
        //MARK: - ConstraintsLabel
        loginLabel.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.left.equalTo(5)
            make.top.equalTo(195)
        }
        passwordLabel.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.left.equalTo(5)
            make.top.equalTo(loginTextField.snp.top).inset(55)
        }
        
        
        
    }
    
    
    
}
