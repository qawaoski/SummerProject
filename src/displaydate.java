/* package whatever; // don't place package name! */

import java.util.*;
import java.lang.*;
import java.text.SimpleDateFormat;
import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
class Ideone
{
	public static void main (String[] args) throws java.lang.Exception
	{
		// your code goes here
		Date dNow = new Date( );
		SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd hh:mm:ss");

//	String Regtime = ft.format(dNow);
		System.out.println(ft.format(dNow));
		String Regtime = ft.format(dNow);
		System.out.println(Regtime);
		System.out.println(Regtime.length());
	}

}