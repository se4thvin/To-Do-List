//
//  RegisterFormViewModel.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/31/24.
//

import Foundation

class RegisterFormViewModel: ObservableObject {
	@Published var name: String = ""
	@Published var email: String = ""
	@Published var password: String = ""
}
