package  objects
{
	import utils.movement.staticOrbit;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class testObject extends staticOrbit 
	{
		private var mc:BallArt = new BallArt;
		
		public function testObject() 
		{
			addChild(mc);
		}
		
	}

}