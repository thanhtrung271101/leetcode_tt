class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let first = strs.first else { return "" }
    
        var prefix = first
        for str in strs {
            while !str.hasPrefix(prefix) {
              prefix.removeLast()
                if prefix.isEmpty { return "" }
            }
        }
    
    return prefix
    }
}