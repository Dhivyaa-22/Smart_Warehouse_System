package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ComponentRepository extends JpaRepository<Component, Integer> {
	Component findByCmdid(String com_id);
}
