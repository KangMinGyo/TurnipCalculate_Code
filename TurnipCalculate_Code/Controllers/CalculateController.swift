//
//  CalculateController.swift
//  TurnipCalculate_Code
//
//  Created by KangMingyo on 2022/09/16.
//

import UIKit
//import Charts
import GoogleMobileAds

class CalculateController: UIViewController {

    var minmaxPattern = [[Int]]()
    var minPattern = [Int]()
    var maxPattern = [Int]()
    
    var sunPrice: String?
    var monAM: String?
    var monPM: String?
    var tueAM: String?
    var tuePM: String?
    var wenAM: String?
    var wenPM: String?
    var thuAM: String?
    var thuPM: String?
    var friAM: String?
    var friPM: String?
    var satAM: String?
    var satPM: String?
    
    
//    lazy var bannerView: GADBannerView = {
//        let banner = GADBannerView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
//        return banner
//    }()
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        getTurnip()
        getData()
//        configure()
        print(sunPrice!)
    }
    
    func getTurnip() {
        sunPrice = UserDefaults.standard.object(forKey: "sunday") as? String
        monAM = UserDefaults.standard.object(forKey: "monAM") as? String
        monPM = UserDefaults.standard.object(forKey: "monPM") as? String
        tueAM = UserDefaults.standard.object(forKey: "tueAM") as? String
        tuePM = UserDefaults.standard.object(forKey: "tuePM") as? String
        wenAM = UserDefaults.standard.object(forKey: "wenAM") as? String
        wenPM = UserDefaults.standard.object(forKey: "wenPM") as? String
        thuAM = UserDefaults.standard.object(forKey: "thuAM") as? String
        thuPM = UserDefaults.standard.object(forKey: "thuPM") as? String
        friAM = UserDefaults.standard.object(forKey: "friAM") as? String
        friPM = UserDefaults.standard.object(forKey: "friPM") as? String
        satAM = UserDefaults.standard.object(forKey: "satAM") as? String
        satPM = UserDefaults.standard.object(forKey: "satPM") as? String
    }
    
    func getData() {
        TurnipService().getTurnip(sun: sunPrice ?? "0", monAm: monAM ?? "0", monPm: monPM ?? "0", tueAm: tueAM ?? "0", tuePm: tuePM ?? "0", wedAm: wenAM ?? "0", wedPm: wenPM ?? "0", thuAm: thuAM ?? "0", thuPm: thuPM ?? "0", friAm: friAM ?? "0", friPm: friPM ?? "0", satAm: satAM ?? "0", satPm: satPM ?? "0") { (result) in
            switch result {
            case .success(let response):
                DispatchQueue.main.async {
                    self.minmaxPattern.append(contentsOf: response.minMaxPattern)
                    for value in self.minmaxPattern {
                        self.minPattern.append(value[0])
                        self.maxPattern.append(value[1])
                    }
//                    print(self.minPattern)
//                    print(self.maxPattern)
                }
            case .failure(_):
                print("error")
            }
        }
    }
    
    func configure() {
//        view.addSubview(bannerView)
//        bannerView.translatesAutoresizingMaskIntoConstraints = false
//        bannerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        bannerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
    }
}

