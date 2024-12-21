//
//  TypeQuizView.swift
//  VariablesDemo
//
//  Created by Jeremy Skrdlant on 12/20/24.
//

import SwiftUI

struct TypeQuizView: View {
	let nameOfVariable:String
	let typeOfVariable:String
	let valueOfVariable:String
	@State var typeIsShown = false
    var body: some View {
		HStack {
			Text("let")
				.font(.system(size: 22))
				.foregroundStyle(.keywords)
			Text(nameOfVariable)
				.foregroundStyle(.variableName)
				.font(.system(size: 22))
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
		.onTapGesture {
			typeIsShown.toggle()
		}
    }
}

#Preview {
	TypeQuizView(nameOfVariable: "isOn", typeOfVariable: "Bool", valueOfVariable: "true")
}
