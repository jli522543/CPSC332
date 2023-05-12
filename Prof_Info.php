<html>

<body>
	<h1>Professor Info</h1>

	<?php
	// username and password need to be replaced by your username and password
	// dbname is the same as your username

	$link = mysqli_connect('mariadb', 'cs332u22', 'A6830Lqf', 'cs332u22');
	if (!$link) {
		die('Could not connect:');
	}

	echo 'Connected successfully<p>';
	$req = $_POST["p_ssn"];

	$query = 
		"SELECT C.course_title, SE.section_room, SE.section_days, SE.section_start, SE.section_end
		FROM Course C, Section SE, Professor P
		WHERE P.p_ssn = '$req'
		AND SE.section_professor = P.p_ssn
		AND SE.section_course = C.course_no;";

	$result = $link->query($query);

	if ($result->num_rows > 0) {
		// output data of each row
		while ($row = $result->fetch_assoc()) {
			printf("Course Title: %s<br>\n", $row["course_title"]);
			printf("Room: %s<br>\n", $row["section_room"]);
			printf("Days: %s<br>\n", $row["section_days"]);
			printf("Start Time: %s<br>\n", $row["section_start"]);
			printf("End Time: %s<br>\n", $row["section_end"]);
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