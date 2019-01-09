/*******************************************
 * Translate a scaled object to a new location
 *******************************************/
 
float x = translation(0.6, 244, 45);
float y = translation(0.6, 165, 465);


///<summary>
/// scale:  the scale factor to build into the translation
/// start:	the original point you want to move
/// end:	the end point you want to move the start to.
///
/// This method will calculate the translation value to move your grouped object
/// given a known start point on the original object, and a desired endpoint for
/// that object.
/// 
/// This method assumes that your code is structured similar to this example
/// Particularly, that the scale() function call comes /before/ the translate()
/// function call in your object drawing procedure.
///</summary>
float translation(float scale, int start, int end)
{
	return (end - (scale * start))/scale;
}

void setup()
{
	size(500, 500);
}

void draw()
{
	background(0,0,0);
	
	// Unscaled
	fill(100,100,255);
	ellipse(244, 165, 50, 50);
	strokeWeight(3);
	stroke(0,128, 196);
	line(244, 165, 144, 65);
	line(144, 65, 344, 65);
	line(344, 65, 344, 265);
	line(344, 265, 144, 365);

	// Scaled and translated.
	pushMatrix();
	scale(0.6);
	translate(x, y);
	fill(100,100,255);
	ellipse(244, 165, 50, 50);
	strokeWeight(3);
	stroke(0,128, 196);
	line(244, 165, 144, 65);
	line(144, 65, 344, 65);
	line(344, 65, 344, 265);
	line(344, 265, 144, 365);
	popMatrix();
}