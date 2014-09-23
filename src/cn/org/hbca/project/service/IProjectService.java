package cn.org.hbca.project.service;

import java.util.List;

import cn.org.hbca.project.model.ProjectinfoWithBLOBs;

public interface IProjectService {
	public boolean insert(ProjectinfoWithBLOBs record);
	public boolean delete(String id);
	public boolean update(ProjectinfoWithBLOBs record);
	public ProjectinfoWithBLOBs selectByProjectId(String projectId);
	public List<ProjectinfoWithBLOBs> selectTop50();
	public List<ProjectinfoWithBLOBs> selectAll();
}
