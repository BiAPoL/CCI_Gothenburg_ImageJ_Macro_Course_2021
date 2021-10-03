run("Close All");

// Draw rectangles
newImage("Rectangles", "8-bit black", 200, 200, 1);
makeRectangle(11, 12, 59, 58);
Roi.setFillColor(220, 200, 4);

// Draw elipses
newImage("Ovals", "8-bit black", 200, 200, 1);
makeOval(40, 92, 46, 41);
Roi.setStrokeColor("Green");
Roi.setStrokeWidth(3);

// Draw Text
newImage("Text", "8-bit black", 200, 200, 1);
makeText("Hello", 20, 20);


