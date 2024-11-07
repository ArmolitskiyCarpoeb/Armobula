var/global/list/jukebox_music_tracks = list(
	"Space Oddity" = /decl/music_track/space_oddity
)

/proc/setup_jukebox_music_tracks(var/list/tracks)
	. = list()
	var/track_list = LAZYLEN(tracks) ? tracks : global.jukebox_music_tracks
	for(var/track_name in track_list)
		var/track_path = track_list[track_name]
		. += new/datum/track(track_name, track_path)