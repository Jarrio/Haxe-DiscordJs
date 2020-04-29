package discordjs;

import js.lib.Promise;

@:jsRequire('discord.js', 'Role')
extern class Role extends Base {
	public var id:String;
	public var name:String;
}
