package com.project.bean;

public class Experiment {
    private Integer id;

    private String eName;

    private Integer stuNumber;

    private int eResult;

    private String eStatus;

    private String eStep;

    private String eReason;

    private String eTime;

    public TAS getTas() {
        return tas;
    }

    public void setTas(TAS tas) {
        this.tas = tas;
    }

    private TAS tas;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName == null ? null : eName.trim();
    }

    public Integer getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(Integer stuNumber) {
        this.stuNumber = stuNumber;
    }

    public int geteResult() {
        return eResult;
    }

    public void seteResult(int eResult) {
        this.eResult = eResult ;
    }

    public String geteStatus() {
        return eStatus;
    }

    public void seteStatus(String eStatus) {
        this.eStatus = eStatus == null ? null : eStatus.trim();
    }

    public String geteStep() {
        return eStep;
    }

    public void seteStep(String eStep) {
        this.eStep = eStep == null ? null : eStep.trim();
    }

    public String geteReason() {
        return eReason;
    }

    public void seteReason(String eReason) {
        this.eReason = eReason == null ? null : eReason.trim();
    }

    public String geteTime() {
        return eTime;
    }

    public void seteTime(String eTime) {
        this.eTime = eTime == null ? null : eTime.trim();
    }
}