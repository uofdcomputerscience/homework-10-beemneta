import Foundation

// Implement an Error type. Make sure it has at least two values.

// Implement a function that returns a Result of string or your error type

// Call your function in a way that will return an error result, and handle that error.

// Call your function in a way that will return a success result, and handle the value.


enum codingError: Error {
    case undeclaredVariable
    case incorrectSyntax
    case noReturnValue
}

func didNotCompile(value: Int) -> Result<String, Error> {
    if (value >= 15) {
        return .success("Access Granted")
    }
    return .failure(codingError.noReturnValue)
}

let result = didNotCompile(value: 15)

switch result {
case .success(let string):
    print("\(string)")
case .failure(let error):
    print(error)
}
let res = didNotCompile(value:30)
switch res {
  case .failure(let string):
    print("well: \(string)")
  case .success(let string):
    print("\(string)")
}
