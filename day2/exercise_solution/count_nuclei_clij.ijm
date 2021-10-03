directory = "C:/structure/data/BBBC007_v1_images/A9/"

// init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// clean up first
print("\\Clear");

// go through all folders in the directory
files = getFileList(directory);
for (i = 0; i < lengthOf(files); i++) {
	filename = files[i];
	if (endsWith(filename, "d.tif")) {
		print(filename);

		// Load image from disc 
		open(directory + filename);
		image_1 = getTitle();
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
		number_of_objects = getResult("Max", nResults() - 1);
		print("Number of nuclei:" + number_of_objects);

		// close all images before we analyse the next
		close("*");
	}	
}
