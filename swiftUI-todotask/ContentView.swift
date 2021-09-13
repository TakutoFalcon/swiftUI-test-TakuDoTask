//
//  ContentView.swift
//  swiftUI-todotask
//
//  Created by 糸川拓磨 on 2021/09/13.
//

import SwiftUI

struct ContentView: View {
    @State var newItem: String = ""
    @State var TakuDoList: [String] = ["", ""]
    var body: some View {
        VStack {
            HStack {
                Text("新しい予定の追加").font(.largeTitle).padding(.leading)
                Spacer()
            }
            TextField("新しい予定を入力してください", text: $newItem).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 300)
            Button(action: {
                self.TakuDoList.append(self.newItem)
                self.newItem = ""
                
            }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 5).frame(width: 50, height: 30).foregroundColor(.blue)
                    Text("追加").foregroundColor(.green)
                }
            }
        }
        HStack {
            Text("Taku Do List").font(.largeTitle).padding(.leading)
            Spacer()
        }

        List(TakuDoList, id: \.self) { item in
            Text(item)
        }
            Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
