package discordjs;

import haxe.extern.EitherType;
import js.lib.Promise;

@:jsRequire('discord.js', 'BaseManager')
extern class BaseManager<Key, Value> {
	public var cache:Collection<Key, Value>;
	public function resolve(id:String):EitherType<String, {}>;
	public function resolveID(id:String):String;
}
