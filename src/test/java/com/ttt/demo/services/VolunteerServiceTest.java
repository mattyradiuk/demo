package com.ttt.demo.services;

import com.ttt.demo.beans.VolunteersByJobIdResponse;
import com.ttt.demo.beans.VolunteersListResponse;
import com.ttt.demo.domain.entity.Job;
import com.ttt.demo.domain.entity.JobVolunteer;
import com.ttt.demo.domain.entity.Volunteer;
import com.ttt.demo.domain.repository.JobVolunteerRepository;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MissingServletRequestParameterException;

import java.util.Collections;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class VolunteerServiceTest {

    private final String FIRST_NAME = "matt";
    private final String LAST_NAME = "test";
    private final String JOB_DESC = "developer";
    private final Integer JOB_ID = 1;

    @Rule
    public ExpectedException exceptionRule = ExpectedException.none();

    @Mock
    private JobVolunteerRepository jobVolunteerRepository;
    @InjectMocks
    private VolunteerService volunteerService;

    @Test
    public void whenAllLooksOkCall_thenReturnOk() {
        when(jobVolunteerRepository.findJobVolunteerByJobId(any())).thenReturn(Collections.singletonList(mockJobVolunteer()));

        VolunteersByJobIdResponse response = volunteerService.getVolunteersByJobId(JOB_ID);
        assertEquals(FIRST_NAME + " " + LAST_NAME, response.getVolunteerName().get(0));
        assertEquals(Integer.valueOf(JOB_ID), response.getJobId());
    }

    @Test
    public void whenAllLooksOKCall2_thenReturnOk() {
        Page<JobVolunteer> pages = new PageImpl<>(Collections.singletonList(mockJobVolunteer()));
        when(jobVolunteerRepository.findAll((Pageable) any())).thenReturn(pages);

        List<VolunteersListResponse> response = volunteerService.getVolunteersWithJobDescription(0, 1);
        assertEquals(FIRST_NAME + " " + LAST_NAME, response.get(0).getName());
        assertEquals(JOB_DESC, response.get(0).getPositionDetails());
    }

    @Test
    public void whenAllNotLooksOKCall2_thenReturnOk() {
        exceptionRule.expect(IllegalArgumentException.class);
        exceptionRule.expectMessage("Page index must not be less than zero");

        Page<JobVolunteer> pages = new PageImpl<>(Collections.singletonList(mockJobVolunteer()));
        when(jobVolunteerRepository.findAll((Pageable) any())).thenReturn(pages);

        volunteerService.getVolunteersWithJobDescription(-1, 1);
    }

    private JobVolunteer mockJobVolunteer() {
        JobVolunteer jobVolunteer = new JobVolunteer();
        jobVolunteer.setVolunteer(new Volunteer(FIRST_NAME, LAST_NAME));
        jobVolunteer.setJob(new Job(JOB_DESC));
        return jobVolunteer;
    }
}
