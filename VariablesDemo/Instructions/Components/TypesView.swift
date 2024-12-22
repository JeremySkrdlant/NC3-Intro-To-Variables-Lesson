//
//  TypesView.swift
//  VariablesDemo
//

import SwiftUI

// This combines multiple TypeQuizViews into one view so we can see an example of each type.
struct TypesView: View {
    var body: some View {
		VStack {
			Text("Variable Types")
				.font(.title2)
				.bold()
				.kerning(1.8)
				.padding(.bottom, 5)
			
			Text("Variable types can be inferred from their value.")
			
			Text("Tap to see their default types")
				.foregroundStyle(.gray)
				.padding(.bottom, 15)
			
			// This is calling that other component. Each one of these calls the same component but they each look different because we pass different parameters to the view.
			TypeQuizView(nameOfVariable: "isOn", typeOfVariable: "Bool", valueOfVariable: "true")
			
			TypeQuizView(nameOfVariable: "daysInJanuary", typeOfVariable: "Int", valueOfVariable: "31")
			
			TypeQuizView(nameOfVariable: "avgScreenTime", typeOfVariable: "Double", valueOfVariable: "7.5")
			
			TypeQuizView(nameOfVariable: "device", typeOfVariable: "String", valueOfVariable: "\"iPhone\"")
		}
		.padding()
    }
}

#Preview {
    TypesView()
}
