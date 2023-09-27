package com.ttt.demo.controllers;

import com.ttt.demo.beans.VolunteersByJobIdResponse;
import com.ttt.demo.beans.VolunteersListResponse;
import com.ttt.demo.services.VolunteerService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("volunteers")
public class VolunteerController {

    @Resource
    private VolunteerService volunteerService;

    @GetMapping()
    public VolunteersByJobIdResponse getVolunteersByJobId(@RequestParam("job_id") Integer jobId) {
        return volunteerService.getVolunteersByJobId(jobId);
    }

    @GetMapping("/paginated")
    public List<VolunteersListResponse> getVolunteersWithJobDescriptionPaginated(@RequestParam Integer page, @RequestParam("per_page") Integer perPage) {
        return volunteerService.getVolunteersWithJobDescription(page, perPage);
    }
}
