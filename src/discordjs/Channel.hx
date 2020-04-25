package discordjs;

import js.lib.Promise;

@:jsRequire('discord.js', 'Channel')
extern class Channel extends Base {
	public var id:String;
	public var type:String;
	public var createdAt:Date;
	public var createdTimestamp:Float;
	public var deleted:Bool;

	public function delete():Promise<Channel>;
	public function fetch():Promise<Channel>;
}
