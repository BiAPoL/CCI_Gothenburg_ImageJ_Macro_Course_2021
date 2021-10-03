// open image
run("Blobs (25K)");

// set default value
outline_thickness = 5;

// open dialog
Dialog.createNonBlocking("Interactive scripting");
Dialog
Dialog.addMessage("Handle this with care.");
Dialog.addSlider("Outline thickness", 1, 10, outline_thickness);

// this will show the dialog on screen
// Dialog.show();

// this is an endless loop. Handle with care!
while (true) {
	// read out dialog
	outline_thickness = Dialog.getNumber();
	print(outline_thickness);

	// segmentation of the inner outline around the blobs
	setAutoThreshold("Default");
	run("Create Selection");
	resetThreshold();
	run("Make Band...", "band=" + outline_thickness);

	
	// wait for a half a second before we continue
	wait(500);
}
