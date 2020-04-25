package discordjs;

import js.lib.Promise;
import js.node.events.EventEmitter;

@:jsRequire('discord.js', 'Client')
extern class Client extends EventEmitter<Client> {
	public var channels:ChannelManager;
	public function new(?options:ClientOptions):Void;
	public function login(token:String):Promise<String>;
	public function on<T>(status:String, callback:T->Void):Void;
}

typedef ClientOptions = {}
