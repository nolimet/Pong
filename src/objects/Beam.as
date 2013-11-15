package objects 
{
	import utils.draw.Squar;
	import utils.movement.staticOrbit;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Beam  extends staticOrbit
	{
		private var _art:Squar= new Squar(0, 0, 4, 20, 0x00ff00);
		public function Beam($startRadius:Number, $startAngle:Number)
		{
			radius = $startRadius;
			angle = $startAngle;
		}
		
	}

}