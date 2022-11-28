package com.musicweb.model.entity;
// Generated Nov 28, 2022, 2:06:03 PM by Hibernate Tools 4.3.6.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Songs generated by hbm2java
 */
@Entity
@Table(name = "songs", catalog = "heroku_6206d67ecbf53a3")
public class Songs implements java.io.Serializable {

	private Integer songId;
	private Albums albums;
	private Singers singers;
	private String name;
	private Date releaseDate;
	private Set<Playlists> playlistses = new HashSet<Playlists>(0);

	public Songs() {
	}

	public Songs(Albums albums, Singers singers, String name, Date releaseDate) {
		this.albums = albums;
		this.singers = singers;
		this.name = name;
		this.releaseDate = releaseDate;
	}

	public Songs(Albums albums, Singers singers, String name, Date releaseDate, Set<Playlists> playlistses) {
		this.albums = albums;
		this.singers = singers;
		this.name = name;
		this.releaseDate = releaseDate;
		this.playlistses = playlistses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "song_id", unique = true, nullable = false)
	public Integer getSongId() {
		return this.songId;
	}

	public void setSongId(Integer songId) {
		this.songId = songId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "album_id", nullable = false)
	public Albums getAlbums() {
		return this.albums;
	}

	public void setAlbums(Albums albums) {
		this.albums = albums;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "singer_id", nullable = false)
	public Singers getSingers() {
		return this.singers;
	}

	public void setSingers(Singers singers) {
		this.singers = singers;
	}

	@Column(name = "name", nullable = false, length = 20)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "release_date", nullable = false, length = 10)
	public Date getReleaseDate() {
		return this.releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "playlists_songs", catalog = "heroku_6206d67ecbf53a3", joinColumns = {
			@JoinColumn(name = "song_id", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "playlist_id", nullable = false, updatable = false) })
	public Set<Playlists> getPlaylistses() {
		return this.playlistses;
	}

	public void setPlaylistses(Set<Playlists> playlistses) {
		this.playlistses = playlistses;
	}

}
