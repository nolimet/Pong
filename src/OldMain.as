package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class OldMain extends Sprite 
	{
		private var test:testObject = new testObject();
		private var radius:Number = 150;
		private var speed:Number = 1;
		private var updown:Boolean;
		public function OldMain():void 
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