package cn.org.hbca.project.service;

import cn.org.hbca.project.model.ProjectinfoWithBLOBs;

public interface IProjectService {
	public boolean insert(ProjectinfoWithBLOBs record);
	public boolean delete(String id);
	public boolean update(ProjectinfoWithBLOBs record);
	public boolean select();
}
