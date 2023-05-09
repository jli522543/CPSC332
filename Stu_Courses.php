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

		$query = "SELECT SE.section_no, COUNT(*) As num_of_students, SE.section_room, SE.section_start, SE.section_end FROM Section SE, Enrollment E, Course C WHERE C.course_no =" 
		. $_POST["course_no"]
		. "AND SE.section_course = C.course_no AND E.en_section = SE.section_no GROUP BY E.section_no";
		$result = $link->query($query);

		$row=$result->fetch_assoc();
		printf("Section Number: %s<br>\n", $row["section_no"]);
		printf("Number of Students in Course: %s<br>\n", $row["num_of_students"]);//but do the count version
		printf("Classroom: %s<br>\n", $row["section_room"]);
		printf("Start time: %s<br>\n", $row["section_start"]);
		printf("End time: %s<br>\n", $row["section_end"]);

		$result->free_result();
		$link->close();

	?>

	</body>
</html>
