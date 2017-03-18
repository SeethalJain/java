package regular;

class Box
{
	private double width,height,depth;

	public void setWidth(double w)
	{
	width=(w>0)?w:1;
	}
	public void setHeight(double h)
	{
	height=(h>0)?h:1;
	}
	public void setDepth(double d)
	{
	depth=(d>0)?d:1;
	}
	
	public double getWidth()
	{
	return width;
	}
	public double getHeight()
	{
	return height;
	}
	public double getDepth()
	{
	return depth;
	}

	public double volume()
	{
	return width*height*depth;
	}
	
}
