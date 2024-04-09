//
//  CounterViewModelProtocol.swift
//  Using ViewModel with Protocols in SwiftUI
//
//  Created by Yamamoto Kyo on 2024/04/09.
//

import Foundation

protocol CounterViewModelProtocol {
    var count: Int { get set }
    func didTapIncrement()
    func didTapDecrement()
}
