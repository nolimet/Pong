package utils.draw 
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Button extends Sprite 
	{
		private var _art:Squar;
		private var _text:TextField;
		
		public function Button($Height, $Width, $x, $y, $colour:uint, $text:String="",$fontsize:Number=12,$textcolour:uint=0x000000) 
		{
			this.x = $x;
			this.y = $y;
			
			_text.defaultTextFormat = new TextFormat("Arial", $fontsize, $textcolour);
			
			_art = new Squar(0, 0, $Height, $Width, $colour);
			addChild(_art);
			addChild(_text);
		}
		
		public function set text(value:TextField):void 
		{
			_text = value;
		}
		
	}

}