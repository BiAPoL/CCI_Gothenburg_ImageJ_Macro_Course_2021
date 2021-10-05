close("*");
run("Clear Results");
roiManager("reset");

// open image
open("C:/Users/Rober/Desktop/other_blobs.tif");
original_image = getTitle();

run("Duplicate...", " ");

// filter it
run("Gaussian Blur...", "sigma=1");

// segmentation
setAutoThreshold("Minimum");
setOption("BlackBackground", false);
run("Convert to Mask");

// measurement
run("Set Measurements...", "mean redirect=None decimal=3");
run("Analyze Particles...", "add");
selectWindow(original_image);
roiManager("Measure");
