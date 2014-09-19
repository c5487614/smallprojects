package cn.org.hbca.project.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.org.hbca.project.dao.ProjectinfoMapper;
import cn.org.hbca.project.model.ProjectinfoWithBLOBs;
import cn.org.hbca.project.service.IProjectService;

@Service
public class ProjectService implements IProjectService {

	@Autowired
	private ProjectinfoMapper projectMapper;
	

	@Override
	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean select() {
		// TODO Auto-generated method stub
		projectMapper.selectByPrimaryKey("123");
		return false;
	}
	@Override
	public boolean insert(ProjectinfoWithBLOBs record) {
		// TODO Auto-generated method stub
		projectMapper.insert(record);
		return false;
	}

	@Override
	public boolean update(ProjectinfoWithBLOBs model) {
		// TODO Auto-generated method stub
		return false;
	}

}
