// This script analyses a time lapse of images showing yeast cells.
// It measures their size and visualises
// cells in different colors depending on their features:
// * red: too small
// * green: others
//
//
// Robert Haase, rhaase@mpi-cbg.de
// May 2019

// open an image from the rounding assay
open("C:/structure/teaching/lecture_applied_bioimage_analysis/05_example_code_and_data/rounding_assay/rounding_assay0004.tif");

// save the window title for later - we want to switch to this image
original_image_title = getTitle();

// duplicate the image and segment it
run("Duplicate...", " ");
setAutoThreshold("Triangle dark");
run("Convert to Mask");
// binary closing
run("Dilate");
run("Dilate");
run("Erode");
run("Erode");

// connected components analysis -> send results to ROI Manager
run("Analyze Particles...", "  show=Nothing add");

// switch back to original image
selectWindow(original_image_title);
roiManager("Show None");

number_of_regions = roiManager("count");
for (i = 0; i < number_of_regions; i++ ) {

	// measure area ( = pixel count)
	run("Set Measurements...", "area redirect=None decimal=3");
	roiManager("Select", i);
	roiManager("Measure");
	pixel_count = getResult("Area", nResults - 1);

	// visualise if ROIs are too small or not
	if (pixel_count > 10) {
		Overlay.addSelection("green");
	} else {
		Overlay.addSelection("red");
	}
}

// clean up after the job is done
if (number_of_regions > 0) {
	roiManager("deselect");
	roiManager("delete");
}
run("Clear Results");

