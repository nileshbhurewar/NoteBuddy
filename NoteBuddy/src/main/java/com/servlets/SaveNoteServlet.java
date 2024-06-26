package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
			
	 // storing the value of a textarea into a variable 	
	 String title= request.getParameter("title");
	 String content = request.getParameter("content");
	 
	 // now creating a object of a Note class so we can access it's constructor
	 
	 Note note = new Note(title, content, new Date());
	 
	 // now just printing given data into console 
	 // System.out.println("NoteId: "+note.getId()+" NoteTitle: "+note.getTitle()+" NoteDescription: "+note.getContent() );
     
	 Session s = FactoryProvider.getFactory().openSession();
	 Transaction tx =  s.beginTransaction();
	 s.save(note);
	 tx.commit(); // to save changes into database
	 s.close();
	 response.setContentType("text/html"); // browser understand the messages
	 PrintWriter out = response.getWriter(); // Used to Write on a browser
	 out.println("<h1 style='text-align:center;'> Note Is Added Sucessfully</h1>");
	 out.println("<h1 style='text-align:center;'><a href='show_notes.jsp'>ViewAllNotes</h1>");
		
	}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
