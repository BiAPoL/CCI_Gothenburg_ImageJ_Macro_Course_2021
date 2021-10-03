path = "C:/structure/teaching/lecture_applied_bioimage_analysis/06_example_code/test.csv";

headline = "Number, number squared";

File.append(headline, path);

for (i = 0; i < 10; i++) {
	contentline = "" + i + ", " + pow(i, 2);
	File.append(contentline, path);
}

