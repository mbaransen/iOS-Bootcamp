//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Muzaffer Baran on 6.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))//ilk acıldıgında label kısmında sayı yazması ıcın bu kodu yazdık yani 30 yazacak.
        indicator.isHidden = true//indicator ilk calıstıgı anda görünmez olması icin bu kodu yazdık.
        
    }

    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri//girilen veriyi üste aktarmak icin bu kod yazılır.
        }
    }
    
    @IBAction func buttonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu")//butona basınca mutlu resminin gelmesi icin bu kodu yaz.
    }
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")//butona basınca uzgun resminin gelmesi icin bu kodu yaz.
    }
    @IBAction func buttonGoster(_ sender: Any) {
    }
    @IBAction func switchDegisim(_ sender: UISwitch) {
       
    }
    
    @IBAction func segmentedDegisim(_ sender: Any) {
        
    }
    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))//tam sayı gormek icin Int e donusturduk.
    }
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    @IBAction func basla(_ sender: Any) {
        indicator.isHidden = false//Basla butonuna basınca görünmez olmamalı.
        indicator.startAnimating()//yukleme animasyonunu baslatması icin.
    }
    @IBAction func dur(_ sender: Any) {
        indicator.isHidden = true//dur butonuna basınca yukleme indicatorunu gizlemesi icin bu kod yazılır.
        indicator.stopAnimating()//yukleme animasyonunu durdurması ıcın
    }
    
}

