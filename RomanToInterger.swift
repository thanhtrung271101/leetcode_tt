func romanToInterger (_ s: String) -> Int {
    let roman: [Character: Int] = [
        "I": 1, "V": 5, "X": 10, "L": 50, 
        "C": 100, "D": 500, "M": 1000
    ]

    var total = 0
    var preValue = 0

    for char in s.reserved() {
        if let value = roman[char] {
            if value < preValue {
                total -= value
            } else {
                total += value
            }
            preValue = value
        }
    }
    return total
}