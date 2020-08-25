
//
//  Created by Abhijith on 25/08/20.
//  Copyright © 2020 Abhijith. All rights reserved.
//
import UIKit
import SceneKit

class Distance{
    
    //Shared instance
    static let shared = Distance()
    
   init(){}
    
    //MARK:- getDistanceStringBetween
    func getDistanceStringBetween(pos1: SCNVector3,pos2: SCNVector3) -> String {
        
        let distance = self.distanceBetweenPoints(A: pos1, B: pos2)
        var result = ""
        
        let meter = stringValue(v: Float(distance), unit: "Meter")
        result.append(meter)
        //result.append("\n")
        result.append(" / ")
        
        let f = self.footFromMeter(m: Float(distance))
        let feet = self.stringValue(v: Float(f), unit: "Feet")
        result.append(feet)
        //result.append("\n")
        result.append(" / ")
        
        let inch = self.inchFromMeter(m: Float(distance))
        let inches = self.stringValue(v: Float(inch), unit: "Inch")
        result.append(inches)
        //result.append("\n")
        result.append(" / ")
        
        let cm = self.ceneteMeterFromMeter(m: Float(distance))
        let cmString = self.stringValue(v: Float(cm), unit: "Cm")
        result.append(cmString)
        return result
    }
    
    //MARK:- distanceBetweenPoints
     func distanceBetweenPoints(A: SCNVector3, B: SCNVector3) -> CGFloat {
         let l = sqrt((A.x - B.x) * (A.x - B.x) + (A.y - B.y) * (A.y - B.y) + (A.z - B.z) * (A.z - B.z))
         return CGFloat(l)
     }
     
     //MARK:- Conversion
     func stringValue(v: Float, unit: String) -> String {
         return String(format: "%.1f %@", v, unit)
     }
     
     //MARK: inchFromMeter
     func inchFromMeter(m: Float) -> Float {
         return m * 39.3701
     }
     
     //MARK: ceneteMeterFromMeter
     func ceneteMeterFromMeter(m: Float) -> Float {
         return m * 100.0
     }
     
     //MARK: footFromMeter
     func footFromMeter(m:Float) -> Float {
         return m * 3.28084
     }
}


