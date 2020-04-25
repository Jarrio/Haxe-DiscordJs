package discordjs;

import js.lib.Promise;

@:jsRequire('discord.js', 'ChannelManager')
extern class ChannelManager extends BaseManager {
	public function fetch(id:String, cache:Bool):Promise<Channel>;
}
