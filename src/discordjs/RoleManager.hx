package discordjs;

import js.lib.Promise;

@:jsRequire('discord.js', 'RoleManager')
extern class RoleManager extends BaseManager<String, Role> {
	public var available:Bool;
	public var guild:Guild;
	public var highest:Role;
}
