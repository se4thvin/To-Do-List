//
//  LoginFormViewModel.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/31/24.
//
import FirebaseAuth
import Foundation

class LoginFormViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
	@Published var errorMessage = ""
    
    init() {}
    
    func login () {
		
		guard validate() else {
			return
		}
		
		//Login using firebase Auth
		Auth.auth().signIn(withEmail: email, password: password)
		
    }
    
	private func validate() -> Bool {
		errorMessage = ""
		guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
			  !password.trimmingCharacters(in: .whitespaces).isEmpty else {
			
			errorMessage = "Please fill in all fields"
			return false
		}
		
		//email validation
		guard email.contains("@") && email.contains(".") else {
			errorMessage = "Please enter a valid email"
			return false
		}
		
		return true
    }
}
