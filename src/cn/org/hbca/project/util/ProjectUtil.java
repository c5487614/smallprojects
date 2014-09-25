package cn.org.hbca.project.util;

import cn.org.hbca.project.model.FunctionUsed;
import cn.org.hbca.project.model.InterfaceUsed;

public class ProjectUtil {
	public static InterfaceUsed reserveInterface(String value){
		String[] values = value.split("\\|");
		InterfaceUsed model = new InterfaceUsed();
		if(values.length>1){
			model.setName(values[0]);
			model.setVersion(values[1]);
			model.setSignDate(values[2]);
			if(values.length>=4){
				model.setOther(values[3]);
			}
			return model;
		}
		return null;
	}
	public static FunctionUsed reserveFunctions(String value){
		String[] values = value.split("\\|");
		FunctionUsed model = new FunctionUsed();
		if(values.length>1){
			model.setName(values[0]);
			model.setClientFunctions(values[1]);
			model.setServerFunctions(values[2]);
			model.setOther(values[3]);
			return model;
		}
		return null;
	}
}
