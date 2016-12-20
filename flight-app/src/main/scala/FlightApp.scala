

/* My.scala */
import org.apache.spark.SparkContext
import org.apache.spark.SparkContext._
import org.apache.spark.SparkConf

import org.apache.spark._
import org.apache.spark.rdd.RDD
// import org.apache.spark.util.IntParam
import org.apache.spark.util
import org.apache.spark.util._
// import classes required for using GraphX
import org.apache.spark.graphx._
import org.apache.spark.graphx.util.GraphGenerators

import scala.util.Try


object FlightApp{
 def main(args: Array[String]) {
  /* val logFile = "../spark/README.md"*/
   val conf = new SparkConf().setAppName("Flight Application")
   conf.setMaster("local[4]")
   conf.setJars(List("target/scala-2.11/flight-application_2.11-1.0.jar"))
   conf.setSparkHome("/u/sagarg/spark/")
   conf.set("spark.cores.max", "3")
   val sc = new SparkContext(conf)
   /*val logData = sc.textFile(logFile, 2).cache()
   val numAs = logData.filter(line => line.contains("a")).count()
   val numBs = logData.filter(line => line.contains("b")).count()
     println("Lines with a: %s, Lines with b: %s".format(numAs, numBs))*/

   case class Flight(dofM:String, dofW:String, carrier:String, tailnum:String, flnum:Int, org_id:Long, origin:String, dest_id:Long, dest:String, crsdeptime:Double, deptime:Double, depdelaymins:Double, crsarrtime:Double, arrtime:Double, arrdelay:Double,crselapsedtime:Double,dist:Int)

// def tryToInt( s: String ) = Try(s.toInt).toOption

def toInt(in: String): Int = {
    try {
        Integer.parseInt(in.trim)
    } catch {
        case e: NumberFormatException => 0
    }
}

def parseDouble(in: String): Double = {
    try {
        // parseDouble(in.trim)
        in.toDouble
    } catch {
        case _ => 0.0
    }
}

def parseFlight(str: String): Flight = {
    // val line = str.replace("\"","").split(",").map(x => if (x == "") "0".toInt else x)
    val line = str.replace("\"","").split(",")
    val dofM: String = line(0)
    val dofW:String = line(1)
    val carrier:String = line(2)
    val tailnum:String = line(3)
    val flnum:Int = line(4).toInt
    val org_id:Long = line(5).toLong
    val origin:String = line(6)
    val dest_id:Long = line(7).toLong
    val dest:String = line(8)
    val crsdeptime:Double = parseDouble(line(9))
    val deptime:Double = parseDouble(line(10))
    val depdelaymins:Double = parseDouble(line(11))
    val crsarrtime:Double = parseDouble(line(12))
    val arrtime:Double = parseDouble(line(13))
    val arrdelay:Double = parseDouble(line(14))
    val crselapsedtime:Double = parseDouble(line(15))
    val dist:Int = line(16).replace(".00","").toInt
    Flight(dofM, dofW, carrier, tailnum, flnum, org_id, origin, dest_id, dest, crsdeptime, deptime, depdelaymins, crsarrtime, arrtime, arrdelay, crselapsedtime, dist)
    // Flight(line(0), line(1), line(2), line(3), line(4).toInt, line(5).toLong, line(6), line(7).toLong, line(8), line(9).toDouble, line(10).toDouble, line(11).toDouble, line(12).toDouble, line(13).toDouble, line(14).toDouble, line(15).toDouble, line(16).replace(".00","").toInt)
 /*val cnt = 0;
 for( val x <- line ){
      if(x == ""){
        line(cnt) = 0;
      }
      cnt++;
  }*/
}


val textRDD = sc.textFile("./data/rita2014jan.csv")
// val textRDD = sc.textFile("./data/mynewfile3.csv")
// val textRDD = sc.textFile("./data/sakshi2015jan.csv")

val flightsRDD = textRDD.map(parseFlight).cache()


val airports = flightsRDD.map(flight => (flight.org_id, flight.origin)).distinct

airports.take(1)

val nowhere = "nowhere"

val airportMap = airports.map { case ((org_id), name) => (org_id -> name) }.collect.toList.toMap

val routes = flightsRDD.map(flight => ((flight.org_id, flight.dest_id), flight.dist)).distinct

routes.take(2)

val edges = routes.map {
 case ((org_id, dest_id), distance) =>Edge(org_id.toLong, dest_id.toLong, distance) }

edges.take(1)

val graph = Graph(airports, edges, nowhere)

graph.vertices.take(2)

graph.edges.take(2)

val numairports = graph.numVertices

val numroutes = graph.numEdges

// println("%d".format(numairports))
// println("TKS-> " + "7.5".trim().toInt)

graph.edges.filter { case ( Edge(org_id, dest_id,distance))=> distance > 1000}.take(3)
graph.triplets.take(3).foreach(println)

graph.triplets.sortBy(_.attr, ascending=false).map(triplet =>
     "Distance " + triplet.attr.toString + " from " + triplet.srcAttr + " to " + triplet.dstAttr + ".").take(10).foreach(println)

// Define a reduce operation to compute the highest degree vertex
def max(a: (VertexId, Int), b: (VertexId, Int)): (VertexId, Int) = {
 if (a._2 > b._2) a else b
}
val maxInDegree: (VertexId, Int) = graph.inDegrees.reduce(max)
//maxInDegree: (org.apache.spark.graphx.VertexId, Int) = (10397,152)

val maxOutDegree: (VertexId, Int) = graph.outDegrees.reduce(max)
//maxOutDegree: (org.apache.spark.graphx.VertexId, Int) = (10397,153)

val maxDegrees: (VertexId, Int) = graph.degrees.reduce(max)
//maxDegrees: (org.apache.spark.graphx.VertexId, Int) = (10397,305)

// Get the name for the airport with id 10397
airportMap(10397)
//res70: String = ATL

// get top 3
val maxIncoming = graph.inDegrees.collect.sortWith(_._2 > _._2).map(x => (airportMap(x._1), x._2)).take(3)

maxIncoming.foreach(println)

// which airport has the most outgoing flights?
val maxout= graph.outDegrees.join(airports).sortBy(_._2._1, ascending=false).take(3)

maxout.foreach(println)

// use pageRank
val ranks = graph.pageRank(0.1).vertices
// join the ranks  with the map of airport id to name
val temp= ranks.join(airports)
temp.take(1)
// Array((15370,(0.5365013694244737,TUL)))

// sort by ranking
val temp2 = temp.sortBy(_._2._1, false)
temp2.take(2)
//Array((10397,(5.431032677813346,ATL)), (13930,(5.4148119418905765,ORD)))

// get just the airport names
val impAirports =temp2.map(_._2._2)
impAirports.take(4).foreach(println)
//res6: Array[String] = Array(ATL, ORD, DFW, DEN)

sc.stop()
 }
}
