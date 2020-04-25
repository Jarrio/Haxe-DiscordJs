package discordjs;

import externs.discordjs.types.MessageOptions;
import haxe.extern.EitherType;
import js.lib.Promise;
import js.node.events.EventEmitter;

@:jsRequire('discord.js', 'Message')
extern class Message extends Base {
	public var id:String;
	public var author:User;
	public var content:String;
	public var cleanContent:String;
	public var url:String;
	public var deletable:Bool;
	public var editable:Bool;
	public var createdAt:Date;
	public var createdTimestamp:Float;
	public var editedAt:Date;
	public var editedTimestamp:Float;
	public var channel:TextChannel;
	public var activity:MessageActivity;
	public var mentions:MessageMentions;
	public function new();
	public function delete(options:DeleteOptions = null):Promise<Message>;
	public function react(emoji:String):Promise<MessageReaction>;
	public function reply(message:EitherType<String, MessageEmbed> = '', options:MessageOptions = null):Promise<Array<Message>>;
}

typedef DeleteOptions = {
	@:optional var timeout:Float;
	@:optional var reason:String;
}
