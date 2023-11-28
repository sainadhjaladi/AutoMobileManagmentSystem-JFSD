package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Book;

public interface BookService
{
	public String addcus(Book b);
	public Book viewbookingsbyid(int cid);
	  List<Book> getbookingDetails(int userId);
}
