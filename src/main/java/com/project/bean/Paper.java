package com.project.bean;

public class Paper {
    private Integer id;

    private String pName;

    private Integer stuNumber;

    private Integer pProgress;

    private String pStatus;

    private String content;

    private String paper;

    private String pTime;

    private String pAuthor;

    private String reason;

    private TAS tas;

    public TAS getTas() {
        return tas;
    }

    public void setTas(TAS tas) {
        this.tas = tas;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName == null ? null : pName.trim();
    }

    public Integer getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(Integer stuNumber) {
        this.stuNumber = stuNumber;
    }

    public Integer getpProgress() {
        return pProgress;
    }

    public void setpProgress(Integer pProgress) {
        this.pProgress = pProgress;
    }

    public String getpStatus() {
        return pStatus;
    }

    public void setpStatus(String pStatus) {
        this.pStatus = pStatus == null ? null : pStatus.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getPaper() {
        return paper;
    }

    public void setPaper(String paper) {
        this.paper = paper == null ? null : paper.trim();
    }

    public String getpTime() {
        return pTime;
    }

    public void setpTime(String pTime) {
        this.pTime = pTime == null ? null : pTime.trim();
    }

    public String getpAuthor() {
        return pAuthor;
    }

    public void setpAuthor(String pAuthor) {
        this.pAuthor = pAuthor == null ? null : pAuthor.trim();
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }
}