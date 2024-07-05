//
//  MathFn.swift
//  MathFnSwift
//
//  Created by Anupam Kumar on 05/07/24.
//

import UIKit

public class MathFn: NSObject {
    
    /// getFabonacciSequence
    /// - Parameter number: put the number till which you want fabonacci sequence
    /// - Returns: fabonacci sequence in form of array
    public class func getFabonacciSequence(number: Int) -> [Int] {
        
        var resultArr = [Int]()
        
        if number == 0 {
            return resultArr
        }
        
        resultArr = [0,1]
                
        for _ in 0..<(number-1) {
            
            resultArr.append(resultArr[resultArr.count - 1]+resultArr[resultArr.count - 2])
            
        }
        
        return resultArr
    }
    
    
    /// getPowerValue
    /// - Parameters:
    ///   - baseValue: put the number of which you want power value
    ///   - powerValue: put the number till which you want power
    /// - Returns: power value
    public class func getPowerValue(baseValue: Decimal, powerValue: Int) -> Int {
        
        let decimalNumber =  NSDecimalNumber(decimal: pow(baseValue, powerValue))
        return Int(truncating: decimalNumber)
    }
    
    /// getRootValue
    /// - Parameters:
    ///   - baseValue: put the number of which you need to find the power value
    ///   - powerValue: put the number till which you want power
    /// - Returns: root value
    public class func getRootValue(baseValue: Double, powerValue:Double) -> Double {
        
        let decimaleValue = pow(baseValue, 1/powerValue)
        
        return Double(decimaleValue)
    }
    
    /// getFactorialValue
    /// - Parameter number: put the number till which you want factorial
    /// - Returns: factorial value
    public class func getFactorialValue(number: Int) -> Double {
        
        var result:Double = 1
        
        for currentVal in 1...number {
            result *= Double(currentVal)
        }
        
        return result
    }
}
