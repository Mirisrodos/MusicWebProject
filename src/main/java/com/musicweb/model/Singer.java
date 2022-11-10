package com.musicweb.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "singers")
public class Singer implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "singer_id")
	private int singer_id;

	@Column(name = "name")
	private String name;
	
	@Column(name = "decription")
	private String decription;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "album_id")
	private List<Album> albumCollection;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "song_id")
	private List<Song> songCollection;

	public Singer() {
		
	}

	public Singer(String name, String decription, List<Album> albumCollection, List<Song> songCollection) {
		this.name = name;
		this.decription = decription;
		this.albumCollection = albumCollection;
		this.songCollection = songCollection;
	}

	public Singer(int singer_id, String name, String decription, List<Album> albumCollection,
			List<Song> songCollection) {
		super();
		this.singer_id = singer_id;
		this.name = name;
		this.decription = decription;
		this.albumCollection = albumCollection;
		this.songCollection = songCollection;
	}

	public int getSinger_id() {
		return singer_id;
	}

	public void setSinger_id(int singer_id) {
		this.singer_id = singer_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDecription() {
		return decription;
	}

	public void setDecription(String decription) {
		this.decription = decription;
	}

	public List<Album> getAlbumCollection() {
		return albumCollection;
	}

	public void setAlbumCollection(List<Album> albumCollection) {
		this.albumCollection = albumCollection;
	}

	public List<Song> getSongCollection() {
		return songCollection;
	}

	public void setSongCollection(List<Song> songCollection) {
		this.songCollection = songCollection;
	}
}
