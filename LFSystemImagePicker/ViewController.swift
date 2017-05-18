//
//  ViewController.swift
//  LFSystemImagePicker
//
//  Created by Leo on 18/05/2017.
//  Copyright © 2017 Lio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
    @IBAction func camera(_ sender: Any) {
        self.imagePicker(camera: true)
    }
    
    @IBAction func album(_ sender: Any) {
        self.imagePicker(camera: false)
    }
    
    private func imagePicker(camera: Bool) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType =  camera ? .camera : .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



// MARK: - ImagePicker
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        guard let image = info["UIImagePickerControllerEditedImage"] as? UIImage else {
            picker.dismiss(animated: true, completion: nil)
            return
        }
        
        // codeing
        print(image)
        
        
        picker.dismiss(animated: true, completion: nil)
    }
}

