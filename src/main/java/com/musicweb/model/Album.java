package com.musicweb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "albums")
public class Album implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "album_id")
	private int album_id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "decription")
	private String decription;
	
	@JoinColumn(name = "singer_id", referencedColumnName = "singer_id")
	@ManyToOne
	private Singer singer_id;

	public Album() {
	}

	public Album(String name, String decription, Singer singer_id) {
		this.name = name;
		this.decription = decription;
		this.singer_id = singer_id;
	}

	public Album(int album_id, String name, String decription, Singer singer_id) {
		this.album_id = album_id;
		this.name = name;
		this.decription = decription;
		this.singer_id = singer_id;
	}

	public int getAlbum_id() {
		return album_id;
	}

	public void setAlbum_id(int album_id) {
		this.album_id = album_id;
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

	public Singer getSinger_id() {
		return singer_id;
	}

	public void setSinger_id(Singer singer_id) {
		this.singer_id = singer_id;
	}

}
