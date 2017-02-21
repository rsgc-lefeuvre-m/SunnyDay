//: # Your goal
//: ![goal](scenario.png "Your goal")
/*:
 ## Notes:
 * the image is exactly 500 pixels wide by 400 pixels high
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![assistanteditor](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 500, height: 400)

//Draw Blue Rectangle
canvas.fillColor = Color(hue: 195, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 400, borderWidth: 0)

//Examples of using the remainder operator
// and integer division
9 / 3
9 % 3
17 / 3
17 % 3

// Draw lines
canvas.defaultLineWidth = 5

// Use a loop to do the sun rays

for x in stride(from: 0, through: 500, by: 50) {
    
    
    
    // Choose the color
    if x % 100 == 0 {
        canvas.lineColor = Color.yellow
    } else {
        canvas.lineColor = Color.orange
    }
    
    //Draw the sun ray
    canvas.drawLine(fromX:0, fromY:400,toX:x, toY: 0)
    
    
}

for y in stride(from: 0, through: 400, by: 50) {
    
    // Choose the color
    if y % 100 == 0 {
        canvas.lineColor = Color.yellow
    } else {
        canvas.lineColor = Color.orange
    }
    
    //Draw the sun ray
    canvas.drawLine(fromX:0, fromY:400, toX:500, toY: y)
    
    
    
}

//Draw yellow circle
canvas.fillColor = Color.yellow
canvas.drawShapesWithBorders = false
canvas.drawEllipse(centreX: 0, centreY: 400, width: 80, height: 80)

//Draw white circle (Cloud)
canvas.fillColor = Color.white
canvas.drawShapesWithBorders = false
canvas.drawEllipse(centreX: 480, centreY: 400, width: 100, height: 100)

//Draw 2nd white circle (Cloud)
canvas.fillColor = Color.white
canvas.drawShapesWithBorders = false
canvas.drawEllipse(centreX: 510, centreY: 360, width: 100, height: 100)

//First line of Rainbow
canvas.borderColor = Color.red
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20
canvas.drawEllipse(centreX: 250, centreY: 20, width: 480, height: 350)

//Second line of Rainbow
canvas.borderColor = Color.orange
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20
canvas.drawEllipse(centreX: 250, centreY: 20, width: 440, height: 320)
    
//Third line of Rainbow
canvas.borderColor = Color.yellow
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20
canvas.drawEllipse(centreX: 250, centreY: 20, width: 420, height: 300)


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
