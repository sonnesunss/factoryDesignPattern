//
//  FactoryMethod.swift
//  factoryDesignPattern
//
//  Created by Dan Dan on 8/30/25.
//

import Foundation


// 定义工厂方法的接口
protocol Reader {
    func read()
}

// 三个具体的类
class JPGReader: Reader {
    func read() {
        print("read jpg")
    }
}

class PNGReader: Reader {
    func read() {
        print("read png")
    }
}

class GIFReader: Reader {
    func read() {
        print("read gif")
    }
}


/*
 1. 对应上面三个具体类的三个用以创建其实例的类、接口，
 2. 其中接口是抽象出来的创建、返回实例的抽象方法
 */
protocol ReaderFactory {
    func createReader() -> Reader
}

class JPGReaderFactory: ReaderFactory {
    func createReader() -> any Reader {
        JPGReader()
    }
}

class PNGReaderFactory: ReaderFactory {
    func createReader() -> any Reader {
        PNGReader()
    }
}

class GIFReaderFactory: ReaderFactory {
    func createReader() -> any Reader {
        GIFReader()
    }
}

/*
 观察一下我们可以发现:  当添加另外一个图片读取器，显然只需要遵循接口、创建实现类、工厂方法类即可， 完全消除了简单工厂模式的缺点
 但是实现上着实很复杂。。。
 
 但其本身也自有其缺点: 实现复杂，不宜于维护，假如某个、多个具体的产品类进行了修改，对应的工厂方法类也需要修改，很麻烦啊
 */
