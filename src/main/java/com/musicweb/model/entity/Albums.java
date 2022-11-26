package com.musicweb.model.entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Albums generated by hbm2java
 */
@Entity
@Table(name = "albums", catalog = "musicwebdb")
public class Albums implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int albumId;
	private Singers singers;
	private String name;
	private String decription;
	private Set<Songs> songses = new HashSet<Songs>(0);

	public Albums() {
	}

	public Albums(int albumId, Singers singers, String name) {
		this.albumId = albumId;
		this.singers = singers;
		this.name = name;
	}

	public Albums(int albumId, Singers singers, String name, String decription, Set<Songs> songses) {
		this.albumId = albumId;
		this.singers = singers;
		this.name = name;
		this.decription = decription;
		this.songses = songses;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "album_id", unique = true, nullable = false)
	public int getAlbumId() {
		return this.albumId;
	}

	public void setAlbumId(int albumId) {
		this.albumId = albumId;
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

	@Column(name = "decription", length = 100)
	public String getDecription() {
		return this.decription;
	}

	public void setDecription(String decription) {
		this.decription = decription;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "albums")
	public Set<Songs> getSongses() {
		return this.songses;
	}

	public void setSongses(Set<Songs> songses) {
		this.songses = songses;
	}

}
