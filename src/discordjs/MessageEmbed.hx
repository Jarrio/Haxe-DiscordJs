package discordjs;

import discordjs.types.MessageOptions;
import haxe.extern.EitherType;
import haxe.extern.Rest;
import js.lib.Promise;
import js.node.events.EventEmitter;

@:jsRequire('discord.js', 'MessageEmbed')
extern class MessageEmbed {
	public var id:String;
	public var author:User;
	public var color:Float;
	public var description:String;
	public var timestamp:Float;
	public var createdAt:Float;
	public var fields:Array<EmbedField>;
	public var footer:MessageEmbedFooter;
	public var length:Float;
	public var title:String;
	public var type:MessageEmbedType;
	public var url:String;
	public function new();
	public function addField(name:String, value:String, is_inline:Bool = false):MessageEmbed;
	public function addFields(value:Rest<EmbedFieldData>):Promise<MessageReaction>;
	public function setAuthor(name:String, iconURL:String = null, url:String = null):Promise<Array<Message>>;
	public function setColor(color:ColorResolvable):Promise<Array<Message>>;
	public function setTitle(title:String):MessageEmbed;
	public function setDescription(description:String):MessageEmbed;
	public function setFooter(text:String, iconURL:String = null):MessageEmbed;
	public function setUrl(url:String):MessageEmbed;
	public function setImage(url:String):MessageEmbed;
	public function setThumbnail(url:String):MessageEmbed;
	public function setTimestamp(date:EitherType<Date, Float>):MessageEmbed;
}

typedef EmbedFieldData = EmbedField;

typedef EmbedField = {
	@:optional var name:String;
	@:optional var value:String;
}

typedef MessageEmbedFooter = {
	@:optional var text:String;
	@:optional var iconURL:String;
	@:optional var proxyIconURL:String;
}

enum abstract MessageEmbedType(String) {
	var rich;
	var image;
	var video;
	var gifv;
	var article;
	var link;
}

typedef ColorResolvable = EitherType<Float, ColorResolvableData>;

enum abstract ColorResolvableData(String) {
	var DEFAULT;
	var WHITE;
	var AQUA;
	var GREEN;
	var BLUE;
	var YELLOW;
	var PURPLE;
	var LUMINOUS_VIVID_PINK;
	var GOLD;
	var ORANGE;
	var RED;
	var GREY;
	var DARKER_GREY;
	var NAVY;
	var DARK_AQUA;
	var DARK_GREEN;
	var DARK_BLUE;
	var DARK_PURPLE;
	var DARK_VIVID_PINK;
	var DARK_GOLD;
	var DARK_ORANGE;
	var DARK_RED;
	var DARK_GREY;
	var LIGHT_GREY;
	var DARK_NAVY;
	var RANDOM;
}
