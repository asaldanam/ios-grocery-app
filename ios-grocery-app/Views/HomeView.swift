//
//  ContentView.swift
//  ios-grocery-app
//
//  Created by Abel Saldaña Martínez on 2/3/24.
//

import SwiftUI

struct HomeView: View {
    @State var search: String = ""

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(1...100, id: \.self) {
                            if (search.contains("\($0)")) {
                                Text("Row \($0)")
                            }
                        }
                    }
                        .padding(.top, 160)
                }

                Ellipse()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.teal, .green]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: geometry.size.width * 1.5, height: 200)
                    .position(x: geometry.size.width / 2, y: 0)
                
                VStack {
                    Text("My list")
                        .font(.title)
                        .foregroundStyle(.background)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    HStack(spacing: 0) {
                        Image(systemName: "magnifyingglass")
                            .opacity(0.5)
                        TextField("Search...", text: $search)
                            .font(.system(size: 18))
                            .padding(.leading, 8)
                    }
                        .padding()
                        .frame(height: 56)
                        .background(.background)
                        .cornerRadius(12)
                        .shadow(color: Color(.systemGray4), radius: 24)
                     
                    Text(search)
                        .frame(alignment: .leading)
                        .padding(.top, 32)
                    
                }
                    .padding(.top)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeView()
}
