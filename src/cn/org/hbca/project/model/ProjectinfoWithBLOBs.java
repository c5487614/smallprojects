package cn.org.hbca.project.model;

public class ProjectinfoWithBLOBs extends Projectinfo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column projectinfo.IntegrateInterfaceInfo
     *
     * @mbggenerated Thu Nov 13 23:06:13 CST 2014
     */
    private byte[] integrateInterfaceInfo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column projectinfo.IntegrateFunctionsInfo
     *
     * @mbggenerated Thu Nov 13 23:06:13 CST 2014
     */
    private byte[] integrateFunctionsInfo;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column projectinfo.IntegrateInterfaceInfo
     *
     * @return the value of projectinfo.IntegrateInterfaceInfo
     *
     * @mbggenerated Thu Nov 13 23:06:13 CST 2014
     */
    public byte[] getIntegrateInterfaceInfo() {
        return integrateInterfaceInfo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column projectinfo.IntegrateInterfaceInfo
     *
     * @param integrateInterfaceInfo the value for projectinfo.IntegrateInterfaceInfo
     *
     * @mbggenerated Thu Nov 13 23:06:13 CST 2014
     */
    public void setIntegrateInterfaceInfo(byte[] integrateInterfaceInfo) {
        this.integrateInterfaceInfo = integrateInterfaceInfo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column projectinfo.IntegrateFunctionsInfo
     *
     * @return the value of projectinfo.IntegrateFunctionsInfo
     *
     * @mbggenerated Thu Nov 13 23:06:13 CST 2014
     */
    public byte[] getIntegrateFunctionsInfo() {
        return integrateFunctionsInfo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column projectinfo.IntegrateFunctionsInfo
     *
     * @param integrateFunctionsInfo the value for projectinfo.IntegrateFunctionsInfo
     *
     * @mbggenerated Thu Nov 13 23:06:13 CST 2014
     */
    public void setIntegrateFunctionsInfo(byte[] integrateFunctionsInfo) {
        this.integrateFunctionsInfo = integrateFunctionsInfo;
    }
}