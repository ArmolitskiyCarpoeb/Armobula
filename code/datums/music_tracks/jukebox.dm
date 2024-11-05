var/global/list/jukebox_music_tracks = list(
	"Beyond" = /decl/music_track/ambispace,
	"Clouds Of Fire" = /decl/music_track/clouds_of_fire
)

/proc/setup_jukebox_music_tracks(var/list/tracks)
	. = list()
	var/track_list = LAZYLEN(tracks) ? tracks : global.jukebox_music_tracks
	for(var/track_name in track_list)
		var/track_path = track_list[track_name]
		. += new/datum/track(track_name, track_path)