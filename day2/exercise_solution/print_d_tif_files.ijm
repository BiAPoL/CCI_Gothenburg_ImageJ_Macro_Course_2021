directory = "C:/structure/data/BBBC007_v1_images/A9/"

files = getFileList(directory);

for (i = 0; i < lengthOf(files); i++) {
	filename = files[i];
	if (endsWith(filename, "d.tif")) {
		print(filename);
	}	
}