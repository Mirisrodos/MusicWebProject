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
@Table(name = "users")
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
    private int user_id;
	
	@Column(name = "account")
	private String account;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "type")
	private int type;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "user_id")
	private List<Playlist> playlistCollection;

	public User() {
		
	}
	
	public User(String account, String password, String name, int type, List<Playlist> playlistCollection) {
		super();
		this.account = account;
		this.password = password;
		this.name = name;
		this.type = type;
		this.playlistCollection = playlistCollection;
	}



	public User(int user_id, String account, String password, String name, int type,
			List<Playlist> playlistCollection) {
		super();
		this.user_id = user_id;
		this.account = account;
		this.password = password;
		this.name = name;
		this.type = type;
		this.playlistCollection = playlistCollection;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public List<Playlist> getPlaylistCollection() {
		return playlistCollection;
	}

	public void setPlaylistCollection(List<Playlist> playlistCollection) {
		this.playlistCollection = playlistCollection;
	}
	
}
