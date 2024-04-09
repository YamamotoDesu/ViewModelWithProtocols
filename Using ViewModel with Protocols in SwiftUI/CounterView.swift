//
//  CounterView.swift
//  Using ViewModel with Protocols in SwiftUI
//
//  Created by Yamamoto Kyo on 2024/04/09.
//

import SwiftUI

struct CounterView<ViewModel>: View where ViewModel: CounterViewModelProtocol {
    @StateObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
            Button("Increment") {
                viewModel.didTapIncrement()
            }
            Button("Decrement") {
                viewModel.didTapDecrement()
            }
        }
    }
}
