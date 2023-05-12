<html>
	<body>
	<h1>Course Info</h1>
	<?php
		$link = mysqli_connect('mariadb', 'cs332u22', 'A6830Lqf','cs332u22');
		if (!$link) {
		  die('Could not connect: ');
		  }

		echo 'Connected successfully<p>';

		$course =  $_POST["course_no"];

		$query = 
			"SELECT SE.section_no, COUNT(*) As num_of_students, SE.section_room, SE.section_start, SE.section_end
			FROM Section SE, Enrollment E, Course C
			WHERE C.course_no = '$course'
			AND SE.section_course = C.course_no
			AND E.en_section = SE.section_no
			GROUP BY E.en_section;";
			

		$result = $link->query($query);

		if ($result->num_rows > 0) {
			// output data of each row
			while ($row = $result->fetch_assoc()) {
				printf("Section Number: %s<br>\n", $row["section_no"]);
				printf("Number of Students in Course: %s<br>\n", $row["num_of_students"]);//but do the count version
				printf("Classroom: %s<br>\n", $row["section_room"]);
				printf("Start time: %s<br>\n", $row["section_start"]);
				printf("End time: %s<br>\n", $row["section_end"]);
		
				printf("------------------------------------------<br>\n");
			}
		} else {
			echo "0 results";
		}
		$result->free_result();
		$link->close();

	?>

	</body>
</html>