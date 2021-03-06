package cn.org.hbca.project.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.org.hbca.project.dao.ProjectinfoMapper;
import cn.org.hbca.project.model.Projectinfo;
import cn.org.hbca.project.model.ProjectinfoExample;
import cn.org.hbca.project.model.ProjectinfoWithBLOBs;
import cn.org.hbca.project.service.IProjectService;

@Service
public class ProjectService implements IProjectService {

	@Autowired
	private ProjectinfoMapper projectMapper;
	

	@Override
	public boolean delete(String projectId) {
		// TODO Auto-generated method stub
		int iEffectLines = -1;
//		ProjectinfoWithBLOBs model = projectMapper.selectByPrimaryKey(projectId);
		ProjectinfoWithBLOBs model = new ProjectinfoWithBLOBs(); 
		model.setProjectId(projectId);
		model.setProjectStatus("d");
		ProjectinfoExample example = new ProjectinfoExample();
//		example.createCriteria().andProjectIdEqualTo(projectId);
//		iEffectLines = projectMapper.deleteByPrimaryKey(projectId);
		
		iEffectLines = projectMapper.updateByPrimaryKey(model);
		return iEffectLines > 0 ? true:false;
	}

	@Override
	public boolean insert(ProjectinfoWithBLOBs record) {
		// TODO Auto-generated method stub
		projectMapper.insert(record);
		return false;
	}

	@Override
	public boolean update(ProjectinfoWithBLOBs record) {
		// TODO Auto-generated method stub
		projectMapper.updateByPrimaryKeyWithBLOBs(record);
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
		example.createCriteria().andProjectStatusNotEqualTo("d");
//		example.createCriteria().andProjectStatusEqualTo("d");
		example.setOrderByClause("ProjectInitDate DESC");
		return projectMapper.selectByExampleWithBLOBs(example);
	}

}
