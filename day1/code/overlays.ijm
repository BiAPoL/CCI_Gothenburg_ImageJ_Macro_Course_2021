run("Close All");

// Draw filled elipses
newImage("Overlays", "8-bit black", 200, 200, 1);
makeOval(11, 12, 59, 58);
Roi.setFillColor(220, 200, 4);
Overlay.addSelection();

// Draw outline elipses
makeOval(40, 92, 46, 41);
Roi.setStrokeColor("Green");
Overlay.addSelection();

// Draw filled elipses, with outline
makeOval(100, 55, 36, 61);
Overlay.addSelection("", 0, "blue");
makeOval(100, 55, 36, 61);
Overlay.addSelection("Cyan", 3);

run("Select None");