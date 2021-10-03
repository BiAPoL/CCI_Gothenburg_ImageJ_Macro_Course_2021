// clean up first
run("Clear Results");

// threshold
setAutoThreshold("Default dark");
setOption("BlackBackground", true);
run("Convert to Mask");

// cut touching nuclei
run("Watershed");

// particle analyzer add ROIs to ROI Manager
roiManager("reset");
run("Analyze Particles...", "add");

// count ROIs in ROI Manager
number_of_objects_threshold_watershed = roiManager("count");
print("Number of nuclei (threshold, watershed):" + number_of_objects_threshold_watershed);
roiManager("reset");