package com.ttt.demo.beans;

import java.io.Serializable;
import java.util.List;

public class VolunteersByJobIdResponse implements Serializable {

    private static final long serialVersionUID = 3831247553695263089L;

    private Integer jobId;
    private List<String> volunteerName;

    public VolunteersByJobIdResponse(Integer jobId, List<String> volunteerName) {
        this.jobId = jobId;
        this.volunteerName = volunteerName;
    }

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public List<String> getVolunteerName() {
        return volunteerName;
    }

    public void setVolunteerName(List<String> volunteerName) {
        this.volunteerName = volunteerName;
    }

}
