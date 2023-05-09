<html>
	<body>

	<?php
		// username and password need to be replaced by your username and password
		// dbname is the same as your username

		$link = mysqli_connect('mariadb', 'cs332u22', 'A6830Lqf','dbname');
		if (!$link) {
		  die('Could not connect: ' . mysql_error());
		  }

		echo 'Connected successfully<p>';

		$query = "SELECT C.course_title, E.en_grade FROM Course C, Enrollment E, Section SE WHERE E.en_student =" 
		. $_POST["en_student"]
		. "AND SE.section_no = E.en_section AND C.course_no = SE.section_course GROUP BY C.course_title";
		$result = $link->query($query);

		$row=$result->fetch_assoc();
		printf("Course: %s<br>\n", $row["course_title"]);
		printf("Grade: %s<br>\n", $row["en_grade"]);

		$result->free_result();
		$link->close();

	?>

	</body>
</html>
