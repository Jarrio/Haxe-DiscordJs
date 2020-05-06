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
	public var id:String;
	public var joinedAt:Date;
	public var joinedTimestamp:Float;
	public var lastMessageID:String;
	public var lastMessageChannelID:String;
	public var name:String;
	public var guild:Guild;
	public var displayName:String;
	public var nickname:String;
	public var user:User;
	public var premiumSince:Date;
	public var premiumSinceTimestamp:Float;
	public var partial:Bool;
	public var manageable:Bool;
	public var available:Bool;
	public var kickable:Bool;
	public var bannable:Bool;
	public var displayColor:Int;
	public var displayHexColor:String;
	public var members:GuildMemberManager;
	public function kick(reason:String = ''):Promise<GuildMember>;
	public function send(message:EitherType<String, MessageEmbed> = '', options:MessageOptions = null):Promise<Message>;
	public function startTyping(count:Int):Promise<Void>;
	public function stopTyping(force:Bool = false):Void;
	public function bulkDelete(messages:Collection<String, Message>, filter_old:Bool):Promise<Collection<String, Message>>;
}
