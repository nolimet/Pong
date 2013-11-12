package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import utils.draw.Circle;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Main extends Sprite 
	{
		private var test:testObject = new testObject();
		private var origin:Circle = new Circle(Globals.origin.x, Globals.origin.y, 4, 0x000000, 0)
		private var radius:Number = 150;
		private var speed:Number = 1;
		private var updown:Boolean
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, update, false, 0, true);
			// entry point
			addChild(test);
			addChild(origin);
		}
		
		private function update(e:Event):void 
		{
			if (radius < 1)
			{
				updown = false;
			}
			if (radius > 150)
			{
				updown = true;
			}
			switch(updown)
			{
				case true:
					radius -= 0.5;
					speed +=0.05;
					break;
					
				case false:
					radius += 0.5;
					speed -= 0.05;
					break;
			}
			test.Update(radius, speed);
		}
		
	}
	
}