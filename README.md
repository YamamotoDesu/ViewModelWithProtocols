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
