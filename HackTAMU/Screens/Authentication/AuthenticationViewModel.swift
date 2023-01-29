//
//  AuthenticationViewModel.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import Firebase

class AuthenticationViewModel: ObservableObject {

    enum SignInState {
        case signedIn
        case signedOut
    }

    @Published var state: SignInState = .signedOut
    
}

