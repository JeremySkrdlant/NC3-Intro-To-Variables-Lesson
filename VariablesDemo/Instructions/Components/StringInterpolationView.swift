//
//  StringInterpolationView.swift
//  VariablesDemo
//
//  Created by Jeremy Skrdlant on 12/20/24.
//

import SwiftUI

struct StringInterpolationView: View {
	@State var stepNumber = 1
	var instruction:String{
		switch stepNumber {
		case 1:
			return "Start with quotes"
		case 2:
			return "Add some text"
		case 3:
			return "Put in backslash and parenthesis"
		case 4:
			return "Put in your variable"
		default:
			return "error"
		}
		
	}
	
    var body: some View {
		VStack (spacing:15) {
			Text("String Interpolation")
				.font(.title2)
				.bold()
				.kerning(1.8)
				.padding(.bottom, 12)
			Text(instruction)
			
			HStack(spacing:0){
				Text("\"")
					.foregroundStyle(.red)
				if stepNumber > 1 {
					Text("Hello ")
						.foregroundStyle(.red)
				}
				if stepNumber > 2 {
					Text("\\ (")
				}
				
				if stepNumber > 3 {
					Text("name")
						.foregroundStyle(.variableName)
				}
				
				if stepNumber > 2 {
					Text(")")
				}
				
				Text(" \"")
					.foregroundStyle(.red)
			}
			.padding(.vertical, 10)
			
			HStack{
				
					Button {
						stepNumber -= 1
						if stepNumber < 1{
							stepNumber = 1
						}
					} label: {
						Text("Previous Step")
							.bold()
					}
					.buttonStyle(.borderedProminent)
					.disabled(stepNumber < 2)
				
					Button {
						stepNumber += 1
						if stepNumber > 4{
							stepNumber = 4
						}
					} label: {
						Text("Next Step")
							.bold()
					}
					.buttonStyle(.borderedProminent)
					.disabled(stepNumber > 3)
				}
			
		}
    }
}

#Preview {
    StringInterpolationView()
}
