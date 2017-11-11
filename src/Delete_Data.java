import java.sql.*;

public class Delete_Data {

	public static void main(String[] args) throws SQLException {

		Connection myConn = null;
		Statement myStmt = null;
//		ResultSet myRs = null;
		
		String dbUrl = "jdbc:mysql://localhost:3306/EMPLOYEE";
		String user = "student";		
		String pass = "1234";

		try {
			// Get a connection to database
			DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
			myConn = DriverManager.getConnection(dbUrl, user, pass);
			
			// Create a statement
			myStmt = myConn.createStatement();

			int rowsAffected = myStmt.executeUpdate(
					"delete from Employee_Master " +
					"where Employee_Name='Bob'");
			
			System.out.println(rowsAffected);
			
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
//		finally {
//			close(myConn, myStmt, myRs);
//		}
	}
}
/*	private static void displayEmployee(Connection myConn, String firstName, String lastName) throws SQLException {
		PreparedStatement myStmt = null;
		ResultSet myRs = null;

		try {
			// Prepare statement
			myStmt = myConn
					.prepareStatement("select last_name, first_name, email from employees where last_name=? and first_name=?");

			myStmt.setString(1, lastName);
			myStmt.setString(2, firstName);
			
			// Execute SQL query
			myRs = myStmt.executeQuery();

			// Process result set
			boolean found = false;
			
			while (myRs.next()) {
				String theLastName = myRs.getString("last_name");
				String theFirstName = myRs.getString("first_name");
				String email = myRs.getString("email");
			
				System.out.printf("Found employee: %s %s, %s\n", theFirstName, theLastName, email);
				found=true;
			}
			
			if (!found) {
				System.out.println("Employee NOT FOUND: " + firstName + " " + lastName);				
			}
			
		} catch (Exception exc) {
			exc.printStackTrace();
		} finally {
			close(myStmt, myRs);
		}
	}
*/

	/*private static void close(Connection myConn, Statement myStmt,
			ResultSet myRs) throws SQLException {
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
*/
	
/*	private static void close(Statement myStmt, ResultSet myRs)
			throws SQLException {

		close(null, myStmt, myRs);
	}	
*/