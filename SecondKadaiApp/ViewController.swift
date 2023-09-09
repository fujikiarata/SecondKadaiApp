//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by WEBSYSTEM-MAC8 on 2023/09/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.placeholder = "名前を入力してください。"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // segueから遷移先のResultViewControllerを取得する
            let resultViewController:ResultViewController = segue.destination as! ResultViewController
            resultViewController.nameData = nameTextField.text!
        }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
            // 他の画面から segue を使って戻ってきた時に呼ばれる
        }
}

