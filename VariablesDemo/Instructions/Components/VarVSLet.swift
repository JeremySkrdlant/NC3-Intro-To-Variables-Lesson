//
//  VarVSLet.swift
//  VariablesDemo
//
//  Created by Jeremy Skrdlant on 12/20/24.
//

import SwiftUI

struct VarVSLet: View {
	@State var sliderValue = 50.0
	@State var letSliderValue = 42.0
    var body: some View {
		VStack {
			Text("var is variable    |    let is  constant")
				.foregroundStyle(.gray)
				.padding(.bottom, 5)
			Text("var")
				.font(.system(size: 30))
				.foregroundStyle(.purple)
				.padding(.bottom, 5)
			Text("\(Int(sliderValue))")
				.font(.system(size: 40))
				.offset(y: -3)
			Slider(value: $sliderValue, in: 1...100)
				.offset(y: -15)
				.padding(.bottom, 12)
			Text("let")
				.font(.system(size: 30))
				.foregroundStyle(.purple)
				.padding(.vertical, 5)
			Text("\(Int(letSliderValue))")
				.font(.system(size: 40))
				.offset(y: -3)
			Slider(value: $letSliderValue, in: 1...100)
				.disabled(true)
				.offset(y: -15)
				
		}
		.padding()
    }
}

#Preview {
    VarVSLet()
}
