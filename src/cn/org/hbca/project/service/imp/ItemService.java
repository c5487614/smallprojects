package cn.org.hbca.project.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.org.hbca.project.dao.DialogitemconfigMapper;
import cn.org.hbca.project.model.Dialogitemconfig;
import cn.org.hbca.project.model.ProjectinfoWithBLOBs;
import cn.org.hbca.project.service.IItemService;
@Service
public class ItemService implements IItemService{

	@Autowired
	private DialogitemconfigMapper itemMapper;
	
	@Override
	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(Dialogitemconfig record) {
		// TODO Auto-generated method stub
		itemMapper.insert(record);
		return true;
	}

	@Override
	public List<Dialogitemconfig> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Dialogitemconfig selectByItemId(String itemId) {
		// TODO Auto-generated method stub
		
//		itemMapper.selectByExample(example)
		return null;
	}

	@Override
	public List<Dialogitemconfig> selectTop50() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(Dialogitemconfig record) {
		// TODO Auto-generated method stub
		return false;
	}

}
