package utils.debug 
{
	import flash.display.Sprite;
	import utils.loaders.SoundPlayer;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class soundLength extends Sprite 
	{
		private var soundLenghtMili:int = 0;
		private var soundLenghtSec: Number = 0;
		private var soundLenghtMin: Number = 0;
		public function soundLength(sound:SoundPlayer) 
		{
			soundLenghtMin = Math.floor(sound.length / 60 / 1000);
			soundLenghtSec = Math.floor(sound.length / 1000) - (soundLenghtMin * 60);
			soundLenghtMili = Math.floor(sound.length) - (((soundLenghtMin * 60) + soundLenghtSec) * 1000)
			trace ("orginen: " + sound.length);
			trace("min: " + soundLenghtMin + " sec: " + soundLenghtSec + " Mili: " + soundLenghtMili);			
		}
		
	}

}