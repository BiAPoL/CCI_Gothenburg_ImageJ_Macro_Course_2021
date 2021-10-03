// initialise program
imageFilename = "blobs.gif";
open( imageFilename );

// get image statistics 
getStatistics(area, mean, min, max, std);

// show results
print("The grey value ranges from " + min + " to " + max + ". ");
print("It has an average of " + mean + " +- " + std + ". ");

close();

