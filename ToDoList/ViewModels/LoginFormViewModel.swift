//
//  LoginFormViewModel.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/31/24.
//

import Foundation

class LoginFormViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
	@Published var errorMessage = ""
    
    init() {}
    
    func login () {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
			
			errorMessage = "Please fill in all fields"
            return
        }
		
		//print("Called")
    }
    
    func validate() {
        
    }
}
