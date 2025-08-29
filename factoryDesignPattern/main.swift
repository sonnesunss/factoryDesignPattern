//
//  main.swift
//  factoryDesignPattern
//
//  Created by Dan Dan on 8/27/25.
//

import Foundation


// 简单工厂模式使用
var input_style: InputStyle = .submit
var input1 = InputSimpleFactory.createInput(style: input_style)
var input2 = Isf(style: .checkbox)

print(input1)
print(input2)


// 工厂方法使用
// 读取GIF
var factory: ReaderFactory = GIFReaderFactory()
var reader: Reader = factory.createReader()
reader.read()
