// initialise program
foldername = "/Users/rhaase/temp/";

// get all files in the folder as list
list = getFileList( foldername );

// print out the list; item by item
for (i = 0; i < list.length; i++) {
    filename = list[i]; 
         
    print( filename );
}
