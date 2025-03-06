class Solution {
    func palindrome(_ x: Int) -> Bool {
        let str = String(x)
        return str == String(str.reserved())
    }
}