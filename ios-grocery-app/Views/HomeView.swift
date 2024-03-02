//
//  ContentView.swift
//  ios-grocery-app
//
//  Created by Abel Saldaña Martínez on 2/3/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var search: String
    @State var search2: String = "a"

    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
//            Text("Hello").padding(48).background()
            VStack {
                TextField("Search", text: $search2)
                    .accentColor(.red)
                    .font(.system(size: 20, weight: .regular))
                    .padding(.horizontal, 16)
                    .padding(.vertical, 40)
                    .frame(width: .none, height: 48)
                    .border(.foreground)
//                    .background(.secondary)
//                    .foregroundStyle(.secondary)
//                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal, 8)
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundStyle(.tint)
                Text(search2)
                    .padding(.top, 20)
            }
        }
    }
}

#Preview {
    HomeView(search: .constant(""))
}
