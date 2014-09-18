package cn.org.hbca.project.controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.org.hbca.project.MyApplicationContext;
import cn.org.hbca.project.model.ProjectinfoWithBLOBs;
import cn.org.hbca.project.service.imp.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	@Autowired
	ProjectService projectService;
	@RequestMapping(value = "/hello.do")
    public @ResponseBody String hello() {
		return "{result:'测试ABC'}";
    }
	
	@RequestMapping(value = "/save.do")
    public @ResponseBody String save(
    		@RequestParam("hf_functions") String hf_functions,
    		@RequestParam("hf_interfaces") String hf_interfaces,
    		@RequestParam("hf_projectId") String hf_projectId,
    		@RequestParam("tbox_MPDContact") String tbox_MPDContact,
    		@RequestParam("tbox_MPMContact") String tbox_MPMContact,
    		@RequestParam("tbox_MProjectDev") String tbox_MProjectDev,
    		@RequestParam("tbox_MProjectManager") String tbox_MProjectManager,
    		@RequestParam("tbox_MProjectName") String tbox_MProjectName,
    		@RequestParam("tbox_SVSServerType") String tbox_SVSServerType,
    		@RequestParam("tbox_TSSServerType") String tbox_TSSServerType,
    		@RequestParam("tbox_actualAcceptDate") @DateTimeFormat(pattern="yyyy-MM-dd") Date tbox_actualAcceptDate,
    		@RequestParam("tbox_actualDevDate") @DateTimeFormat(pattern="yyyy-MM-dd") Date tbox_actualDevDate,
    		@RequestParam("tbox_clientE") String tbox_clientE,
    		@RequestParam("tbox_devTech") String tbox_devTech,
    		@RequestParam("tbox_encryptFileLimit") String tbox_encryptFileLimit,
    		@RequestParam("tbox_functionNeededIntegrate") String tbox_functionNeededIntegrate,
    		@RequestParam(value="tbox_keepEncryptKey",required=false) String tbox_keepEncryptKey,
    		@RequestParam(value="tbox_increaseIssue",required=false) String tbox_increaseIssue,
    		@RequestParam("tbox_keyManufacture") String tbox_keyManufacture,
    		@RequestParam("tbox_manufactureName") String tbox_manufactureName,
    		@RequestParam("tbox_multiOperation") String tbox_multiOperation,
    		@RequestParam("tbox_network") String tbox_network,
    		@RequestParam("tbox_planAcceptDate") @DateTimeFormat(pattern="yyyy-MM-dd") Date tbox_planAcceptDate,
    		@RequestParam("tbox_planDevDate") @DateTimeFormat(pattern="yyyy-MM-dd") Date tbox_planDevDate,
    		@RequestParam("tbox_projectCdoe") String tbox_projectCdoe,
    		@RequestParam("tbox_projectManager") String tbox_projectManager,
    		@RequestParam("tbox_projectName") String tbox_projectName,
    		@RequestParam("tbox_sealType") String tbox_sealType,
    		@RequestParam("tbox_serverE") String tbox_serverE
    		) throws UnsupportedEncodingException {
		ProjectinfoWithBLOBs model = new ProjectinfoWithBLOBs();
		System.out.println(tbox_actualAcceptDate);
		model.setActualAcceptDate(tbox_actualAcceptDate);
		model.setActualDevStartDate(tbox_actualDevDate);
		model.setClientEnvironment(tbox_clientE);
		model.setDevTech(tbox_devTech);
		model.setEncryptFileLimit(tbox_encryptFileLimit);
		model.setFunctionsNeededIntegrate(tbox_functionNeededIntegrate);
		model.setIncreaseIssue(tbox_increaseIssue);
		model.setIntegrateFunctionsInfo(hf_functions.getBytes("UTF-8"));
		model.setIntegrateInterfaceInfo(hf_interfaces.getBytes("UTF-8"));
		model.setKeepEncryptKey(true);
		if(tbox_keepEncryptKey==null){
			model.setKeepEncryptKey(false);
		}
		model.setKeyManufacture(tbox_keyManufacture);
		model.setManufacturerName(tbox_manufactureName);
		model.setManufacturerProjectDeveloper(tbox_MProjectDev);
		model.setManufacturerProjectManager(tbox_MProjectManager);
		model.setManufacturerProjectName(tbox_MProjectName);
		model.setMPDContact(tbox_MPDContact);
		model.setMPMContact(tbox_MPMContact);
		model.setMultiOperation(tbox_multiOperation);
		model.setNetWorkEnvironment(tbox_network);
		model.setOtherEnvironment("");
		model.setPlanAcceptDate(tbox_planAcceptDate);
		model.setPlanDevStartDate(tbox_planDevDate);
		model.setProjectCode(tbox_projectCdoe);
		model.setProjectId(hf_projectId);
		model.setProjectManager(tbox_projectManager);
		model.setProjectName(tbox_projectName);
		model.setSealType(tbox_sealType);
		model.setServerEnvironment(tbox_serverE);
		model.setSVSServerType(tbox_SVSServerType);
		model.setTSSServerType(tbox_TSSServerType);
		//MyApplicationContext.getContext()
		
		projectService.insert(model);
		return "{result:'测试ABC'}";
    }
}
