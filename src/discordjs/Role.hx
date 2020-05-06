package discordjs;

import js.lib.Promise;

@:jsRequire('discord.js', 'Role')
extern class Role extends Base {
	public var id:String;
	public var name:String;
	public var color:Int;
	public var createdAt:Date;
	public var createdTimestamp:Float;
	public var deleted:Bool;
	public var managed:Bool;
	public var editable:Bool;
	public var guild:Guild;
	public var hexColor:String;
	public var hoist:Bool;
	public var mentionable:Bool;
	public var position:Float;
	public var rawPosition:Float;
	public var members:Collection<String, GuildMember>;
}
