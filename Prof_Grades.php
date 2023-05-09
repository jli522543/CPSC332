<html>
	<body>

	<?php
		// username and password need to be replaced by your username and password
		// dbname is the same as your username

		$link = mysqli_connect('mariadb', 'cs332u22', 'A6830Lqf','dbname');
		if (!$link) {
		  die('Could not connect:');
		  }

		echo 'Connected successfully<p>';

		$query = "SELECT COUNT(*) As num_students_per_grade FROM Course C, Section SE, Enrollment E WHERE C.course_no =" 
		. $_POST["course_no"]
		. " AND SE.section_no = "
		. $_POST["section_no"]
		. " AND SE.en_course = C.course_no AND E.en_course = C.course_no GROUP BY E.en_grade";
		$result = $link->query($query);

		$row=$result->fetch_assoc();
		printf("Students with each grade: %s<br>\n", $row["en_grade"]);
		//I'm not sure how to do this actually'
		//printf("First NAME: %s<br>\n", $row["fname"]);
		//printf("Last NAME: %s<br>\n", $row["lname"]);

		$result->free_result();
		$link->close();

	?>

	</body>
</html>
