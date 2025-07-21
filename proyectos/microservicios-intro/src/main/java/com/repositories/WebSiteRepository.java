package com.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entities.WebSite;

public interface WebSiteRepository extends JpaRepository<WebSite, Long> {

}
