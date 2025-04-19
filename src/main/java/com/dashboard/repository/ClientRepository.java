package com.dashboard.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dashboard.model.Client;

public interface ClientRepository extends JpaRepository<Client, Integer> {}