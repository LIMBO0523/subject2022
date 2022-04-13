package com.project.bean;

public class Reports {
    private Integer id;

    private Integer stuNumber;

    private String submitTime;

    private String thisWeek;

    private String stuProblem;

    private String nextWeek;

    private String reply;

    private String replyTime;

    private Integer taskNumber;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(Integer stuNumber) {
        this.stuNumber = stuNumber;
    }

    public String getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(String submitTime) {
        this.submitTime = submitTime == null ? null : submitTime.trim();
    }

    public String getThisWeek() {
        return thisWeek;
    }

    public void setThisWeek(String thisWeek) {
        this.thisWeek = thisWeek == null ? null : thisWeek.trim();
    }

    public String getStuProblem() {
        return stuProblem;
    }

    public void setStuProblem(String stuProblem) {
        this.stuProblem = stuProblem == null ? null : stuProblem.trim();
    }

    public String getNextWeek() {
        return nextWeek;
    }

    public void setNextWeek(String nextWeek) {
        this.nextWeek = nextWeek == null ? null : nextWeek.trim();
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply == null ? null : reply.trim();
    }

    public String getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(String replyTime) {
        this.replyTime = replyTime == null ? null : replyTime.trim();
    }

    public Integer getTaskNumber() {
        return taskNumber;
    }

    public void setTaskNumber(Integer taskNumber) {
        this.taskNumber = taskNumber;
    }
}