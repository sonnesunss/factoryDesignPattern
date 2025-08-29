//
//  SimpleFactory.swift
//  factoryDesignPattern
//
//  Created by Dan Dan on 8/30/25.
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

/*

 我们观察一下可以发现，如果需要添加一个Input type，则需要修改InputSimpleFactory简单工厂类，而这显然违背了SOLID原则中的开闭原则
 还有就是所有实例的创建全部集合到了一起，违背了高内聚责任分配原则
 
/*
func Isf(style: InputStyle) -> HTMLInputElement {
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
*/
