cd /bsbm-loader/target


MYSQL1=`ping -c 1 base_mysql | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
MYSQL2=`ping -c 1 mysql_hybrid_mysql2 | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
MYSQL3=`ping -c 1 mysql_hybrid_mysql3 | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`


java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables product
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables person -horizontal -x 2 -y 1 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables productfeature -horizontal -x 2 -y 1 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables producttype -horizontal -x 2 -y 1 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables vendor -horizontal -x 2 -y 1 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables producer -horizontal -x 2 -y 1 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables review
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables offer
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables productfeatureproduct -horizontal -x 2 -y 1 -column product
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL2}:3306/benchmark -database benchmark  -tables producttypeproduct -horizontal -x 2 -y 1 -column product




java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL3}:3306/benchmark -database benchmark  -tables person -horizontal -x 2 -y 0 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL3}:3306/benchmark -database benchmark  -tables productfeature -horizontal -x 2 -y 0 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL3}:3306/benchmark -database benchmark  -tables producttype -horizontal -x 2 -y 0 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL3}:3306/benchmark -database benchmark  -tables vendor -horizontal -x 2 -y 0 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL3}:3306/benchmark -database benchmark  -tables producer -horizontal -x 2 -y 0 -column nr
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL3}:3306/benchmark -database benchmark  -tables productfeatureproduct -horizontal -x 2 -y 0 -column product
java -jar bsbmloader-jar-with-dependencies.jar -importJdbc -user root -password password -sourceUrl jdbc:mysql://${MYSQL1}:3306/benchmark -targetUrl jdbc:mysql://${MYSQL3}:3306/benchmark -database benchmark  -tables producttypeproduct -horizontal -x 2 -y 0 -column product
