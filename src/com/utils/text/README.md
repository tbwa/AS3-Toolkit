<h1>TextFactory</h1>
<h2>It's a TextField util that allows to add text in one line of code with a bunch of parameters</h2>

	var t:TextFactory = new TextFactory();
	var tf:TextField = new TextField();
	tf = t.addText({text:'This is my text', antiAlias:'advanced', width:500, align:"right", style:"bold", size:50, color:0xFF0000});
	addChild(tf);

<h1>Params</h1>

* <strong>@param text</strong> - String(); This is the text to display.
* <strong>@param style</strong> - String(); This is the text's style. It can be pre set accordingly how many styles it has.
* <strong>@param align</strong> -  String(); The alignment of the text. They can be 'left', 'right', 'center' and 'justify'.
* <strong>@param antiAlias</strong> - String(); Defines the antiAlias. They can be 'advanced' and 'normal'.
* <strong>@param size</strong> - Number(); The size of the text. Twelve is the default.
* <strong>@param letterSpacing</strong> - Number(); The space between letters.
* <strong>@param width</strong> - Number(); The width of the text box.
* <strong>@param color</strong> - uint(); The hexa code for the color.
* <strong>@param backgroundColor</strong> - uint(); The hexa code for the backgroundColor.
* <strong>@param selectable</strong> - Boolean(); Defines whether the text will be selectable or not.
* <strong>@return</strong> TextField().

<h1>Customization</h1>

* To add or remove fonts, you should open the fonts.fla on the lib folder, add your favorite font and export to actionscript at the linkage. Done that, export a .swc overwriting the fonts.swc.
* With the step 1 done, simply open the Fonts.as file and add or remove the fonts you want.
* The last but not least, at TextFacotry.as change the switch at the line 86 where the font names are defined. 

With all that done, you're good to mess around. Have a nice coding.



------------------------------------------------------------------------------------------------------------------------------
