package discordjs;

import externs.discordjs.types.MessageOptions;
import js.lib.Promise;
import js.node.events.EventEmitter;

@:jsRequire('discord.js', 'User')
extern class User extends Base implements TextBasedChannel {
	public var lastMessage:Message;
	public var lastPinAt:Date;
	public var typing:Bool;
	public var typingCount:Int;
	public var avatar:String;
	public var bot:Bool;
	public var createdAt:Date;
	public var createdTimestamp:Float;
	public var defaultAvatarURL:String;
	public var id:String;
	public var lastMessageChannelID:String;
	public var tag:String;
	public var username:String;

	public function send(message:String = '', options:MessageOptions = null):Promise<Array<Message>>;
	public function startTyping(count:Int):Promise<Void>;
	public function stopTyping(force:Bool = false):Void;
	public function displayAvatarURL(url_opts:UserImageURLOptions = null):String;
	public function bulkDelete(messages:Collection<String, Message>, filter_old:Bool):Promise<Collection<String, Message>>;
}

typedef UserImageURLOptions = {
	@:optional var format:String;
	@:optional var size:Int;
}
