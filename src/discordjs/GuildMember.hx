package discordjs;

import discordjs.types.MessageOptions;
import haxe.extern.EitherType;
import js.lib.Promise;

@:jsRequire('discord.js', 'GuildMember')
extern class GuildMember extends Base implements TextBasedChannel {
	public var roles:GuildMemberRoleManager;
	public var lastMessage:Message;
	public var lastPinAt:Date;
	public var typing:Bool;
	public var typingCount:Int;
	public function send(message:EitherType<String, MessageEmbed> = '', options:MessageOptions = null):Promise<Message>;
	public function startTyping(count:Int):Promise<Void>;
	public function stopTyping(force:Bool = false):Void;
	public function bulkDelete(messages:Collection<String, Message>, filter_old:Bool):Promise<Collection<String, Message>>;
}
