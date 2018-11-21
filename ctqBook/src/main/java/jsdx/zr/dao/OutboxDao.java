package jsdx.zr.dao;

import java.util.List;

import jsdx.zr.entity.Outbox;

public interface OutboxDao {
	public int add(Outbox outbox);
	
	public List<Outbox>findAll();
}
