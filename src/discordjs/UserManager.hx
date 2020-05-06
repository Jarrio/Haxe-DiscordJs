package discordjs;

import haxe.extern.EitherType;
import js.lib.Promise;

@:jsRequire('discord.js', 'UserManager')
extern class UserManager extends BaseManager<String, User> {}
