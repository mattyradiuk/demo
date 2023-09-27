package com.ttt.demo.services;

import com.ttt.demo.beans.VolunteersByJobIdResponse;
import com.ttt.demo.beans.VolunteersListResponse;
import com.ttt.demo.domain.entity.JobVolunteer;
import com.ttt.demo.domain.repository.JobVolunteerRepository;
import jakarta.annotation.Resource;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class VolunteerService {

    @Resource
    private JobVolunteerRepository jobVolunteerRepository;

    public VolunteersByJobIdResponse getVolunteersByJobId(Integer id) {
        List<JobVolunteer> volunteers = jobVolunteerRepository.findJobVolunteerByJobId(id);
        VolunteersByJobIdResponse response = formatVolunteersByJobIdResponse(volunteers);
        response.setJobId(id);
        return response;
    }

    public List<VolunteersListResponse> getVolunteersWithJobDescription(Integer page, Integer perPage) {
        List<JobVolunteer> volunteers = new ArrayList<>();
        Pageable pageData = PageRequest.of(page, perPage);
        jobVolunteerRepository.findAll(pageData).iterator().forEachRemaining(volunteers::add);

        return formatVolunteersListResponse(volunteers);
    }

    private VolunteersByJobIdResponse formatVolunteersByJobIdResponse(List<JobVolunteer> volunteers) {
        List<String> names = new ArrayList<>();
        for (JobVolunteer volunteer : volunteers) {
            names.add(getFullName(volunteer));
        }
        return new VolunteersByJobIdResponse(null, names);
    }

    private List<VolunteersListResponse> formatVolunteersListResponse(List<JobVolunteer> volunteers) {
        List<VolunteersListResponse> response = new ArrayList<>();
        for (JobVolunteer volunteer : volunteers) {
            response.add(new VolunteersListResponse(getFullName(volunteer), volunteer.getJob().getDescription()));
        }
        return response;
    }

    private String getFullName(JobVolunteer volunteer) {
        return volunteer.getVolunteer().getFirstName() + " " + volunteer.getVolunteer().getLastName();
    }
}
