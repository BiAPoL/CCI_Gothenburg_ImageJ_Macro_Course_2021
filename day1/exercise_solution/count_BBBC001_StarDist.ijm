// process current image
image_1 = getTitle();

// clean up first
roiManager("reset");

// run StarDist
run("Command From Macro", "command=[de.csbdresden.stardist.StarDist2D], args=['input':'" + image_1 + "', 'modelChoice':'Versatile (fluorescent nuclei)', 'normalizeInput':'true', 'percentileBottom':'1.0', 'percentileTop':'99.8', 'probThresh':'0.5', 'nmsThresh':'0.4', 'outputType':'ROI Manager', 'nTiles':'1', 'excludeBoundary':'2', 'roiPosition':'Automatic', 'verbose':'false', 'showCsbdeepProgress':'false', 'showProbAndDist':'false'], process=[false]");

// count ROIs
number_of_objects_stardist = roiManager("count");
print("Number of nuclei (StarDist):" + number_of_objects_stardist);