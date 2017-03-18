
/*
The standalone interpreter can also load scripts from files and run them.
Just pass the name of the script to wren. Create a file named “my_script.wren”
in your favorite text editor and paste this into it:
*/
for (yPixel in 0...24) {
  var y = yPixel / 12 - 1
  for (xPixel in 0...80) {
    var x = xPixel / 30 - 2
    var x0 = x
    var y0 = y
    var iter = 0
    while (iter < 11 && x0 * x0 + y0 * y0 <= 4) {
      var x1 = (x0 * x0) - (y0 * y0) + x
      var y1 = 2 * x0 * y0 + y
      x0 = x1
      y0 = y1
      iter = iter + 1
    }
    System.write(" .-:;+=xX$& "[iter])
  }
  System.print("")
}
