package com.musicweb.model.entity;


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@Table(name = "songs", catalog = "musicwebdb")
public class Songs implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int songId;
	private Albums albums;
	private Singers singers;
	private String name;
	private Date releaseDate;
	private Set<Playlists> playlistses = new HashSet<Playlists>(0);

	public Songs() {
	}

	public Songs(int songId, Albums albums, Singers singers, String name, Date releaseDate) {
		this.songId = songId;
		this.albums = albums;
		this.singers = singers;
		this.name = name;
		this.releaseDate = releaseDate;
	}

	public Songs(int songId, Albums albums, Singers singers, String name, Date releaseDate,
			Set<Playlists> playlistses) {
		this.songId = songId;
		this.albums = albums;
		this.singers = singers;
		this.name = name;
		this.releaseDate = releaseDate;
		this.playlistses = playlistses;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "song_id", unique = true, nullable = false)
	public int getSongId() {
		return this.songId;
	}

	public void setSongId(int songId) {
		this.songId = songId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "album_id", nullable = false)
	public Albums getAlbums() {
		return this.albums;
	}

	public void setAlbums(Albums albums) {
		this.albums = albums;
	}

	@ManyToOne(fetch = FetchType.LAZY)
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

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "playlists_songs", catalog = "musicwebdb", joinColumns = {
			@JoinColumn(name = "song_id", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "playlist_id", nullable = false, updatable = false) })
	public Set<Playlists> getPlaylistses() {
		return this.playlistses;
	}

	public void setPlaylistses(Set<Playlists> playlistses) {
		this.playlistses = playlistses;
	}

}
