//
//  VarVSLet.swift
//  VariablesDemo
//

import SwiftUI

struct VarVSLet: View {
	// These are two variables that can force the screen to redraw.  Every time you move the slider, the value changes therefore the label that has our value needs to be redrawn.
	@State var sliderValue = 50.0
	@State var letSliderValue = 42.0
	
    var body: some View {
		VStack {
			// We have a couple text elements to describe the comonent.
			Text("Variables and Constants")
				.font(.title2)
				.bold()
				.kerning(1.8)
				.padding(.bottom, 5)
			
			Text("var is variable    |    let is  constant")
				.foregroundStyle(.gray)
				.padding(.bottom, 5)
			
			Text("var")
				.font(.system(size: 30))
				.foregroundStyle(.purple)
			
			// This uses String Interpolation to put the variable value in the string.  We are also casting a double type to an int. It is basically just dropping the decimal values.
			Text("\(Int(sliderValue))")
				.font(.system(size: 40))
				.offset(y: -3)
			
			// This is a component that can change a value of a variable and takes a range of nubmers it can go between.
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
