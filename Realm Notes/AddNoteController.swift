//
//  AddNoteController.swift
//  Realm Notes
//
//  Created by Swathy on 22/08/17.
//  Copyright © 2017 Swathy. All rights reserved.
//

import UIKit

class AddNoteController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var pickedImage: UIImageView!
    @IBOutlet weak var saveContainer: UIView!
    @IBOutlet weak var noteText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialiseViews()
    }
    
    func initialiseViews(){
        self.saveContainer.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.save)))
    }
    
    func save(){
        let note = Note()
        note.id = UUID().uuidString
        note.image = "Some Image String"
        note.text = self.noteText.text
        note.save()
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    @IBAction func pickImage(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing =  true
        present(picker, animated: true, completion: nil)
    }

    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("Cancelled")
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        var selectedImageFromPicker: UIImage?
        if let editedImage = info["UIImagePickerControllerEditedImage"] as? UIImage{
            selectedImageFromPicker = editedImage
        }
        else if let originalImage = info["UIImagePickerControllerOriginalImage"] as? UIImage{
            
            selectedImageFromPicker = originalImage
        }
        
        if let selectedImage = selectedImageFromPicker{
            self.pickedImage.image = selectedImage
        }
        
        dismiss(animated: true, completion: nil)
        
    }
    
    

}
