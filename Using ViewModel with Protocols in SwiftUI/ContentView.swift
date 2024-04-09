//
//  ContentView.swift
//  Using ViewModel with Protocols in SwiftUI
//
//  Created by Yamamoto Kyo on 2024/04/09.
//

import SwiftUI

struct ContentView: View {
    let viewModel = CounterViewModelImpl()
    
    var body: some View {
        CounterView(viewModel: viewModel)
    }
}
