import java.sql.*;

public class Insert_Data {

	public static void main(String[] args) throws SQLException {

		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		String dbUrl = "jdbc:mysql://localhost:3306/EMPLOYEE";
		String user = "student";		
		String pass = "1234";

		try {
			// 1. Get a connection to database
			DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
			myConn = DriverManager.getConnection(dbUrl, user, pass);
			
			// 2. Create a statement
			myStmt = myConn.createStatement();

			// 3. Insert a new employee
			System.out.println("Inserting data to database\n");
			
			int rowsAffected = myStmt.executeUpdate(
				"insert into Employee_Master " +
				"(Employee_Code, Employee_Name, Email_ID) " + 
				"values " + 
				"(0000000004, 'Bob', 'bob@gmail.com')");
			
			System.out.println(rowsAffected);
			
			// 4. Verify this by getting a list of employees
			myRs = myStmt.executeQuery("select * from Employee_Master order by Employee_Code");
			
			// 5. Process the result set
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
