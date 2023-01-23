




roiManager("Interpolate ROIs");
count = roiManager("count");

getDimensions(width, height, channels, slices, frames);
newImage("Mask", "8-bit black", width, height, slices);

for (roi=0; roi<count; roi++) {
	roiManager("Select", roi);
	selectWindow("Mask");
	run("Draw", "slice"); // Uncomment if Line ROI
	//run("Fill", "slice"); // Uncomment if Filled ROI
}

run("Reslice [/]...", "output=1.000 start=Top avoid");