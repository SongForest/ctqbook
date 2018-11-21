package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.Ticket;

public interface TicketDao {
	/**
	 * 
	 * @param map
	 * 	书籍id novelid 用户id userid 
	 * @return
	 */
	public List<Ticket> findTicket(Map<String, Integer> map);

	public int add(Ticket ticket);
}
