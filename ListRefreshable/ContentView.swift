//
//  ContentView.swift
//  ListRefreshable
//
//  Created by Ryo on 2022/11/09.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.data, id: \.self) { data in
                    Text("\(data)")
                }
            }
            .refreshable {
                viewModel.addData()
            }
            .toolbar {
                Button {
                    viewModel.trashData()
                } label: {
                    Label("Dateを削除", systemImage: "trash")
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
