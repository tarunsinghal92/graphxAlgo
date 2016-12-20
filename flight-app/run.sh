../sbt/bin/sbt clean
../sbt/bin/sbt package
#../sbt/bin/sbt run
# ../spark/bin/spark-submit  --class "FlightApp" --num-executors 3 --master spark://localhost:7077 ./target/scala-2.11/flight-application_2.11-1.0.jar
# ../spark/bin/spark-submit  \
#  --num-executors 1 \
#  --total-executor-cores 1 \
#  --executor-cores 1 \
#  --executor-memory 1G \
#  --class "FlightApp" \
#  --master spark://Sakshis-MacBook-Air.local:7377 \
#  -v \
#  ./target/scala-2.11/flight-application_2.11-1.0.jar
#../spark/bin/spark-submit  --class "F../lightApp" --master local[*] ./target/scala-2.11/flight-application_2.11-1.0.jar
# --deploy-mode client --total-executor-cores 3  --executor-memory 5G --driver-memory 1G

../spark/bin/spark-submit  --total-executor-cores 3 --num-executors 1 --executor-cores 1 --executor-memory 1G --class "FlightApp" --master spark://Sakshis-MacBook-Air.local:7377 -v ./target/scala-2.11/flight-application_2.11-1.0.jar
../spark/bin/spark-submit  --total-executor-cores 3 --num-executors 1 --executor-cores 1 --executor-memory 3G --class "FlightApp" --master spark://Sakshis-MacBook-Air.local:7377 -v ./target/scala-2.11/flight-application_2.11-1.0.jar
../spark/bin/spark-submit  --total-executor-cores 3 --num-executors 1 --executor-cores 1 --executor-memory 5G --class "FlightApp" --master spark://Sakshis-MacBook-Air.local:7377 -v ./target/scala-2.11/flight-application_2.11-1.0.jar
../spark/bin/spark-submit  --total-executor-cores 3 --num-executors 1 --executor-cores 3 --executor-memory 1G --class "FlightApp" --master spark://Sakshis-MacBook-Air.local:7377 -v ./target/scala-2.11/flight-application_2.11-1.0.jar
../spark/bin/spark-submit  --total-executor-cores 3 --num-executors 1 --executor-cores 3 --executor-memory 3G --class "FlightApp" --master spark://Sakshis-MacBook-Air.local:7377 -v ./target/scala-2.11/flight-application_2.11-1.0.jar
../spark/bin/spark-submit  --total-executor-cores 3 --num-executors 1 --executor-cores 3 --executor-memory 5G --class "FlightApp" --master spark://Sakshis-MacBook-Air.local:7377 -v ./target/scala-2.11/flight-application_2.11-1.0.jar
../spark/bin/spark-submit  --total-executor-cores 3 --num-executors 3 --executor-cores 1 --executor-memory 1G --class "FlightApp" --master spark://Sakshis-MacBook-Air.local:7377 -v ./target/scala-2.11/flight-application_2.11-1.0.jar
../spark/bin/spark-submit  --total-executor-cores 3 --num-executors 3 --executor-cores 1 --executor-memory 3G --class "FlightApp" --master spark://Sakshis-MacBook-Air.local:7377 -v ./target/scala-2.11/flight-application_2.11-1.0.jar
../spark/bin/spark-submit  --total-executor-cores 3 --num-executors 3 --executor-cores 1 --executor-memory 5G --class "FlightApp" --master spark://Sakshis-MacBook-Air.local:7377 -v ./target/scala-2.11/flight-application_2.11-1.0.jar