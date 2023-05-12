<html>

<body>
	<h1>Student History</h1>
	<?php
	$link = mysqli_connect('mariadb', 'cs332u22', 'A6830Lqf', 'cs332u22');
	if (!$link) {
		die('Could not connect: ');
	}

	echo 'Connected successfully<p>';

	$student = $_POST["stu_cwid"];
	$query = "SELECT C.course_title, E.en_grade
	FROM Course C,
		Enrollment E,
		Section SE
	WHERE E.en_student = '$student'
		AND C.course_no = E.en_course
	GROUP BY C.course_title;";


	$result = $link->query($query);

	if ($result->num_rows > 0) {
		// output data of each row
		while ($row = $result->fetch_assoc()) {
			printf("Course: %s<br>\n", $row["course_title"]);
			printf("Grade: %s<br>\n", $row["en_grade"]);
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