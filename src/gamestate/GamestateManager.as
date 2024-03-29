package gamestate 
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Kevin Breurken
	 */
	public class GamestateManager extends MovieClip
	{
		public var currentstate:MovieClip;
		public function GamestateManager() 
		{
			
		}
		public function switchGamestate(name:String):void {
			trace("Change gamestate to: " + name );
			switch(name) {
				
				case "Menu":
					currentstate = new Menu(this);
				break;
				case "Game":
					currentstate = new Game(this);
				break;
				case "Credits":
					currentstate = new Credits(this);
				break;
			}
			addChild(currentstate);
		}
		
	}

}