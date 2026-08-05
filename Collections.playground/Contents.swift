var array1: [Any] = ["a", "b", 10, 55.5]
if array1.contains(where: {$0 is Int}) {
    print("Exists")
}

var arr2 = [Int](repeating: 0, count: 10)
var nums = [1, 2, 3]
nums.append(4)
nums += [5, 6, 7]
print(nums)

nums.remove(at: 2)
print(nums)

var arr3 = [1, 2, 3]
var arr4 = [4, 5, 6]
var arr5 = [arr3, arr4]
print(arr5)

var d1 = ["a": 0, "b": 1, "c": 2, "d": 3]
print(d1["b"]!)
d1["b"] = 2
print(d1)

