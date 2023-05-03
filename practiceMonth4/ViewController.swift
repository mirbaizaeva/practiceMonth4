//
//  ViewController.swift
//  practiceMonth4
//
//  Created by Nurjamal Mirbaizaeva on 29/4/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var userDefaults = UserDefaults.standard

    private var imageView = UIImageView()
    private var labelView = UILabel()
    private var buttonView = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUi()
        buttonAction()
    }
    func buttonAction(){
        buttonView.addTarget(self,
                         action: #selector(goToNextPage(_:)),
                         for: .touchUpInside)
    }
    @objc func goToNextPage(_ sender: UIButton){
            saveScreen()
            let vc = NextViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func saveScreen(){
        var isShown = true
        userDefaults.set(isShown, forKey: "isShown")

    }
    private func initUi(){
        view.addSubview(imageView)
        imageView.image = UIImage(systemName: "figure.run")
        
        view.addSubview(labelView)
        labelView.text = "Добро пожаловать на наше приложение!"
        labelView.textColor = .green
        labelView.font = .boldSystemFont(ofSize: 22)
        labelView.numberOfLines = 0
        labelView.textAlignment = .center
        
        view.addSubview(buttonView)
        buttonView.setTitle("Начать", for: .normal)
        buttonView.backgroundColor = .cyan
        buttonView.layer.cornerRadius = 12
        
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(160)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(160)
        }
        labelView.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
        }
        buttonView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(80)
            make.top.equalTo(labelView.snp.bottom).offset(80)
            make.height.equalTo(60)
        }
    }

}

