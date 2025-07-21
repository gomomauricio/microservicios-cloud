package com.controllers;

import java.net.URI;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.entities.Company;
import com.services.CompanyService;

import io.micrometer.core.annotation.Timed;
import io.micrometer.observation.annotation.Observed;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import lombok.extern.java.Log;

@RestController
@AllArgsConstructor
@RequestMapping(path = "company")
@Log
@Tag(name = "Companies resource")
public class CompanyController {

    private final CompanyService companyService;

    @Operation(summary = "get a company given a company name")
    @Observed(name = "company.name")
    @Timed(value = "company.name")
    @GetMapping(path = "{name}") 
    public ResponseEntity<Company> get(@PathVariable String name) {
        log.info("GET: company " + name);
        return ResponseEntity.ok(this.companyService.readByName(name));
    }

    @Operation(summary = "save in DB a company given a company from body") 
    @Observed(name = "company.save")
    @Timed(value = "company.save")   
    @PostMapping
    public ResponseEntity<Company> post(@RequestBody Company company) {
        log.info("Post: company " + company.getName());
        return ResponseEntity.created(
                URI.create(this.companyService.create(company).getName()))
                .build();
    }

    @Operation(summary = "update in DB a company given a company from body")
    @PutMapping(path = "{name}")
    public ResponseEntity<Company> put(@RequestBody Company company,
                                                         @PathVariable String name) {
        log.info("PUT: company " + name);
        return ResponseEntity.ok(this.companyService.update(company, name));
    }

    @Operation(summary = "delete in DB a company given a company name")
    @DeleteMapping(path = "{name}")
    public ResponseEntity<?> delete(@PathVariable String name) {
        log.info("DELETE: company " + name);
        this.companyService.delete(name);
        return ResponseEntity.noContent().build();
    }

}
