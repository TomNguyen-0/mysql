// to run this code enter    java jdbc0Ora usrname passwd
// This is jdbc0Ora.java.   It connects JDBC to an ORACLE database.
// The database is called cfedb and is located on cslabdb.    
// The driver used is an Oracle 'thin' driver.   The other common driver
// is Oracle OCI, where OCI is Oracle Call Interface.  The drivers most
// commonly used are 'thin', 'oci7', and 'oci8'.  The 'thin' one is used
// a lot for applets.
// To run this you want to have usrname and passwd as command line params.

// NOTE, con.setAutoCommit(true) is legal for a connection called con
// one wayto invoke this for edoras is
//    java -cp ~eckberg/classes12.zip:. jdbc0Ora eckberg carl
import java.io.*;
import java.util.*;
import java.sql.*;
public class hw4 {
	static String empnumber;
	static BufferedReader getData = new BufferedReader(new InputStreamReader(System.in));
  public static void main(String [] aa) throws IOException{
    String url;
    url = "jdbc:oracle:thin:@moria.sdsu.edu:1521:cs514"; // jdbc is 'protocol', 
                   //oracle is 'subprotocol',
                   // and thin is the driver; cs514 is the data base
                   // instance; the 'database' format is host:port:sid 
    Statement stmt;
    Connection con;
    String query = "select empno,average from infobb02";
	
    try { // invoke the oracle thin driver; register it with DriverManager
      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
	  
    }   // this step 'loads' the drivers for Oracle that are 'found'
    catch (Exception e) {
      System.out.println("MR.UnitSitQueries.constructor.Exception: " +
        e);
    }
    try {
	  con = DriverManager.getConnection(url,"st20","cs514"); 
      //con = DriverManager.getConnection(url,aa[0],aa[1]); // establish
              // connection to DBMS or database
      
	  stmt = con.createStatement(); // creates object from which SQL commands
              // can be sent to the DBMS
	  ResultSet rs = stmt.executeQuery(query); //create result object to hold
             // information returned by the DBMS
      // Vector rowData = new Vector();
	  boolean found = false; //no one is found at this moment.
	  System.out.print("Enter an employee's number:");
	  empnumber = getData.readLine();
	  while (rs.next()) {
        String s1 = rs.getString("EMPNO");
		String s2 = rs.getString("AVERAGE");
		if(s1.equals(empnumber)){
			found=true;
			if(s2 ==null) //null average
				System.out.println("employee with eid:"+ s1+" has no batting average");
			else if(Integer.parseInt(s2)<200) //lower than 200 average
				System.out.println("employee with eid:"+s1+" has an average below the Mendoza line");
			else//higher or equal to 200
				System.out.println("employee with eid:"+s1+" has a batting average of "+s2);
			break;
		}
      }
	  if(!found)//invalid empno was input
		  System.out.println("could not find any player eid:" +empnumber);
      ResultSetMetaData rsmd = rs.getMetaData();
      // rs only has two columns
      int i = rsmd.getColumnCount();
      int jdbcType = rsmd.getColumnType(1);
      String s1 = rsmd.getColumnLabel(2); 
      // the JDBC type corresponding to ACCESS text has index 12: VARCHAR
      stmt.close();
      con.close();
    }
    catch (SQLException e){System.out.println("OOPS" + e.getMessage());}
  }

}
