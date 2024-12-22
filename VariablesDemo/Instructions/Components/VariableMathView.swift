//
//  VariableMathView.swift
//  VariablesDemo
//
//  Created by Jeremy Skrdlant on 12/20/24.
//

import SwiftUI

struct VariableMathView: View {
	@State var selection = "+="
	let choices = ["+=", "-=", "*=", "/="]
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
			Text("Change the value in the middle to see the effect of the different arithmatic")
				.foregroundStyle(.gray)
				.padding(.bottom, 10)
			HStack {
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
			HStack{
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
