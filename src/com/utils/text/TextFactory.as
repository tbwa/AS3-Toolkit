/**
 *
 * @author Marcelo Duende
 * @company TBWA/CHIAT/DAY
 * @license MIT
 * 
 * 
 * @usage
 * 
 * var t:TextFactory = new TextFactory();
 * var tf:TextField = new TextField();
 * tf = t.addText({text:'This is my text', antiAlias:'advanced', width:500, align:"right", style:"bold", size:50, color:0xFF0000});
 * addChild(tf);
 * 
 */

package com.utils.text
{
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	import flashx.textLayout.formats.TextAlign;
	
	public class TextFactory extends TextField
	{
		
		private var t					: TextField 	= new TextField();
		
		private var _text				: String 		= 'You did not specified any text, bubba :)';
		private var _style				: String 		= 'regular';
		private var _align				: String 		= 'left';
		private var _antiAlias			: String 		= 'normal';
		private var _size				: Number 		= 12;
		private var _letterSpacing		: Number		= 0;
		private var _width				: Number		= 0;
		private var _color				: uint 			= 0x000000;
		private var _backgroundColor	: uint 			= 0;
		private var _background			: Boolean		= false;
		private var _selectable			: Boolean		= false;
		
		/**
		 * 
		 * @param text - String(); This is the text to display.
		 * @param style - String(); This is the text's style. It can be pre set accordingly how many styles it has.
		 * @param align -  String(); The alignment of the text. They can be 'left', 'right', 'center' and 'justify'.
		 * @param antiAlias - String(); Defines the antiAlias. They can be 'advanced' and 'normal'.
		 * @param size - Number(); The size of the text. Twelve is the default.
		 * @param letterSpacing - Number(); The space between letters.
		 * @param width - Number(); The width of the text box.
		 * @param color - uint(); The hexa code for the color.
		 * @param backgroundColor - uint(); The hexa code for the backgroundColor.
		 * @param selectable - Boolean(); Defines whether the text will be selectable or not.
		 * @return TextField().
		 * 
		 */		
		public function addText(params:Object):TextField
		{	
			
			resetProperties();
			
			
			var tf:TextFormat 	= new TextFormat();
			
			// check for all the parameters
			checkingParams(params);
			
			// checking alignment
			checkingAlignment();
			
			tf.align = _align;
			
			// checking color
			tf.color = _color;
			
			// checking size
			tf.size = _size;
			
			// checking letter spacing
			tf.letterSpacing = params.letterSpacing;
			
			
			
			// checking font style
			switch(_style){
				case 'bold':
					tf.font = Fonts.bold.fontName;
					break;
				case 'medium':
					tf.font = Fonts.medium.fontName;
					break;
				case 'regular':
					tf.font = Fonts.regular.fontName;
					break;
				case 'italic':
					tf.font = Fonts.italic.fontName;
					break;
				default:
					trace('ATTENTION! wrong style format');
					break;
			}
			
			// checking the text
			t.text = _text;
			
			// checking the width of the box
			if(_width != 0){
				t.width 	= _width;
				t.wordWrap 	= true;
				t.multiline = true;
			} 
			
			// checking antiAlias
			checkingAntialias();
			
			//checking backgroundColor
			checkingBackgroundColor();
			t.background = _background;
			t.backgroundColor = 0xcccccc;
			
			
			t.antiAliasType = _antiAlias;
			
			t.autoSize 		= TextFieldAutoSize.LEFT;
			t.selectable 	= _selectable;
			t.embedFonts 	= true;
			t.setTextFormat(tf);
			
			
			return t;
		}
		
		private function resetProperties():void{
			_text			 = 'You did not specified any text, bubba :)';
			_style			 = 'regular';
			_align			 = 'left';
			_antiAlias		 = 'normal';
			_size			 = 12;
			_letterSpacing	 = 0;
			_width			 = 0;
			_color			 = 0x000000;
			_backgroundColor = 0;
			_background 	 = false;
			_selectable		 = false;
		}
		
		private function checkingBackgroundColor():void{
			if(_backgroundColor != 0){
				_background = true;
			}
		}
		
		private function checkingAntialias():void{
			switch(_antiAlias)
			{
				case 'normal':
					_antiAlias = AntiAliasType.NORMAL;
					break;
				case 'advanced':
					_antiAlias = AntiAliasType.ADVANCED;
					break;
			}
		}
		
		private function checkingAlignment():void{
			switch(_align)
			{
				case 'left':
					_align = TextAlign.LEFT;
					break;
				case 'right':
					_align = TextAlign.RIGHT;
					break;
				case 'center':
					_align = TextAlign.CENTER;
					break;
				case 'justify':
					_align = TextAlign.JUSTIFY;
					break;
			}
			
		}
		
		private function checkingParams(params:Object):void{
			for(var i:* in params){
				switch(i){
					case 'text':
						_text = params.text;
						break;
					case 'color':
						_color = params.color;
						break;
					case 'size':
						_size = params.size;
						break;
					case 'style':
						_style = params.style;
						break;
					case 'letterSpacing':
						_letterSpacing = params.letterSpacing;
						break;
					case 'selectable':
						_selectable = params.selectable;
						break;
					case 'align':
						_align = params.align;
						break;
					case 'width':
						_width = params.width;
						break;
					case 'antiAlias':
						_antiAlias = params.antiAlias;
						break;
					case 'backgroundColor':
						_backgroundColor = params.backgroundColor;
						break;
				}
			}
		}
		
		
	}
}