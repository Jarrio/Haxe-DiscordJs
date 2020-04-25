package discordjs;

import haxe.extern.EitherType;
import js.lib.Promise;

@:jsRequire('discord.js', 'BaseManager')
extern class BaseManager {
	public var cache:Collection<Dynamic, Dynamic>;
	public function resolve(id:String):EitherType<String, {}>;
	public function resolveID(id:String):String;
}
