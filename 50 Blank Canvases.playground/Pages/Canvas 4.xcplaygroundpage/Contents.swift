//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 800, height: 600)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?
// No borders
canvas.drawShapesWithBorders = false

// Move the origin to the middle of the canvasand
canvas.translate(byX: 400, byY: 300)
// Draw the axes so we can see where we are
canvas.drawAxes()
// Draw a bat relative to the origin
canvas.fillColor = Color.black

canvas.drawLine(fromX: -300, fromY: -300, toX: -80, toY: 150)
canvas.drawLine(fromX: -80, fromY: 150, toX: -50, toY: 50)
canvas.drawLine(fromX: -50, fromY: 50, toX: 50, toY: 50)
canvas.drawLine(fromX: 50, fromY: 50, toX: 80, toY: 150)
canvas.drawLine(fromX: 80, fromY: 150, toX: 300, toY: -300)

// head
canvas.fillColor = Color.black
var headVertices : [NSPoint] = []
headVertices.append(NSPoint(x: -300, y: -300))
headVertices.append(NSPoint(x: -80, y: 150))
headVertices.append(NSPoint(x: -50, y: 50))
headVertices.append(NSPoint(x: 50, y: 50))
headVertices.append(NSPoint(x: 80, y: 150))
headVertices.append(NSPoint(x: 300, y: -300))
headVertices.append(NSPoint(x: -300, y: -300))
canvas.drawCustomShape(with: headVertices)

// eyes
canvas.fillColor = Color.red
canvas.drawRectangle(bottomLeftX: -80, bottomLeftY: -50, width: 30, height: 50)
canvas.drawRectangle(bottomLeftX: 50, bottomLeftY: -50, width: 30, height: 50)

// nose
canvas.drawShapesWithFill
canvas.fillColor = Color.yellow
var noseVertices : [NSPoint] = []
noseVertices.append(NSPoint(x: -30, y: -80))
noseVertices.append(NSPoint(x: 30, y: -80))
noseVertices.append(NSPoint(x: 0, y: -110))
noseVertices.append(NSPoint(x: -30, y: -80))
canvas.drawCustomShape(with: noseVertices)


canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: -100, bottomLeftY: -200, width: 200, height: 50)

// teeth
canvas.drawShapesWithFill
canvas.fillColor = Color.black
var teethVertices : [NSPoint] = []
teethVertices.append(NSPoint(x: -100, y: -150))
teethVertices.append(NSPoint(x: -80, y: -180))
teethVertices.append(NSPoint(x: -50, y: -150))
teethVertices.append(NSPoint(x: -100, y: -150))
canvas.drawCustomShape(with: teethVertices)

//nextteeth
canvas.drawShapesWithFill
canvas.fillColor = Color.black
var nextteethVertices : [NSPoint] = []
nextteethVertices.append(NSPoint(x: 100, y: -150))
nextteethVertices.append(NSPoint(x: 80, y: -180))
nextteethVertices.append(NSPoint(x: 50, y: -150))
nextteethVertices.append(NSPoint(x: 100, y: -150))
canvas.drawCustomShape(with: nextteethVertices)















/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

