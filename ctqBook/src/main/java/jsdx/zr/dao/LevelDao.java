package jsdx.zr.dao;

import java.util.List;
import jsdx.zr.entity.Levels;

public interface LevelDao {
	public Levels findLevelById(int id);
	
	public List<Levels> findAllLevel();
}
