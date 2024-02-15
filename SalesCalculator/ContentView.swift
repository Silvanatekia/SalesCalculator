//
//  ContentView.swift
//  SalesCalculator
//
//  Created by Silvana Tekia on 12/02/2024.
//

import SwiftUI

struct ContentView: View {
    
   @State var beforeTaxPrice = ""
    @State var salesTaxRate = ""
    @State var afterTaxPrice = ""
    
    var body: some View {
        VStack {
            Text("Sales Tax Calculator")
            .font(.largeTitle)
            .foregroundStyle(Color.blue)
            
            HStack{
                Text("Before Tax Price")
                    .foregroundStyle(.red)
                    .bold()
                TextField("$0", text: $beforeTaxPrice)
                    .keyboardType(/*@START_MENU_TOKEN@*/.decimalPad/*@END_MENU_TOKEN@*/)
            }
            .padding(.top, 40.0)
            HStack{
                Text("Sales Tax Rate")
                    .foregroundStyle(.red)
                    .bold()
                TextField("$0", text: $salesTaxRate)
                    .keyboardType(/*@START_MENU_TOKEN@*/.decimalPad/*@END_MENU_TOKEN@*/)
            }
            .padding(.top, 20.0)
            
            HStack{
                Text("After Tax Price")
                    .foregroundStyle(.red)
                    .bold()
                TextField("$0", text: $afterTaxPrice)
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }
            .padding(.top, 40.0)
            Button("Calculate") {
                if let beforeTax = Float(beforeTaxPrice),
                   let tax = Float(salesTaxRate) {
                    let salesTax = beforeTax * tax / 100
                    afterTaxPrice = String(beforeTax + salesTax)
                    
                }
            }
            .padding(.top, 40.0)
            
            Spacer()
        }
        .padding()
        
        }
      
    }

#Preview {
    ContentView()
}
