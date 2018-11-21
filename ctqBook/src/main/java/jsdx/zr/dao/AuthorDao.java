package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.Author;

public interface AuthorDao {

	public List<Author> findAuthorByName(Map<String, Object>map);
	
	public Author findAuthorById(int id);
	
	public int add(Author author);
}
