package discordjs;

import js.lib.Promise;

@:jsRequire('discord.js', 'GuildMemberManager')
extern class GuildMemberManager extends BaseManager<String, GuildMember> {
	@:overload(function(id:String):Promise<GuildMember> {})
	public function fetch():Promise<Collection<String, GuildMember>>;
}
