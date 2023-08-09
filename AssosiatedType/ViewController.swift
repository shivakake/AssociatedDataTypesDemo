//
//  ViewController.swift
//  AssosiatedType
//
//  Created by Kumaran on 08/08/23.
//

import UIKit
import CoreLocation

protocol AssociateTypeDemoProtocol {
    associatedtype DataType // here you can take anythink as datatype
    // associatedtype as like generic datatypes
    var colletion:[DataType] { get set }
    func appendItemToCollection(item: DataType)
}

class ViewController: UIViewController {
    
    var colletion: [DataType] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController : AssociateTypeDemoProtocol {
    
    typealias DataType = String
    
    func appendItemToCollection(item: String) {
        colletion.append(item)
    }
}

class Car: AssociateTypeDemoProtocol {
    
    typealias DataType = Int
    
    var colletion: [Int] = []
    
    func appendItemToCollection(item: Int) {
        colletion.append(item)
    }
}

class Bus: AssociateTypeDemoProtocol {
    
    typealias DataType = Double
    
    var colletion: [Double] = []
    
    func appendItemToCollection(item: Double) {
        colletion.append(item)
    }
}
