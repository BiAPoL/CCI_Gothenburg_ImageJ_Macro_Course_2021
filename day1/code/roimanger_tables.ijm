// clean up the ROI manager
if (roiManager("count") > 0) {
	roiManager("Deselect");
	roiManager("Delete");
}

// close all images
run("Close All");

// empty results table
run("Clear Results");




// open input data
run("Blobs (25K)");

// set a threshold
setAutoThreshold("Default");

// do connected components analysis
//  -> Save measurements to the table
//  -> Save ROIs to the ROIManager
run("Analyze Particles...", "display add");

// reset the threshold to make the image look normal again
resetThreshold();


// visualise nothing
roiManager("Show None");

number_of_rois = roiManager("count");
for (i = 0; i < number_of_rois; i += 1) {
	// select an ROI
	roiManager("select", i);

	area = getResult("Area", i);
	
	// give it a color
	if (area > 250) {
		Roi.setStrokeColor("green");
	} else {
		Roi.setStrokeColor("magenta");	
	}
	
	// store it in the Overlay
	Overlay.addSelection();

}




















