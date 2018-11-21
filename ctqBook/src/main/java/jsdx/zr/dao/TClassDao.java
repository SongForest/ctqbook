package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.TClass;

public interface TClassDao {

	public List<TClass> findTClass(Map<String, Object> map);

	public TClass findTClassById(int id);
}
