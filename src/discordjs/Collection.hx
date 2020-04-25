package discordjs;

import js.lib.Map;

@:jsRequire('discord.js', 'Collection')
extern class Collection<K, V> extends Map<K, V> {}
