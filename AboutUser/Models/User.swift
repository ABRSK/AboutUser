//
//  Models.swift
//  AboutUser
//
//  Created by Андрей Барсук on 29.03.2022.
//

struct User {
  let username: String
  let password: String
  var userProfile: UserProfile
}

struct UserProfile {
  let firstName: String
  let lastName: String
  var displayName: String
  var about: UserAbout
  let contacts: UserContacts
}

struct UserAbout {
  let dateOfBirth: String
  let aboutText: String
  let favoriteAnimal: String
  let favoriteBook: String
}

struct UserContacts {
  let phoneNumber: String
  let email: String
}

// Default user

var defaultUser = User(
  username: "username",
  password: "password",
  userProfile: UserProfile(
    firstName: "Andrey",
    lastName: "Barsuk",
    displayName: "ABRSK",
    about: UserAbout(
      dateOfBirth: "March 5th, 1990",
      aboutText: "About text goes here...",
      favoriteAnimal: "Cats",
      favoriteBook: "The Master and His Emissary"),
    contacts: UserContacts(
      phoneNumber: "+7 994 417 XX XX",
      email: "xxxxxxxx@gmail.com"
    )
  )
)
