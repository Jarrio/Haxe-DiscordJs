package discordjs.types;

import haxe.extern.EitherType;

typedef MessageOptions = {
	@:optional var tts:Bool;
	@:optional var nonce:String;
	@:optional var content:String;
	@:optional var reply:String;
	// @:optional var embed:{};
	// @:optional var allowedMentions:{};
	@:optional var disableMentions:DisableMentionsType;
	// @:optional var files:{};
	@:optional var code:EitherType<String, Bool>;
}

enum abstract DisableMentionsType(String) {
	var all;
	var none;
	var everyone;
}
