//
//  ViewController.swift
//  FoodTracker
//
//  Created by Anun Chaichomphoo on 19/6/2561 BE.
//  Copyright © 2561 KBTG. All rights reserved.
//

import UIKit
import os

class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate,
    UINavigationControllerDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    var meal : Meal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        updateSaveButtonState()
//        photoImageView.isUserInteractionEnabled = true
    }
    //Mark: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard  let button = sender as? UIBarButtonItem, button === saveButton  else {
            os_log("The save button was not pressed, cancelling", log:  OSLog.default, type: .debug)
            return
        }
        let name = nameTextField.text ?? ""
        let photo = photoImageView.image
        let rating = ratingControl.rating
        meal = Meal(name: name, photo: photo, rating: rating)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        saveButton.isEnabled = false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateSaveButtonState()
        navigationItem.title = textField.text
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        
//        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
//            return
//        }
        
        
        photoImageView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    @IBAction func selectImageFromPhotoLibrary(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    private func updateSaveButtonState() {
        saveButton.isEnabled = !(nameTextField.text ?? "").isEmpty
    }
    
    @IBAction func setDefaultLabelText(_ sender: Any) {
        mealNameLabel.text = "Default Label"
    }
    
}

//// MARK: UITextDelegate
//extension ViewController: UITextFieldDelegate {
//
//
//}

