package com.project.bean;

public class Megs {
    private Integer id;

    private String context;

    private Integer mSender;

    private Integer mRecipient;

    private String mTime;

    private String mStatus;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context == null ? null : context.trim();
    }

    public Integer getmSender() {
        return mSender;
    }

    public void setmSender(Integer mSender) {
        this.mSender = mSender;
    }

    public Integer getmRecipient() {
        return mRecipient;
    }

    public void setmRecipient(Integer mRecipient) {
        this.mRecipient = mRecipient;
    }

    public String getmTime() {
        return mTime;
    }

    public void setmTime(String mTime) {
        this.mTime = mTime == null ? null : mTime.trim();
    }

    public String getmStatus() {
        return mStatus;
    }

    public void setmStatus(String mStatus) {
        this.mStatus = mStatus == null ? null : mStatus.trim();
    }
}