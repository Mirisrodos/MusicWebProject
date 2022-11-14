package com.musicweb.model.dao;

public interface GenericDAO<E> {
	public E insert(E e);
	public E update(E e);
	public E delete(E e);
	public E select(int id);
}