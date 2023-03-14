struct Stack<T> {
  var elements: [T] = [] //제너릭으로 배열 생성
  var top = -1
    
  var count : Int {
    return elements.count
  }
  
  var isEmpty : Bool {
    return elements.isEmpty
  }

  mutating func push(_ element: T){
    elements.append(element)
    self.top += 1
  }

  mutating func pop() -> T? {
    if isEmpty {
      return nil
    }
    self.top -= 1
    return elements.popLast()
  }

  func peek() -> T? {
    if isEmpty {
      return nil
    }
    return elements.last
  }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)