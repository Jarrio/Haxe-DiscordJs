package discordjs;

import js.lib.Promise;

@:jsRequire('discord.js', 'Guild')
extern class Guild extends Base {
	public var id:String;
	public var name:String;
	public var available:Bool;
	public var roles:RoleManager;
}
