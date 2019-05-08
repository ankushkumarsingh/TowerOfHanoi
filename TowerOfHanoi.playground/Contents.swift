//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func towerOfHanoi(noOfDisks: Int,source : String, destination : String, auxiliary : String){
    if noOfDisks == 1 {
        print("moving disk 1 from \(source) to \(destination)")
        return
    }
    
    towerOfHanoi(noOfDisks: noOfDisks - 1, source: source, destination: auxiliary, auxiliary: destination)
    print("moving disk \(noOfDisks) from \(source) to \(destination)")
    towerOfHanoi(noOfDisks: noOfDisks - 1, source: auxiliary, destination: destination, auxiliary: source)
    
}

towerOfHanoi(noOfDisks: 3, source: "Start", destination: "Final", auxiliary: "Temporary")
