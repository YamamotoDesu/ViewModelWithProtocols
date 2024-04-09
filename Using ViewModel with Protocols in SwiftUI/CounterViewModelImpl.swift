//
//  CounterViewModelImpl.swift
//  Using ViewModel with Protocols in SwiftUI
//
//  Created by Yamamoto Kyo on 2024/04/09.
//

import Foundation

@Observable
final class CounterViewModelImpl: CounterViewModelProtocol {
    var count: Int = 0
    
    func didTapIncrement() {
        count += 1
    }
    
    func didTapDecrement() {
        count -= 1
    }
}
