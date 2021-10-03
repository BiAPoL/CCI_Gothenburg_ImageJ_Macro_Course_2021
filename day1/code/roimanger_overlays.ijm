// get the number of ROIs in the ROI manager
number_of_rois = roiManager("count") 

// loop over all regions of interest in the ROI manager
for (i = 0; i < number_of_rois; i++) {
	// select an entry in the ROI manager
	roiManager("select", i);

	// change its color
	Roi.setStrokeColor("yellow");

	// store it in the overlay
	Overlay.addSelection();
}


// unselect any ROI
run("Select None");

// turn the image into an RGB image which can be opened 
// in other programs still containing the ROIs
run("Flatten");


