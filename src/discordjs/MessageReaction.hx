package discordjs;

import js.lib.Promise;

@:jsRequire('discord.js', 'MessageReaction')
extern class MessageReaction {
	public var client:Client;
	public var count:Int;
	// public var emoji:Int;
	public var me:Bool;
	public var partial:Bool;
	public var message:Message;
	public function fetch():Promise<MessageReaction>;
	public function remove():Promise<MessageReaction>;
}
