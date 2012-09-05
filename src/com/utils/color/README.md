<h1>Colors</h1>
<h2>It's a Color tool that allows randomize between all the colors or only a specific range of tone (RED, GREEN, BLUE) or the HEX code you want</h2>



<p>Randomizing between all colors</p>
	var myColor:Colors = new Colors();
	var a:Sprite;
	stage.addEventListener(MouseEvent.CLICK, addSprites);

	function addSprites(e:MouseEvent):void{
		for(;numChildren;){
			removeChildAt(0);
		}
		for(var i:int = 0; i < 50; i++){
			a = new Sprite();
			a.graphics.beginFill(myColor.randomColor());
			a.graphics.drawRect(Math.random() * stage.stageWidth, Math.random() * stage.stageHeight, 20, 20);
			a.graphics.endFill();
			addChild(a);	
		}	
	}

![ScreenShot](https://raw.github.com/tbwa/AS3-Toolkit/master/assets/colors/colorsRandom.png)


<p>Randomizing between a specific range of colors (BLUE)</p>
	var myColor:Colors = new Colors();
	var a:Sprite;
	stage.addEventListener(MouseEvent.CLICK, addSprites);

	function addSprites(e:MouseEvent):void{
		for(;numChildren;){
			removeChildAt(0);
		}
		for(var i:int = 0; i < 50; i++){
			a = new Sprite();
			a.graphics.beginFill(myColor.randomColor(ColorTone.BLUE));
			a.graphics.drawRect(Math.random() * stage.stageWidth, Math.random() * stage.stageHeight, 20, 20);
			a.graphics.endFill();
			addChild(a);	
		}	
	}

![ScreenShot](https://raw.github.com/tbwa/AS3-Toolkit/master/assets/colors/colorsBlue.png)


<p>Randomizing between a specific range of color using a specify HEX</p>
	var myColor:Colors = new Colors();
	var a:Sprite;
	stage.addEventListener(MouseEvent.CLICK, addSprites);

	function addSprites(e:MouseEvent):void{
		for(;numChildren;){
			removeChildAt(0);
		}
		for(var i:int = 0; i < 50; i++){
			a = new Sprite();
			a.graphics.beginFill(myColor.randomColor("customRange", 0xffea00)); // 0xffea00 is a yellow color, you will see a bunch of different yellow squares 
			a.graphics.drawRect(Math.random() * stage.stageWidth, Math.random() * stage.stageHeight, 20, 20);
			a.graphics.endFill();
			addChild(a);	
		}	
	}

![ScreenShot](https://raw.github.com/tbwa/AS3-Toolkit/master/assets/colors/colorsYellow.png)


	

<h1>Params</h1>

* <strong>@param ColorTone.RED</strong> - String(); Defines a range of RED colors to be randomized.
* <strong>@param ColorTone.GREEN</strong> - String(); Defines a range of GREEN colors to be randomized.
* <strong>@param ColorTone.BLUE</strong> - String(); Defines a range of BLUE colors to be randomized.

<h1>Customization</h1>

* To change the tone to make darker os lighter colors, change the myColorObj values into Colors class.

With all that done, you're good to mess around. Have a nice coding.

------------------------------------------------------------------------------------------------------------------------------
