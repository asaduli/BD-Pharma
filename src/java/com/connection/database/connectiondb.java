
package com.connection.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class connectiondb {
    Statement st;
  public Statement  connection(){
      try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root","");
           st=conn.createStatement();
                                                                                                                                                                                                                                                                                                                                                                                                                                 
      }catch(ClassNotFoundException | SQLException e){
          System.out.print(e);
      }
      return st;
  }

 
    
}
