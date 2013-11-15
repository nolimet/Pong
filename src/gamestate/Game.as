package gamestate 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import objects.testObject;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Game extends MovieClip
	{
		private var _gamestatemanager:GamestateManager;
		private var _test:testObject = new testObject();
		private var _radius:Number = 150;
		private var _speed:Number = 1;
		private var _updown:Boolean;
		private var _
		public function Game(manager:GamestateManager) 
		{
			_gamestatemanager = manager;
			addChild(_test);
		}
		
		private function update(e:Event):void 
		{
			if (_radius < 1)
			{
				_updown = false;
			}
			if (_radius > 150)
			{
				_updown = true;
			}
			switch(_updown)
			{
				case true:
					_radius -= 0.5;
					_speed +=0.05;
					break;
					
				case false:
					_radius += 0.5;
					_speed -= 0.05;
					break;
			}
			test.Update(_radius, _speed);
		}
	}

}