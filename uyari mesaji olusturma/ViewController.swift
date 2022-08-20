//
//  ViewController.swift
//  uyari mesaji olusturma
//
//  Created by Mert AKBAŞ on 20.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        let uyariMesaji = UIAlertController(title: "Hata Mesajı", message: "e mail yanlış girildi", preferredStyle: UIAlertController.Style.alert) // Style.alert yerine ActionSheet de yapabilirdik.
        
        // UYARININ İÇİNE BUTON EKLİYERUZ
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            // Okey butonuna tıklanınca olacakları buraya yazarız
            print("Okey butonu tıklandi")
            // Ek bilgi olarka Style.default yerine kullanıcı deneyimi açısından defaulttan farklı üç seçenekten biri girilebilir.
        }
        uyariMesaji.addAction(okButton)// uyarı mesajına buton eklendi(aksiyon olarak)
        
        self.present(uyariMesaji, animated: true, completion: nil) /* self.present yaparak uyarımesajını kullanıcıya gösterdik
            animated true diyerek animasyon eklendi completion nu ise nil diyerek boş bıraktık*/
    }
    
}

