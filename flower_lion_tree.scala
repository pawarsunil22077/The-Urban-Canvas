// Main object
object TheUrbanCanvas {

  // The canvas on which the user can paint
  val canvas: scala.collection.mutable.ArrayBuffer[Array[Char]] = ArrayBuffer()

  // Paint a single point on the canvas
  def paintPoint(x: Int, y: Int, colour: Char): Unit =
    canvas(y)(x) = colour

  // Paint a single line on the canvas
  def paintLine(startX: Int, startY: Int, endX: Int, endY: Int, colour: Char): Unit = {
    val (startY, startX) = if (startY < endY) (startY, startX) else (endY, endX)

    (startY to endY).foreach {
      y => (startX to endX).foreach {
        x => canvas(y)(x) = colour
      }
    }
  }

  // Paint a single rectangle on the canvas
  def paintRectangle(startX: Int, startY: Int, endX: Int, endY: Int, colour: Char): Unit = {
    val (startY, startX) = if (startY < endY) (startY, startX) else (endY, endX)

    (startY to endY).foreach {
      y => (startX to endX).foreach {
        x => canvas(y)(x) = colour
      }
    }
  }

  // Paint an entire image on the canvas
  def paintImage(image: Array[Array[Char]]): Unit =
    image.zipWithIndex.foreach {
      case (line, i) => line.zipWithIndex.foreach {
        case (pixel, j) => canvas(i)(j) = pixel
      }
    }

  // Fill an area with a certain colour
  def fillArea(startX: Int, startY: Int, colour: Char): Unit = {
    val target = canvas(startY)(startX)

    def markAndTraverse(x: Int, y: Int): Unit = {
      if (x >= 0 && x < canvas(0).length && y >= 0 && y < canvas.length) {
        val actual = canvas(y)(x)
        if (actual == target) {
          canvas(y)(x) = colour
          markAndTraverse(x - 1, y)
          markAndTraverse(x + 1, y)
          markAndTraverse(x, y - 1)
          markAndTraverse(x, y + 1)
        }
      }
    }

    markAndTraverse(startX, startY)
  }

  // Print the canvas
  def printCanvas(): Unit =
    canvas.foreach(line => println(line.mkString(sep = "")))
}