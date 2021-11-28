import UIKit

//Create a Point struct that has two properties called "X" & "Y" both of which are Doubles
struct Point{
    var x: Double
    var y: Double
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
}



//Create a Line struct that has a "Start" and "End" property both of type Point


struct Line {
    var start: Point
    var end: Point
    
    init(start: Point, end: Point){
        self.start = start
        self.end = end
    }
    //In the Line struct add a function to return the Length of the created line as a Double
    mutating func calcLineLength() -> Double{
        let length: Double = (pow((end.x - start.x), 2) + pow((end.y - start.y), 2)).squareRoot()
       // print("the length is \(length)")
        return length
    }
    
}


var line = Line(start: Point(x: 10, y: 15), end: Point(x: 25, y: 34))

var start = line.start

var end = line.end
var length = line.calcLineLength()

print("this is starting point \(start.x) : \(start.y) and the end point is \(end.x) : \(end.y) and the line length is \(length) ")

//line.calcLineLength()

//Create a Triangle Struct that contains a property called "Points" which is an array of type Point


struct Triangle{
    
    var arrPoints : [Point]
    
    init(arrPoints:[Point]){
        self.arrPoints = arrPoints
    }
    mutating func calctriangleArea() -> Double{
        //(Optional) Notice this optional can be quite hard! Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double. -> have no clue if it is correct
        let area = 0.5 * ((arrPoints[1].y + arrPoints[0].y) * (arrPoints[0].x - arrPoints[1].x)) + 0.5 * ((arrPoints[0].y + arrPoints[2].y) * (arrPoints[2].x - arrPoints[0].x)) - 0.5 * ((arrPoints[1].y + arrPoints[2].y) * (arrPoints[2].x - arrPoints[1].x))
        
        return area
    }
}


var triangle = Triangle(arrPoints: [Point(x: 5, y: 2), Point(x: 15, y: 13), Point(x: 20, y: 30)])

var point1 = triangle.arrPoints[0]
print(point1)

var area = triangle.calctriangleArea()

print("the area of the triangle is \(area)")



