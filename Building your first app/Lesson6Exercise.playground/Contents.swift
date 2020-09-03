import UIKit

var str = "Hello, playground"

// 1. Basic Functions
func goodMorning(){
    print("Good Morning")
}
goodMorning()

// 2. Function with Parameters
func printTotalWithTax(subtotal:Double){
    print(subtotal*1.13)
}
printTotalWithTax(subtotal:4000.00)

// 3. Function with Return Value
func getTotalWithTax(subtotal:Double)->Double{
    let total = subtotal*1.13
    return total;
}
var total2 = getTotalWithTax(subtotal: 3000)
print("The total with Tax is \(total2)")

// 4. Function with Two Parameters and Return Value
func calculateTotalWithTax(subtotal:Double, tax:Double)->Double{
    let total = subtotal*tax
    return total
}
let total3 = calculateTotalWithTax(subtotal: 9000, tax: 300)
print("The total calculated is \(total3)")


