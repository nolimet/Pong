package  
{
	import utils.draw.Circle;
	import utils.draw.Squar;
	import utils.movement.staticOrbit;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class testObject extends staticOrbit 
	{
		private var _art:Squar = new Squar(0, 0, 30, 5, 0xff0000);
		
		public function testObject() 
		{
			addChild(_art);
		}
		
	}

}