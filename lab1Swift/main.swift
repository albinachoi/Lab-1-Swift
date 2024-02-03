import Foundation


print("Task number 1.")
print("Введите первое число:")
let input1 = readLine() ?? "0"

print("Введите операцию (+, -, *, /):")
let operation = readLine() ?? "+"

print("Введите второе число:")
let input2 = readLine() ?? "0"

print("Введите число которое возводим в квадрат:")
let input3 = readLine() ?? "0"

if let number1 = Double(input1), let number2 = Double(input2), let number3 = Double(input3) {
    var result: Double = 0.0

    switch operation {
    case "+":
        result = number1 + number2
    case "-":
        result = number1 - number2
    case "*":
        result = number1 * number2
    case "/":
        if number2 != 0 {
            result = number1 / number2
        } else {
            print("Ошибка: деление на ноль.")
        }
    default:
        print("Ошибка: неверная операция.")
    }
    print("Результат: \(result)")
    let squareResult3 = pow(number3, 2)
       print("Квадрат третьего числа:  \(squareResult3)")
   }
else {
    print("Ошибка: введены некорректные числа.")
}

print(" ")
print("Task number 2.")

print("1. Введите первую строку: ")
if let string1 = readLine(){
    print("Введите вторую строку:")
    if let string2 = readLine(){
        let result = "\(string1)\(string2)"
        print("Результат объединения: \(result)")
    } else {
        print("Ошибка ввода первой строки.")
    }
}else {
        print("Ошибка ввода второй строки.")
    }

print(" ")
    
print("2. Введите строку для переворота: ")
if let input = readLine(){
    let reverstedString = String(input.reversed())
    print("Результат переворота: \(reverstedString)")
} else {
    print("Ошибка ввода.")
}
print(" ")

print("3. Введите строку для подсчета символов:")
if let input = readLine() {
    let stringWithoutSpaces = input.filter { !$0.isWhitespace }
    let characterCount = stringWithoutSpaces.count
    
    print("Количество символов (без пробелов): \(characterCount)")
} else {
    print("Ошибка ввода.")
}








   
