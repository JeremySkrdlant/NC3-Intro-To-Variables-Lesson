//
//  VariableMathView.swift
//  VariablesDemo
//

import SwiftUI

struct VariableMathView: View {
	@State var selection = "+="
	// This is an array. It lets us choose between different mathematical operations down below.
	let choices = ["+=", "-=", "*=", "/="]
	
	// This is hardcoding the answer but it works for what this component is supposed to do. If the user chooses one of these selections, they are guaranteed to get that correct answer.
	var calculation:String {
		if selection == "+="{
			return "10"
		}
		if selection == "-="{
			return "0"
		}
		if selection == "*="{
			return "25"
		}
		if selection == "/="{
			return "1"
		}
	
		return "idk"
	}
	
	
    var body: some View {
		VStack (spacing:0){
			Text("Math")
				.font(.title2)
				.bold()
				.kerning(1.8)
				.padding(.bottom, 5)
			
			Text("Change the value in the middle to see the effect of the different arithmatic")
				.multilineTextAlignment(.center)
				.foregroundStyle(.gray)
				.padding(.bottom, 10)
			
			
			HStack {
				// I am using multiple text elements to give each a different foreground color. This works but there is always more to learn.  I could have possibly used attributed strings.
				Text("var")
					.foregroundStyle(.keywords)
					.font(.system(size: 22))
				Text("x = ")
					.font(.system(size: 22))
				Text("5")
					.font(.system(size: 22))
					.foregroundStyle(.blue)
				
			}
			
			HStack{
				Text("x")
					.font(.system(size: 22))
				
				// This is a swiftUI component that lets you select from multiple things in an array.
				Picker("select", selection: $selection) {
					ForEach(choices, id:\.self){
						Text($0)
							.font(.system(size: 22))
					}
				}
				.pickerStyle(.inline)
				.frame(width: 60, height: 120)
				
				Text("5")
					.font(.system(size: 22))
					.foregroundStyle(.blue)
				
			}.frame(height: 120)
				.offset(y:-10)
			
			HStack(spacing:0){
				Text("print")
					.foregroundStyle(.purple)
					.font(.system(size: 22))
				
				Text("(")
					.font(.system(size: 22))
				
				Text("\"")
					.font(.system(size: 22))
					.foregroundStyle(.red)
				
				Text("\\ (x)")
					.font(.system(size: 22))
				
				Text("\"")
					.font(.system(size: 22))
					.foregroundStyle(.red)
				
				Text(")")
					.font(.system(size: 22))
				
			}
			.offset(y: -15)
			
			HStack{
				Text(calculation)
					.bold()
					.font(.system(size: 26))
					.foregroundStyle(.white)
				
				Spacer()
			}
			.padding()
			.background(Color.black)
			.border(.gray, width: 1)
			.padding(.top, 10)
			
		}.padding()
			
    }
}

#Preview {
    VariableMathView()
}
