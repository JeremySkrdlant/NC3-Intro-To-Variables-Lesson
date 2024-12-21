//
//  SettingVaribles.swift
//  VariablesDemo
//
//  Created by Jeremy Skrdlant on 12/13/24.
//

import SwiftUI

//These are the instructions, Feel free
//to look at the code.  The lab starts with the Start_Here File.
struct VariablesInstructions: View {
    var body: some View {
		ScrollView {
			VStack(spacing:30){
				Image("NC3")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width:300)
					.shadow(radius: 10)
				
				Text("Welcome to Swift Variables")
					.font(.title)
				Divider()
				VarVSLet()
				Divider()
				TypesView()
				Divider()
				StringInterpolationView()
				Divider()
				VariableMathView()
				Divider()
				Text("Scan this with your iPad once the instructor is done")
					.foregroundStyle(.gray)
					.padding()
				ZStack {
					Color.black
						.opacity(0.5)
					Text("QR Code for DoCC lesson done in unit tests")
						.foregroundStyle(.white)
						.frame(width:200)
				}.frame(width: 300, height: 300)
			}
			.onAppear{
				LessonPlay()
			}
		}
    }
}

#Preview {
	VariablesInstructions()
}

