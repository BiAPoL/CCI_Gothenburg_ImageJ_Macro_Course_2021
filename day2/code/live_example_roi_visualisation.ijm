// clean up first
run("Close All");
run("Clear Results");

// open example data
run("Blobs (25K)");

// outline some reagion
makeRectangle(44, 28, 82, 80);

// configure measurement of shape
run("Set Measurements...", "shape redirect=None decimal=3");

// do the measurement
run("Measure");

aspect_ratio = getResult("AR", 0);
print(aspect_ratio);

if (aspect_ratio > 2) {
	Roi.setStrokeColor("green");
} else {
	Roi.setStrokeColor("red");	
}
