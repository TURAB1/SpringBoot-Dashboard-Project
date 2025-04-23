package com.dashboard.controller;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dashboard.model.Client;
import com.dashboard.model.Comment;
import com.dashboard.repository.ClientRepository;
import com.dashboard.repository.CommentRepository;

@Controller
public class CommentController {
	@Autowired
	private CommentRepository commentRepository;
	@Autowired
	private ClientRepository clientRepository;
	
	 

	@PostMapping("/client/{id}/comment")
	public String postComment(@PathVariable Integer id, @RequestParam String content) {
	    Comment comment = new Comment();
	    comment.setClient(new Client(id)); 
	    comment.setContent(content);
	    comment.setCreatedAt(new Timestamp(System.currentTimeMillis()));
	    commentRepository.save(comment);
	    return "redirect:/view"+id;
	}
	
	@GetMapping("/view{id}")
	public String viewClient(@PathVariable Integer id, Model model) {
	    Client client = clientRepository.findById(id).orElseThrow();
	    List<Comment> comments = commentRepository.findByClientIdOrderByCreatedAtDesc(id);
	    model.addAttribute("client", client);
	    model.addAttribute("comments", comments);
	    return "viewClient";
	}
	
	@GetMapping("/comment/{commentId}/delete")
	public String deleteComment(@PathVariable Long commentId,
	                            @RequestParam Integer clientId) {
	    commentRepository.deleteById(commentId);
	    return "redirect:/view" + clientId;
	}

}
