//
//  main.swift
//  factoryDesignPattern
//
//  Created by Dan Dan on 8/27/25.
//

import Foundation


/* 定义 */
enum InputStyle {
    case button           // 每个case表示一种具体类型，使用一个类或者结构体实现
    case checkbox
    case password
    case submit
    case radio
    case range
}

protocol HTMLInputElement { }

class InputButton:   HTMLInputElement { }
class InputCheckbox: HTMLInputElement { }
class InputPassword: HTMLInputElement { }
class InputSubmit:   HTMLInputElement { }
class InputRadio:    HTMLInputElement { }
class InputRange:    HTMLInputElement { }

// 简单工厂类 -- 使用这个类创建不同的具体类型实例
class InputSimpleFactory {
    class func createInput(style: InputStyle) -> HTMLInputElement {
        switch style {
            case .button:
                return InputButton()
            case .checkbox:
                return InputCheckbox()
            case .password:
                return InputPassword()
            case .submit:
                return InputSubmit()
            case .radio:
                return InputRadio()
            case .range:
                return InputRange()
        }
    }
}


// 使用
var input_style: InputStyle = .submit
var input1 = InputSimpleFactory.createInput(style: input_style)
print(input1)
