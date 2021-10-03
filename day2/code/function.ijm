// initialize some variables
a = 3;
b = 5;

// do computation with a custom function
c = sum(a, b);

// print out result
print(c);

// we now call an addtional function for getting the 
// mean intensity of the image
mean_intensity = get_mean_intensity_of_image();
print("mean_intensity: " + mean_intensity);


// this function determines the mean intensity of the image
// and returns it
function get_mean_intensity_of_image() {
	getStatistics(area, mean, min, max, std, histogram);	

	return mean;

	print("Hello world!");
	
}



// This functions computes the sum of two numbers
function sum(summand1, summand2) {

	the_sum = summand1 + summand2;
	
	return the_sum;
}





