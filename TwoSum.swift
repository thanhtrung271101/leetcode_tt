// map
func twoSum(_ nums: [Int], _ target: [Int]) -> [Int] {
    var map = [Int: Int]() // save the number and index into dictionary

    for (i, num) in num.enumerated() {
        let component = target - num

        if let index  = map[component] {
            return [index, i]
        }

        map[num] = i
    }

    return []
}

// two loop
for twoSum2(_ nums: [Int], _ target: [Int]) -> [Int] {
    for i in 0..< nums.count {
        for j in (i+1)..< nums.count {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    return []
}

