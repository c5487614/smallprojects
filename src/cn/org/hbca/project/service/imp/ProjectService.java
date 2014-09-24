package cn.org.hbca.project.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.org.hbca.project.dao.ProjectinfoMapper;
import cn.org.hbca.project.model.ProjectinfoWithBLOBs;
import cn.org.hbca.project.model.ProjectinfoExample;
import cn.org.hbca.project.model.ProjectinfoExample.Criteria;
import cn.org.hbca.project.service.IProjectService;

@Service
public class ProjectService implements IProjectService {

	@Autowired
	private ProjectinfoMapper projectMapper;
	

	@Override
	public boolean delete(String id) {
		// TODO Auto-generated method stub
		int iEffectLines = -1;
		iEffectLines = projectMapper.deleteByPrimaryKey(id);
		return iEffectLines>0 ? true:false;
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

	@Override
	public List<ProjectinfoWithBLOBs> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProjectinfoWithBLOBs selectByProjectId(String projectId) {
		// TODO Auto-generated method stub
		return projectMapper.selectByPrimaryKey(projectId);
	}

	@Override
	public List<ProjectinfoWithBLOBs> selectTop50() {
		// TODO Auto-generated method stub
		ProjectinfoExample example = new ProjectinfoExample();
		Criteria c = example.createCriteria();
		example.setOrderByClause("ProjectInitDate DESC");
		return projectMapper.selectByExampleWithBLOBs(example);
	}

}
