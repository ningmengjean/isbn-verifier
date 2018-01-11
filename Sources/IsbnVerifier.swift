//Solution goes in Sources
import Foundation

class IsbnVerifier {
    static func isValid(_ input: String) -> Bool {
        let a = input.filter({"0123456789".contains($0)})
        if input.contains("XX") {
            return false
        }
        if (a.count == 9 && input.last! == "X") {
            var result = 0
            var n = 10
            var b = 0
            for i in a {
                result += Int(String(i))!*n
                n -= 1
            }
            b = (result+10)%11
            if b == 0 {
                return true
            }
        } else if a.count == 10 {
            var result = 0
            var n = 10
            var b = 0
            for i in a {
                result += Int(String(i))!*n
                n -= 1
            }
            b = result%11
            if b == 0 {
                return true
            }
        }
        
        return false
    }
}
