// clean up first
// close all images
close("*");
// empty the ROI manager
roiManager("reset");
// empty the results table
run("Clear Results");

// open data set
run("Blobs (25K)");

// keep the original window title in a variable
original_image = getTitle();
// make a copy to screw up
run("Duplicate...", " ");

// blur it a bit to get smooth outlines
run("Gaussian Blur...", "sigma=2");

// segment the image
setAutoThreshold("Default");
setOption("BlackBackground", true);
run("Convert to Mask");

// show outline on original image
run("Create Selection");
selectWindow(original_image);
run("Restore Selection");





