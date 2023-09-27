package com.ttt.demo.domain.repository;

import com.ttt.demo.domain.entity.JobVolunteer;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface JobVolunteerRepository extends PagingAndSortingRepository<JobVolunteer, Integer> {

    List<JobVolunteer> findJobVolunteerByJobId(Integer jobId);

}
