package gamestate 
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Kevin Breurken
	 */
	public class Menu extends MovieClip
	{
		private var gamestatemanager:GamestateManager;
		
		private var menubackground:MenuBackground = new MenuBackground;
		private var startbutton:StartButton = new StartButton;
		private var optionsbutton:OptionsButton = new OptionsButton;
		private var creditsbutton:CreditsButton = new CreditsButton;
		
		public function Menu(manager:GamestateManager) 
		{
			gamestatemanager = manager;
			
			addChild(menubackground);
			addChild(startbutton);
			addChild(optionsbutton);
			addChild(creditsbutton);
			
			setPosition(startbutton, 100, 50);
			setPosition(optionsbutton, 100, 150);
			setPosition(creditsbutton, 100, 250);
			
			startbutton.addEventListener(MouseEvent.CLICK, openGame);
			optionsbutton.addEventListener(MouseEvent.CLICK, openOptions);
			creditsbutton.addEventListener(MouseEvent.CLICK, openCredits);
		}
		public function openGame(e:MouseEvent):void 
		{
			while (this.numChildren > 0){ this.removeChildAt(0); }
			gamestatemanager.switchGamestate("Game");
		}
		public function openCredits(e:MouseEvent):void 
		{
			gamestatemanager.switchGamestate("Credits");
		}
		public function openOptions(e:MouseEvent):void 
		{
			gamestatemanager.switchGamestate("Options");
		}
		public function setPosition(mc:MovieClip, x:int, y:int):void 
		{
			mc.x = x;
			mc.y = y;
		}
	}

}