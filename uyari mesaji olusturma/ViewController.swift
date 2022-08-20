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
        
        if emailTextField.text == "" {
            // email ini girmemişsin
            alertOlustur(titleGirdisi: "Hata", mesajGirdisi: "email ini girmemişsin")
            
        } else if passwordTextField.text == "" {
            // parolanı girmemişsin
            alertOlustur(titleGirdisi: "Hata", mesajGirdisi: "Parolanı girmemişsin")
           
        } else if passwordTextField.text != password2TextField.text {
            // parolalar uyuşmuyor
            alertOlustur(titleGirdisi: "Hata", mesajGirdisi: "Parolalar uyuşmuyor")
           
        } else {
            // başarıyla kaydettik
            alertOlustur(titleGirdisi: "Başarılı", mesajGirdisi: "Kullanıcı kaydı oluşturuldu")
            
        }
    }
    //Sürekli aynı kodları tekrar etmemek için alert fonksiyonu oluşturuyoruz.
    func alertOlustur(titleGirdisi: String,mesajGirdisi: String){
        
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: mesajGirdisi, preferredStyle: UIAlertController.Style.alert) // Style.alert yerine ActionSheet de yapabilirdik.
        
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

