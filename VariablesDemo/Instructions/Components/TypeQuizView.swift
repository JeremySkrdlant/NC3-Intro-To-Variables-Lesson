//
//  TypeQuizView.swift
//  VariablesDemo
//

import SwiftUI

// This is a single line of code in the Text Types component.  We often have components that are made of other components.
struct TypeQuizView: View {
	// These are variables that we can pass to the component.
	let nameOfVariable:String
	let typeOfVariable:String
	let valueOfVariable:String
	// This will toggle if we see the variable type or not.
	@State var typeIsShown = false
    var body: some View {
		HStack {
			Text("let")
				.font(.system(size: 22))
				.foregroundStyle(.keywords)
			
			Text(nameOfVariable)
				.foregroundStyle(.variableName)
				.font(.system(size: 22))
			
			// Here is where the value is shown based on our state variable
			if typeIsShown {
				Text(":")
					.font(.system(size: 22))
				Text(typeOfVariable)
					.foregroundStyle(.purple)
					.font(.system(size: 22))
			}
			
			Text("=")
				.font(.system(size: 22))
			
			Text (valueOfVariable)
				.foregroundStyle(.keywords)
				.font(.system(size: 22))
			
		}
		.padding(.bottom, 15)
		// When we tap on the stack, it runs the following code. basically we switch the typeIsShown between true and false.
		.onTapGesture {
			typeIsShown.toggle()
		}
    }
}

#Preview {
	// Note that we have to pass in values to this View. If we didn't, it wouldn't be able to load. 
	TypeQuizView(nameOfVariable: "isOn", typeOfVariable: "Bool", valueOfVariable: "true")
}
