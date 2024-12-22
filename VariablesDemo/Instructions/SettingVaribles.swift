//
//  SettingVaribles.swift
//  VariablesDemo
//
//  Created by Jeremy Skrdlant on 12/13/24.
//

import SwiftUI

// These are the instructions
// Feel free to look at the code.
// The lab starts with the Start_Here File.

struct VariablesInstructions: View {
    var body: some View {
		ScrollView {
			// This will stack our items on top of each other with 30 points of space between each item
			VStack(spacing:30){
				
				// This shows the icon at the top. This image is located in the Assets folder and it has the name NC3
				Image("NC3")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width:300)
					.shadow(radius: 10)
				
				
				// This is our title and description text.
				Text("Welcome to Swift Variables")
					.font(.title)
				Text("Click and drag to go through each of the sections.")
					.multilineTextAlignment(.center)
					.foregroundStyle(.gray)
					.padding(.horizontal)
					.offset(y:-15)
					
				// This is the line you see
				Divider()
				
				// This is a component, the code for this component is in the Components folder in the VarVSLet file. I use the same pattern going down.
				VarVSLet()
				
				Divider()
				TypesView()
				
				Divider()
				StringInterpolationView()
				
				Divider()
				VariableMathView()
				
				Divider()
				Text("Challenge")
					.font(.title2)
					.bold()
					.kerning(1.8)
					
				Text("Scan this with your iPad once the instructor is done")
					.multilineTextAlignment(.center)
					.foregroundStyle(.gray)
					.padding(.horizontal)
				
				// This is our QR Code image also located in the Assets. Note that you can use quotes "" or the dot notation (.) to access elements from your assets folder.
				Image(.unitTestSite)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width:350)
					.offset(y:-25)
					.padding(.bottom, 100)
				
					
			}
			.onAppear{
				// This allows our Debug View the abiltiy to log out all the code we are putting in the LessonPlay function in the Start_Here file. 
				LessonPlay()
			}
		}
    }
}

#Preview {
	VariablesInstructions()
}

