package com.ttt.demo.beans;

import java.io.Serializable;

public class VolunteersListResponse implements Serializable {

    private String name;
    private String positionDetails;

    public VolunteersListResponse() {
    }

    public VolunteersListResponse(String name, String positionDetails) {
        this.name = name;
        this.positionDetails = positionDetails;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPositionDetails() {
        return positionDetails;
    }

    public void setPositionDetails(String positionDetails) {
        this.positionDetails = positionDetails;
    }
}
