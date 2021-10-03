// Define two arrays with 5 elements
x_values = newArray(5);
y_values = newArray(5);

// put some numbers in these 2x5 array elements
x_values[0] = 10;
y_values[0] = 1;

x_values[1] = 20;
y_values[1] = 1.2;

x_values[2] = 30;
y_values[2] = 1.3;

x_values[3] = 40;
y_values[3] = 1.3;

x_values[4] = 50;
y_values[4] = 1.1;

Plot.create("Title", "X-axis Label", "Y-axis Label", x_values, y_values);
Plot.show();
