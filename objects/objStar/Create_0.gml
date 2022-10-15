var s = random_range(.1, 3);
image_xscale = s;
image_yscale = s;

do{
	xs = random_range(-6, 6);
	ys = random_range(-6, 6);	
} until (xs != 0 || ys != 0);

image_alpha = random_range(0, .6);


x += xs * 4;
y += ys * 4;