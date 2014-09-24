package cn.org.hbca.project.model;

public class FunctionUsed {
	private String name;
	private String clientFunctions;
	private String serverFunctions;
	private String other;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClientFunctions() {
		return clientFunctions;
	}
	public void setClientFunctions(String clientFunctions) {
		this.clientFunctions = clientFunctions;
	}
	public String getServerFunctions() {
		return serverFunctions;
	}
	public void setServerFunctions(String serverFunctions) {
		this.serverFunctions = serverFunctions;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
}
