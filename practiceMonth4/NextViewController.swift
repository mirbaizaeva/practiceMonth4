//
//  NextViewController.swift
//  practiceMonth4
//
//  Created by Nurjamal Mirbaizaeva on 29/4/23.
//

import UIKit

class NextViewController: UITabBarController {

    private var labelNext = UILabel()
    private var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(imageView)
        imageView.image = UIImage(systemName: "figure.jumprope")
        
        view.addSubview(labelNext)
        labelNext.text = "Главная"
        labelNext.textColor = .green
        labelNext.font = .boldSystemFont(ofSize: 22)

        
        labelNext.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(120)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
        }
        imageView.snp.makeConstraints { make in
            make.top.equalTo(labelNext.snp.bottom).offset(60)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(180)
        }
    }
}
