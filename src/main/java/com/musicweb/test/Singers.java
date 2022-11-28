package com.musicweb.test;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Singers generated by hbm2java
 */
@Entity
@Table(name = "singers", catalog = "heroku_6206d67ecbf53a3")
public class Singers implements java.io.Serializable {

	private Integer singerId;
	private String name;
	private String decription;
	private Set<Songs> songses = new HashSet<Songs>(0);
	private Set<Albums> albumses = new HashSet<Albums>(0);

	public Singers() {
	}

	public Singers(String name) {
		this.name = name;
	}

	public Singers(String name, String decription, Set<Songs> songses, Set<Albums> albumses) {
		this.name = name;
		this.decription = decription;
		this.songses = songses;
		this.albumses = albumses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "singer_id", unique = true, nullable = false)
	public Integer getSingerId() {
		return this.singerId;
	}

	public void setSingerId(Integer singerId) {
		this.singerId = singerId;
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

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "singers")
	public Set<Songs> getSongses() {
		return this.songses;
	}

	public void setSongses(Set<Songs> songses) {
		this.songses = songses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "singers")
	public Set<Albums> getAlbumses() {
		return this.albumses;
	}

	public void setAlbumses(Set<Albums> albumses) {
		this.albumses = albumses;
	}

}
