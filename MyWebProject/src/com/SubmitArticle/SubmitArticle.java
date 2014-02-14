package com.SubmitArticle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.File;
import com.Registration.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.Date;
import java.util.List;

import com.SubmitArticle.*;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/NewFileUploadHandler")

public class SubmitArticle extends HttpServlet {
	
private static final long serialVersionUID = 1L;

private String UPLOAD_DIRECTORY = "C:/Users/Kiran/Eclipse/Projects/MyWebProject/WebContent/articleimages";

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




//UPLOAD_DIRECTORY=com.servlet.adduploadfiles.curpath;

PrintWriter out=response.getWriter();

HttpSession session=request.getSession();

Integer uid=(Integer)session.getAttribute("uid");

String content=null,title=null,cat=null;

int totreads=0,totrate=0;

boolean Status=false;

Connection c = null;

Statement st = null;

if(ServletFileUpload.isMultipartContent(request)){

	try {

c=ConnectionClass.con();

List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

for(FileItem item : multiparts){
	
	if(item.isFormField())
	{

		
		if(item.getFieldName().equals("article"))
		{	
		  content=item.getString();
		}
		

		if(item.getFieldName().equals("title"))
		{	
			 title=item.getString();
		}
		
		

		if(item.getFieldName().equals("category"))
		{	
			 cat=item.getString();
		}
		
		
	}
	
	
	
	
	else
	{
  
		String name = new File(item.getName()).getName();
		
		StringBuffer sb= new StringBuffer(name);
		
		sb.insert(sb.lastIndexOf("."), "-"+new Date().getTime());
		
		File f=new File(UPLOAD_DIRECTORY+"/"+sb.toString());
  
		String fpath=UPLOAD_DIRECTORY+"/"+sb.toString();
		
		String path=Trimpath.trimyPath(fpath);

		st = c.createStatement();
		
//check the filename in the database

//String sql = "insert into ADMINISTRATOR.ARTICLE(NAME,OWNER,PATH) values('"+name+"','me','"+com.servlet.adduploadfiles.curpath+"')";

System.out.print(path);

 String sql = "INSERT INTO ADMINISTRATOR.ARTICLE(USER_ID,CONTENT,FILE_PATH,TITLE,CATEGORY,DATE,TOTRATE,TOTREADS) VALUES ("+uid+",'"+content+"','"+path+"','"+title+"','"+cat+"',CURRENT_DATE,"+totrate+","+totreads+")";

 
 st.executeUpdate(sql);
 

 
 try
 {

 	item.write( new File(UPLOAD_DIRECTORY + File.separator + sb.toString()));
 	
 	
 	
 } 

 catch (Exception e) 
 {

 e.printStackTrace();
 }
 
 
 Status=true;
 
	}


}

}


	
	catch (SQLException ex) 
	{
		ex.printStackTrace();
//request.setAttribute("message", "File Upload Failed due to " + ex);
	}
	
	catch (FileUploadException e1) 
	{

		// TODO Auto-generated catch block
		
		e1.printStackTrace();
	}


}

if(Status)
	
{
	
request.setAttribute("title",title);
	
RequestDispatcher rd=request.getRequestDispatcher("articlesubmit.jsp");

rd.forward(request, response);


}

else
{
	
	RequestDispatcher rd=request.getRequestDispatcher("articlesubmit.jsp");

	rd.forward(request, response);


}


}




}