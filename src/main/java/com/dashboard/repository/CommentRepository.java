package com.dashboard.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dashboard.model.Comment;

public interface CommentRepository extends JpaRepository<Comment, Long> {
    List<Comment> findByClientIdOrderByCreatedAtDesc(Integer clientId);
}