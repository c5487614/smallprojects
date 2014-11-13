package cn.org.hbca.project.service;

import java.util.List;

import cn.org.hbca.project.model.Dialogitemconfig;

public interface IItemService {
	public boolean insert(Dialogitemconfig record);
	public boolean delete(String id);
	public boolean update(Dialogitemconfig record);
	public Dialogitemconfig selectByItemId(String itemId);
	public List<Dialogitemconfig> selectTop50();
	public List<Dialogitemconfig> selectAll();
}
