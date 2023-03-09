//#!/bin/bash
//sudo yum update
//sudo yum install -y httpd
//sudo systemctl start httpd
// sudo systemctl enable httpd
// echo "<h1>Hello from Terraform</h1>" | sudo tee /var/www/html/index.html
 #!/bin/bash
	    yum update -y
		yum install -y httpd
		systemctl start httpd
 		systemctl enable httpd
		host_name=`curl -s http://169.254.169.254/latest/meta-data/local-hostname`
 		echo "hi there from $host_name" > /var/www/html/test.txt
	echo "done"
