# Distance-from-SCNVector3
This is a singleton class which will help you to calculate distance between two SCNVector3, can convert to Meter,Centemeter,Feet,Inch

## Usage

 Distance.shared.getDistanceStringBetween(pos1: currentPosition, pos2: start.position)
 
 ### More usage
 var startNode = SCNNode()
 var endNode = SCNNode()
 var measuredText = ""
 
 measuredText.text = Distance.shared.getDistanceStringBetween(pos1: startNode.position, pos2: endNode.position)
 
