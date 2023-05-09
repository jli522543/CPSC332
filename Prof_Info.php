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

		$query = "SELECT C.course_title, SE.section_room, SE.section_days, SE.section_start, SE.section_end FROM Course C, Section SE, Professor P WHERE P.p_ssn =" 
		. $_POST["p_ssn"] . " AND SE.section_professor = P.p_ssn AND SE.section_course = C.course_no";
		$result = $link->query($query);

		$row=$result->fetch_assoc();
		printf("Course Title: %s<br>\n", $row["course_title"]);
		printf("Room: %s<br>\n", $row["section_room"]);
		printf("Days: %s<br>\n", $row["section_days"]);
		printf("Start Time: %s<br>\n", $row["section_start"]);
		printf("End Time: %s<br>\n", $row["section_end"]);

		$result->free_result();
		$link->close();

	?>

	</body>
</html>
