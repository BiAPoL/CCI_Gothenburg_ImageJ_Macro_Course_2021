// initialise program
imageFilename = "blobs.gif";
open( imageFilename );

// read image properties
width = getWidth();
height = getHeight();
getPixelSize(unit, pixelWidth, pixelHeight);

// show results
print("The image is " + width + " times " + height + " pixels wide");
print("Each pixels has a size of " + pixelWidth + 
      " times " + pixelHeight + " " + unit + "^2");

close();
