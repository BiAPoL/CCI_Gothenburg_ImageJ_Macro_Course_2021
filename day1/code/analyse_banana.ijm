// This ImageJ macro analyses a folder of 2D MRI  
// images showing a banana slice by slice. It measures 
// the area of the banana and writes it in a CSV file. 
// 
// Usage: run it in Fiji (http://fiji.sc) 
// 
// Robert Haase, MPI CBG, rhaase@mpi-cbg.de 
// April 2019 
// 
 
folder = "C:/structure/teaching/lecture_applied_bioimage_analysis_2020/03_Feature_extraction_and_ImageJ_Macro/example_images/banana/"  

// access the folder 
filelist = getFileList(folder); 
 
for (i = 0; i < lengthOf(filelist); i++) { 
	// get the nth entry from the filelist array 
	file = filelist[i]; 
	 
	if (endsWith(file, ".tif")) { 
 
		// open the image 
		open(folder + file); 
 
		// segment the object in the image 
		setAutoThreshold("Otsu dark"); 
		setOption("BlackBackground", true); 
		run("Convert to Mask"); 
		run("Fill Holes"); 
 
		// measure the position of this one single object 
		run("Set Measurements...", "area redirect=None decimal=3"); 
		run("Create Selection"); 
		run("Measure"); 
 
		// close the image 
		close(); 
	} 
} 
 
// save the positions as CSV to disc 
result_filename = "banana_area_by_slice.csv" 
saveAs("Results", folder + result_filename); 
