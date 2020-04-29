package discordjs;

import haxe.extern.EitherType;
import js.lib.Promise;

@:jsRequire('discord.js', 'MessageManager')
extern class MessageManager extends BaseManager {
	public var channel:TextBasedChannel;
	public function fetch(id:String, cache:Bool = false):Promise<Message>;
	public function delete(id:String, reason:String = ""):Promise<Void>;
}
