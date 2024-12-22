//
//  StringInterpolationView.swift
//  VariablesDemo
//

import SwiftUI

struct StringInterpolationView: View {
	// This variable will force a redraw of the screen when the value is changed.
	@State var stepNumber = 1
	
	// This is a computed value.  The string has different values based on the value of stepNumber.
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
			
			// This shows the value of the variable instruction here. Note that when it is red with quotes, it is literally printing what is there but when it is not there, it is printing the value of the variable.
			Text(instruction)
			
			HStack(spacing:0){
				Text("\"")
					.foregroundStyle(.red)
				
				// We can conditionally put items in our stack. Really Cool!!
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
			
			// This puts both our buttons side by side rather than on top of each other.
			HStack{
				
					Button {
						// We decrease the step but never let it go below 1.
						stepNumber -= 1
						if stepNumber < 1{
							stepNumber = 1
						}
					} label: {
						Text("Previous Step")
							.bold()
					}
					.buttonStyle(.borderedProminent)
					// The button is disabled if the stepnumber is 1.
					.disabled(stepNumber < 2)
				
					Button {
						// We increase the step but never let it go above 4.
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
