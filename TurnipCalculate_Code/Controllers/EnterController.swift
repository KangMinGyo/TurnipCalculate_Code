//
//  EnterController.swift
//  TurnipCalculate_Code
//
//  Created by KangMingyo on 2022/09/16.
//

import UIKit

class EnterController: UIViewController {
    
    lazy var initButton: UIBarButtonItem = {
        let button = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(buttonPressend))
        return button
    }()
    
    lazy var sunView: UIView = {
       let view = UIView()
        view.backgroundColor = .systemBackground
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var sunLabel: UILabel = {
       let label = UILabel()
        label.text = "일요일"
        return label
    }()
    
    lazy var sunTextField: UITextField = {
       let textField = UITextField()
        textField.layer.cornerRadius = 10
        textField.backgroundColor = .systemGray6
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var restView: UIView = {
       let view = UIView()
        view.backgroundColor = .systemBackground
        view.layer.cornerRadius = 15
        return view
    }()
    
    var weekStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 60
        return stackView
    }()
    
    lazy var monLabel: UILabel = {
       let label = UILabel()
        label.text = "월요일"
        return label
    }()
    
    lazy var tueLabel: UILabel = {
       let label = UILabel()
        label.text = "화요일"
        return label
    }()
    
    lazy var wedLabel: UILabel = {
       let label = UILabel()
        label.text = "수요일"
        return label
    }()
    
    lazy var thuLabel: UILabel = {
       let label = UILabel()
        label.text = "목요일"
        return label
    }()
    
    lazy var friLabel: UILabel = {
       let label = UILabel()
        label.text = "금요일"
        return label
    }()
    
    lazy var satLabel: UILabel = {
       let label = UILabel()
        label.text = "토요일"
        return label
    }()
    
    var amStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 50
        return stackView
    }()
    
    var pmStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 50
        return stackView
    }()
    
    lazy var monAmTextField: UITextField = {
        let textField = UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var monPmTextField: UITextField = {
        let textField = UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var tueAmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var tuePmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var wenAmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var wenPmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var thuAmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var thuPmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var friAmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var friPmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var satAmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var satPmTextField: UITextField = {
        let textField =  UITextField()
        textField.setting()
        return textField
    }()
    
    lazy var calculateButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 15
        button.setTitle("이번주 무 값은?", for: UIControl.State.normal)
        return button
    }()
        
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        title = "무 값 입력"
        self.navigationItem.rightBarButtonItem = self.initButton
        
        [monLabel, tueLabel, wedLabel, thuLabel, friLabel, satLabel].map {
            self.weekStackView.addArrangedSubview($0)
        }
        
        [monAmTextField, tueAmTextField, wenAmTextField, thuAmTextField, friAmTextField, satAmTextField].map {
            self.amStackView.addArrangedSubview($0)
        }
        
        [monPmTextField, tuePmTextField, wenPmTextField, thuPmTextField, friPmTextField, satPmTextField].map {
            self.pmStackView.addArrangedSubview($0)
        }
        
        configure()
    }
    
    // MARK: Button Event
    @objc func buttonPressend(_sender: Any) {
        //초기화 해주기
        print("Button Cliked")
    }
    
    func configure() {
        view.addSubview(sunView)
        sunView.translatesAutoresizingMaskIntoConstraints = false
        sunView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sunView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        sunView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        sunView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        
        sunView.addSubview(sunLabel)
        sunLabel.translatesAutoresizingMaskIntoConstraints = false
        sunLabel.centerYAnchor.constraint(equalTo: sunView.centerYAnchor).isActive = true
        sunLabel.leadingAnchor.constraint(equalTo: sunView.leadingAnchor, constant: 30).isActive = true
        
        sunView.addSubview(sunTextField)
        sunTextField.translatesAutoresizingMaskIntoConstraints = false
        sunTextField.centerYAnchor.constraint(equalTo: sunView.centerYAnchor).isActive = true
        sunTextField.leadingAnchor.constraint(equalTo: sunLabel.trailingAnchor, constant: 30).isActive = true
        sunTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        sunTextField.widthAnchor.constraint(equalToConstant: 210).isActive = true
        
        view.addSubview(restView)
        restView.translatesAutoresizingMaskIntoConstraints = false
        restView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        restView.topAnchor.constraint(equalTo: sunView.bottomAnchor, constant: 20).isActive = true
        restView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        restView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        
        restView.addSubview(weekStackView)
        weekStackView.translatesAutoresizingMaskIntoConstraints = false
        weekStackView.centerYAnchor.constraint(equalTo: restView.centerYAnchor).isActive = true
        weekStackView.leadingAnchor.constraint(equalTo: restView.leadingAnchor, constant: 30).isActive = true
        
        restView.addSubview(amStackView)
        amStackView.translatesAutoresizingMaskIntoConstraints = false
        amStackView.centerYAnchor.constraint(equalTo: restView.centerYAnchor).isActive = true
        amStackView.leadingAnchor.constraint(equalTo: weekStackView.trailingAnchor, constant: 30).isActive = true
        
        restView.addSubview(pmStackView)
        pmStackView.translatesAutoresizingMaskIntoConstraints = false
        pmStackView.centerYAnchor.constraint(equalTo: restView.centerYAnchor).isActive = true
        pmStackView.leadingAnchor.constraint(equalTo: amStackView.trailingAnchor, constant: 10).isActive = true
        
        
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        calculateButton.topAnchor.constraint(equalTo: restView.bottomAnchor, constant: 20).isActive = true
        calculateButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        calculateButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        
    }
}
