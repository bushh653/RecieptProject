//
//  Data.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import Foundation

// An array of tabs for each different page of the onboarding screen

let tabs = [
    Page(image: "welcome", title: "Welcome", text: "Welcome to the Reciepts App"),
    Page(image: "gettingStarted", title: "Getting Started", text: "Have a look at the instructions"),
    Page(image: "tools", title: "Tools", text: "You can use the tools to help your daily life"),
    Page(image: "tips", title: "Tips", text: "Here is a handy tip: Point the camera the right way!")
    
]

// Creating a structure for what each onboarding screen will look like

struct Page {
    let image: String
    let title: String
    let text: String
}
