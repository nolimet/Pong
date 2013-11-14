package objects 
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Ball extends MovieClip
	{
		private var mc:MovieClip = new BallArt();
		public function Ball() 
		{
			addChild(mc);
		}
		
	}

}