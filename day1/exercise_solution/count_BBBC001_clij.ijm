// process current image
image_1 = getTitle();

// clean up first
run("Clear Results");

// init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();
Ext.CLIJ2_pushCurrentZStack(image_1);

// Voronoi Otsu Labeling
spot_sigma = 2.5;
outline_sigma = 1.5;
Ext.CLIJ2_voronoiOtsuLabeling(image_1, image_voronoi_otsu_labeling_3, spot_sigma, outline_sigma);
// show labeling result
Ext.CLIJ2_pull(image_voronoi_otsu_labeling_3);
run("glasbey_on_dark");

// clean up memory
Ext.CLIJ2_release(image_1);
Ext.CLIJ2_release(image_voronoi_otsu_labeling_3);

// measure maximum intensity
run("Set Measurements...", "min redirect=None decimal=3");
run("Measure");

// count objects
number_of_objects_clij = getResult("Max", nResults() - 1);
print("Number of nuclei (CLIJ):" + number_of_objects_clij);


// close image before we analyse with the next algorithm
//close();