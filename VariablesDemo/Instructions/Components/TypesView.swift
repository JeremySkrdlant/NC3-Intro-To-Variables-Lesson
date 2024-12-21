//
//  TypesView.swift
//  VariablesDemo
//
//  Created by Jeremy Skrdlant on 12/20/24.
//

import SwiftUI

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
