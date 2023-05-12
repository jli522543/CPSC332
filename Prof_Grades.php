<html>

<body>
	<h1>Gradebook</h1>
	<?php
	$link = mysqli_connect('mariadb', 'cs332u22', 'A6830Lqf', 'cs332u22');
	if (!$link) {
		die('Could not connect:');
	}

	echo 'Connected successfully<p>';

	$course = $_POST["course_no"];
	$section = $_POST["section_no"];

	$query =
		"SELECT E.en_grade, COUNT(*) AS num_of_students
		FROM Course C, Section SE, Enrollment E
		WHERE C.course_no = '$course'
		AND SE.section_no = '$section'
		AND SE.section_course = C.course_no
		AND E.en_course = C.course_no
		GROUP BY E.en_grade;";


	$result = $link->query($query);

	if ($result->num_rows > 0) {
		// output data of each row
		while ($row = $result->fetch_assoc()) {
			printf("Grade: %s<br>\n", $row["en_grade"]);
			printf("No of students: %s<br>\n", $row["num_of_students"]);
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