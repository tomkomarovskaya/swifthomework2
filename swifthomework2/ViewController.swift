//
//  ViewController.swift
//  swifthomework2
//
//  Created by Томик on 3.12.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //универсальные функции сложения, вычитания, умножения и деления (перегрузка функций)
        
        func mathFunc (a: Int, b: Int) -> Int {
            return a + b
        }
        
        func mathFunc (c: Int, d: Int) -> Int {
            return d - c
        }
        
        func mathFunc (a: Double, b: Double) -> Double {
            return a / b        }
        
        func mathFunc (number1: Int, multiply number2: Int) -> Int {
            return number1 * number2
        }
        
        let myLet = mathFunc(a: 4, b: 5)
        print(myLet)
        
        print(mathFunc(c: 4, d: 10))
        
        var resultOfDivision = mathFunc(a: 12.4, b: 2.0)
        print(resultOfDivision)
        
        print(mathFunc(number1: 8, multiply: 8))
        
        //вычислить сумму цифр четырехзначного числа
        
        func digitSum(fourDigit : Int) -> Int {
            var fourDigit = fourDigit
            var sum = 0
            while fourDigit > 0 {
                sum += fourDigit % 10
                fourDigit /= 10
            }
            return sum
        }

        print(digitSum(fourDigit: 1234))
        
        // функция сравнения строк - "авб" больше "ввш"
        
        func compareStrings(stringA: String, stringB: String) -> String {
            if stringA > stringB {
                return "Строка А больше чем строка Б"
            } else {
                return "Строка B больше чем строка А"
            }
        }
        
        print(compareStrings(stringA: "авб", stringB: "ввш"))
        
        //циклический вызов функций - поломать приложение. 
        //приложение поломается, потому что мы не задали условия прерывания вызова функции.
        func countDown(number1: Int) {
            print(number1)
            countDown(number1: number1 - 1)
        }
        countDown(number1: 4)
            
        
        //функция возведения в степень с дефолтным параметром
        func degreeFunc(_ number: Double = 5.0, degree: Double) -> Double {
            let inDegree = pow(number, degree)
            return inDegree
        }
        
        print(degreeFunc(degree: 3.0))
            
        
    }
    
}

