x = newArray(360);
y = newArray(360);

for (i = 0; i < 360; i++) {
	x[i] = i;
	y[i] = sin(i / 180 * PI);
}

Plot.create("Sinus", "Angle / Rad", "Amplitude", x, y);
