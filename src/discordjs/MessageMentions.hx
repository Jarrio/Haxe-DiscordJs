package discordjs;

@:jsRequire('discord.js', 'MessageMentions')
extern class MessageMentions {
	public var users:Collection<String, User>;
	public var channels:Collection<String, GuildChannel>;
	public var crosspostedChannels:Collection<String, GuildChannel>;

	// public var members:Collection<String, GuildChannel>;

	/**
	 * [Description]
	 * @param id - Channel, Role or User ID
	 * @param options
	 * @return Bool
	 */
	public function has(id:String, options:MessageMentionsOpts = null):Bool;
}

typedef MessageMentionsOpts = {
	@:optional var ignoreDirect:Bool;
	@:optional var ignoreRoles:Bool;
	@:optional var ignoreEveryone:Bool;
}
