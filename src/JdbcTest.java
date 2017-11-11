import java.sql.*;

public class JdbcTest {

	public static void main(String[] args) throws SQLException {

		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			// 1. Get a connection to database
			DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
			myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/EMPLOYEE","student","1234");
			
			System.out.println("Database connection successful!\n");
			
			// 2. Create a statement
			myStmt = myConn.createStatement();
			
			// 3. Execute SQL query
			myRs = myStmt.executeQuery("select * from Employee_Master");
			
			// 4. Process the result set
			while (myRs.next()) {
				System.out.println(myRs.getString("Employee_Name") + ", " + myRs.getString("Email_ID"));
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
		finally {
			if (myRs != null) {
				myRs.close();
			}
			
			if (myStmt != null) {
				myStmt.close();
			}
			
			if (myConn != null) {
				myConn.close();
			}
		}
	}
}
