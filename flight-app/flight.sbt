name := "Flight Application"

version := "1.0"

scalaVersion := "2.11.8"

libraryDependencies += "org.apache.spark" %% "spark-core" % "2.0.2"

libraryDependencies += "org.apache.spark" %% "spark-graphx" % "2.0.2"

resolvers += "Akka Repository" at "http://repo.akka.io/releases/"
