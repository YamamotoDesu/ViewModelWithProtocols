[Using ViewModel with Protocols in SwiftUI](https://medium.com/@azalazar/using-viewmodel-protocols-in-swiftui-7f8818342af1)

## Step 1: Define the View Model Protocol
Start by defining the view model protocol that outlines the properties and methods that your views will interact with.     
This protocol serves as the contract that your view models will conform to.

```swift
import Foundation

protocol CounterViewModelProtocol {
    var count: Int { get set }
    func didTapIncrement()
    func didTapDecrement()
}
```

## Step 2: Create a Concrete View Model
Implement a concrete class that conforms to the view model protocol.     
This class will provide the actual functionality and data that your views will use.    

```swift
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
```

## Step 3: Create a SwiftUI View 
Inject the view model into the view using the @StateObject property wrapper.

```swift
import SwiftUI

struct CounterView<ViewModel>: View where ViewModel: CounterViewModelProtocol {
    @State private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self._viewModel = State(wrappedValue: viewModel)
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
```

## Step 4: Instantiate and Use the View Model

```swift
let viewModel = CounterViewModelImpl()
CounterView(viewModel: viewModel)
```
