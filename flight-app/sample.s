Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
16/12/15 17:35:13 INFO SparkContext: Running Spark version 2.0.2
16/12/15 17:35:14 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
16/12/15 17:35:14 INFO SecurityManager: Changing view acls to: sagarg
16/12/15 17:35:14 INFO SecurityManager: Changing modify acls to: sagarg
16/12/15 17:35:14 INFO SecurityManager: Changing view acls groups to: 
16/12/15 17:35:14 INFO SecurityManager: Changing modify acls groups to: 
16/12/15 17:35:14 INFO SecurityManager: SecurityManager: authentication disabled; ui acls disabled; users  with view permissions: Set(sagarg); groups with view permissions: Set(); users  with modify permissions: Set(sagarg); groups with modify permissions: Set()
16/12/15 17:35:14 INFO Utils: Successfully started service 'sparkDriver' on port 38943.
16/12/15 17:35:14 INFO SparkEnv: Registering MapOutputTracker
16/12/15 17:35:14 INFO SparkEnv: Registering BlockManagerMaster
16/12/15 17:35:14 INFO DiskBlockManager: Created local directory at /tmp/blockmgr-cd1329e2-4421-47d9-a2df-cc1ab140d73c
16/12/15 17:35:14 INFO MemoryStore: MemoryStore started with capacity 366.3 MB
16/12/15 17:35:14 INFO SparkEnv: Registering OutputCommitCoordinator
16/12/15 17:35:14 INFO Utils: Successfully started service 'SparkUI' on port 4040.
16/12/15 17:35:14 INFO SparkUI: Bound SparkUI to 0.0.0.0, and started at http://128.100.3.40:4040
16/12/15 17:35:14 INFO SparkContext: Added JAR target/scala-2.11/flight-application_2.11-1.0.jar at spark://128.100.3.40:38943/jars/flight-application_2.11-1.0.jar with timestamp 1481841314658
16/12/15 17:35:14 INFO Executor: Starting executor ID driver on host localhost
16/12/15 17:35:14 INFO Utils: Successfully started service 'org.apache.spark.network.netty.NettyBlockTransferService' on port 33005.
16/12/15 17:35:14 INFO NettyBlockTransferService: Server created on 128.100.3.40:33005
16/12/15 17:35:14 INFO BlockManagerMaster: Registering BlockManager BlockManagerId(driver, 128.100.3.40, 33005)
16/12/15 17:35:14 INFO BlockManagerMasterEndpoint: Registering block manager 128.100.3.40:33005 with 366.3 MB RAM, BlockManagerId(driver, 128.100.3.40, 33005)
16/12/15 17:35:14 INFO BlockManagerMaster: Registered BlockManager BlockManagerId(driver, 128.100.3.40, 33005)
16/12/15 17:35:15 INFO MemoryStore: Block broadcast_0 stored as values in memory (estimated size 236.5 KB, free 366.1 MB)
16/12/15 17:35:15 INFO MemoryStore: Block broadcast_0_piece0 stored as bytes in memory (estimated size 22.9 KB, free 366.0 MB)
16/12/15 17:35:15 INFO BlockManagerInfo: Added broadcast_0_piece0 in memory on 128.100.3.40:33005 (size: 22.9 KB, free: 366.3 MB)
16/12/15 17:35:15 INFO SparkContext: Created broadcast 0 from textFile at FlightApp.scala:86
16/12/15 17:35:15 INFO FileInputFormat: Total input paths to process : 1
16/12/15 17:35:15 INFO SparkContext: Starting job: take at FlightApp.scala:94
16/12/15 17:35:15 INFO DAGScheduler: Registering RDD 4 (distinct at FlightApp.scala:92)
16/12/15 17:35:15 INFO DAGScheduler: Got job 0 (take at FlightApp.scala:94) with 1 output partitions
16/12/15 17:35:15 INFO DAGScheduler: Final stage: ResultStage 1 (take at FlightApp.scala:94)
16/12/15 17:35:15 INFO DAGScheduler: Parents of final stage: List(ShuffleMapStage 0)
16/12/15 17:35:15 INFO DAGScheduler: Missing parents: List(ShuffleMapStage 0)
16/12/15 17:35:15 INFO DAGScheduler: Submitting ShuffleMapStage 0 (MapPartitionsRDD[4] at distinct at FlightApp.scala:92), which has no missing parents
16/12/15 17:35:15 INFO MemoryStore: Block broadcast_1 stored as values in memory (estimated size 4.5 KB, free 366.0 MB)
16/12/15 17:35:15 INFO MemoryStore: Block broadcast_1_piece0 stored as bytes in memory (estimated size 2.6 KB, free 366.0 MB)
16/12/15 17:35:15 INFO BlockManagerInfo: Added broadcast_1_piece0 in memory on 128.100.3.40:33005 (size: 2.6 KB, free: 366.3 MB)
16/12/15 17:35:15 INFO SparkContext: Created broadcast 1 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:15 INFO DAGScheduler: Submitting 2 missing tasks from ShuffleMapStage 0 (MapPartitionsRDD[4] at distinct at FlightApp.scala:92)
16/12/15 17:35:15 INFO TaskSchedulerImpl: Adding task set 0.0 with 2 tasks
16/12/15 17:35:15 INFO TaskSetManager: Starting task 0.0 in stage 0.0 (TID 0, localhost, partition 0, PROCESS_LOCAL, 5476 bytes)
16/12/15 17:35:15 INFO TaskSetManager: Starting task 1.0 in stage 0.0 (TID 1, localhost, partition 1, PROCESS_LOCAL, 5476 bytes)
16/12/15 17:35:15 INFO Executor: Running task 1.0 in stage 0.0 (TID 1)
16/12/15 17:35:15 INFO Executor: Running task 0.0 in stage 0.0 (TID 0)
16/12/15 17:35:15 INFO Executor: Fetching spark://128.100.3.40:38943/jars/flight-application_2.11-1.0.jar with timestamp 1481841314658
16/12/15 17:35:15 INFO TransportClientFactory: Successfully created connection to /128.100.3.40:38943 after 23 ms (0 ms spent in bootstraps)
16/12/15 17:35:15 INFO Utils: Fetching spark://128.100.3.40:38943/jars/flight-application_2.11-1.0.jar to /tmp/spark-6c3f3bc7-7773-49c9-947f-1052c42762bb/userFiles-511a8fc7-d085-4c7d-9253-9df323b8d559/fetchFileTemp1692485279987639539.tmp
16/12/15 17:35:15 INFO Executor: Adding file:/tmp/spark-6c3f3bc7-7773-49c9-947f-1052c42762bb/userFiles-511a8fc7-d085-4c7d-9253-9df323b8d559/flight-application_2.11-1.0.jar to class loader
16/12/15 17:35:15 INFO HadoopRDD: Input split: file:/h/143/sagarg/flight-app/data/rita2014jan.csv:21445249+21445250
16/12/15 17:35:15 INFO HadoopRDD: Input split: file:/h/143/sagarg/flight-app/data/rita2014jan.csv:0+21445249
16/12/15 17:35:15 INFO deprecation: mapred.tip.id is deprecated. Instead, use mapreduce.task.id
16/12/15 17:35:15 INFO deprecation: mapred.task.id is deprecated. Instead, use mapreduce.task.attempt.id
16/12/15 17:35:15 INFO deprecation: mapred.task.is.map is deprecated. Instead, use mapreduce.task.ismap
16/12/15 17:35:15 INFO deprecation: mapred.task.partition is deprecated. Instead, use mapreduce.task.partition
16/12/15 17:35:15 INFO deprecation: mapred.job.id is deprecated. Instead, use mapreduce.job.id
16/12/15 17:35:17 INFO MemoryStore: Block rdd_2_0 stored as values in memory (estimated size 89.1 MB, free 276.9 MB)
16/12/15 17:35:17 INFO BlockManagerInfo: Added rdd_2_0 in memory on 128.100.3.40:33005 (size: 89.1 MB, free: 277.1 MB)
16/12/15 17:35:17 INFO MemoryStore: Block rdd_2_1 stored as values in memory (estimated size 89.0 MB, free 187.9 MB)
16/12/15 17:35:17 INFO BlockManagerInfo: Added rdd_2_1 in memory on 128.100.3.40:33005 (size: 89.0 MB, free: 188.1 MB)
16/12/15 17:35:17 INFO Executor: Finished task 0.0 in stage 0.0 (TID 0). 2283 bytes result sent to driver
16/12/15 17:35:17 INFO Executor: Finished task 1.0 in stage 0.0 (TID 1). 2283 bytes result sent to driver
16/12/15 17:35:17 INFO TaskSetManager: Finished task 0.0 in stage 0.0 (TID 0) in 2201 ms on localhost (1/2)
16/12/15 17:35:17 INFO TaskSetManager: Finished task 1.0 in stage 0.0 (TID 1) in 2185 ms on localhost (2/2)
16/12/15 17:35:17 INFO TaskSchedulerImpl: Removed TaskSet 0.0, whose tasks have all completed, from pool 
16/12/15 17:35:17 INFO DAGScheduler: ShuffleMapStage 0 (distinct at FlightApp.scala:92) finished in 2.215 s
16/12/15 17:35:17 INFO DAGScheduler: looking for newly runnable stages
16/12/15 17:35:17 INFO DAGScheduler: running: Set()
16/12/15 17:35:17 INFO DAGScheduler: waiting: Set(ResultStage 1)
16/12/15 17:35:17 INFO DAGScheduler: failed: Set()
16/12/15 17:35:17 INFO DAGScheduler: Submitting ResultStage 1 (MapPartitionsRDD[6] at distinct at FlightApp.scala:92), which has no missing parents
16/12/15 17:35:17 INFO MemoryStore: Block broadcast_2 stored as values in memory (estimated size 3.5 KB, free 187.9 MB)
16/12/15 17:35:17 INFO MemoryStore: Block broadcast_2_piece0 stored as bytes in memory (estimated size 2011.0 B, free 187.9 MB)
16/12/15 17:35:17 INFO BlockManagerInfo: Added broadcast_2_piece0 in memory on 128.100.3.40:33005 (size: 2011.0 B, free: 188.1 MB)
16/12/15 17:35:17 INFO SparkContext: Created broadcast 2 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:17 INFO DAGScheduler: Submitting 1 missing tasks from ResultStage 1 (MapPartitionsRDD[6] at distinct at FlightApp.scala:92)
16/12/15 17:35:17 INFO TaskSchedulerImpl: Adding task set 1.0 with 1 tasks
16/12/15 17:35:17 INFO TaskSetManager: Starting task 0.0 in stage 1.0 (TID 2, localhost, partition 0, ANY, 5239 bytes)
16/12/15 17:35:17 INFO Executor: Running task 0.0 in stage 1.0 (TID 2)
16/12/15 17:35:17 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:17 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 4 ms
16/12/15 17:35:17 INFO Executor: Finished task 0.0 in stage 1.0 (TID 2). 1697 bytes result sent to driver
16/12/15 17:35:17 INFO TaskSetManager: Finished task 0.0 in stage 1.0 (TID 2) in 39 ms on localhost (1/1)
16/12/15 17:35:17 INFO TaskSchedulerImpl: Removed TaskSet 1.0, whose tasks have all completed, from pool 
16/12/15 17:35:17 INFO DAGScheduler: ResultStage 1 (take at FlightApp.scala:94) finished in 0.040 s
16/12/15 17:35:17 INFO DAGScheduler: Job 0 finished: take at FlightApp.scala:94, took 2.398950 s
16/12/15 17:35:17 INFO SparkContext: Starting job: collect at FlightApp.scala:98
16/12/15 17:35:17 INFO MapOutputTrackerMaster: Size of output statuses for shuffle 0 is 156 bytes
16/12/15 17:35:17 INFO DAGScheduler: Got job 1 (collect at FlightApp.scala:98) with 2 output partitions
16/12/15 17:35:17 INFO DAGScheduler: Final stage: ResultStage 3 (collect at FlightApp.scala:98)
16/12/15 17:35:17 INFO DAGScheduler: Parents of final stage: List(ShuffleMapStage 2)
16/12/15 17:35:17 INFO DAGScheduler: Missing parents: List()
16/12/15 17:35:17 INFO DAGScheduler: Submitting ResultStage 3 (MapPartitionsRDD[7] at map at FlightApp.scala:98), which has no missing parents
16/12/15 17:35:17 INFO MemoryStore: Block broadcast_3 stored as values in memory (estimated size 3.6 KB, free 187.9 MB)
16/12/15 17:35:17 INFO MemoryStore: Block broadcast_3_piece0 stored as bytes in memory (estimated size 2043.0 B, free 187.9 MB)
16/12/15 17:35:17 INFO BlockManagerInfo: Added broadcast_3_piece0 in memory on 128.100.3.40:33005 (size: 2043.0 B, free: 188.1 MB)
16/12/15 17:35:17 INFO SparkContext: Created broadcast 3 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:17 INFO DAGScheduler: Submitting 2 missing tasks from ResultStage 3 (MapPartitionsRDD[7] at map at FlightApp.scala:98)
16/12/15 17:35:17 INFO TaskSchedulerImpl: Adding task set 3.0 with 2 tasks
16/12/15 17:35:17 INFO TaskSetManager: Starting task 0.0 in stage 3.0 (TID 3, localhost, partition 0, ANY, 5243 bytes)
16/12/15 17:35:17 INFO TaskSetManager: Starting task 1.0 in stage 3.0 (TID 4, localhost, partition 1, ANY, 5243 bytes)
16/12/15 17:35:17 INFO Executor: Running task 0.0 in stage 3.0 (TID 3)
16/12/15 17:35:17 INFO Executor: Running task 1.0 in stage 3.0 (TID 4)
16/12/15 17:35:17 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:17 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:17 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:17 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:17 INFO Executor: Finished task 1.0 in stage 3.0 (TID 4). 5440 bytes result sent to driver
16/12/15 17:35:17 INFO Executor: Finished task 0.0 in stage 3.0 (TID 3). 5436 bytes result sent to driver
16/12/15 17:35:17 INFO TaskSetManager: Finished task 1.0 in stage 3.0 (TID 4) in 21 ms on localhost (1/2)
16/12/15 17:35:17 INFO TaskSetManager: Finished task 0.0 in stage 3.0 (TID 3) in 23 ms on localhost (2/2)
16/12/15 17:35:17 INFO TaskSchedulerImpl: Removed TaskSet 3.0, whose tasks have all completed, from pool 
16/12/15 17:35:17 INFO DAGScheduler: ResultStage 3 (collect at FlightApp.scala:98) finished in 0.024 s
16/12/15 17:35:17 INFO DAGScheduler: Job 1 finished: collect at FlightApp.scala:98, took 0.038018 s
16/12/15 17:35:17 INFO SparkContext: Starting job: take at FlightApp.scala:102
16/12/15 17:35:17 INFO DAGScheduler: Registering RDD 9 (distinct at FlightApp.scala:100)
16/12/15 17:35:17 INFO DAGScheduler: Got job 2 (take at FlightApp.scala:102) with 1 output partitions
16/12/15 17:35:17 INFO DAGScheduler: Final stage: ResultStage 5 (take at FlightApp.scala:102)
16/12/15 17:35:17 INFO DAGScheduler: Parents of final stage: List(ShuffleMapStage 4)
16/12/15 17:35:17 INFO DAGScheduler: Missing parents: List(ShuffleMapStage 4)
16/12/15 17:35:17 INFO DAGScheduler: Submitting ShuffleMapStage 4 (MapPartitionsRDD[9] at distinct at FlightApp.scala:100), which has no missing parents
16/12/15 17:35:17 INFO MemoryStore: Block broadcast_4 stored as values in memory (estimated size 4.5 KB, free 187.9 MB)
16/12/15 17:35:17 INFO MemoryStore: Block broadcast_4_piece0 stored as bytes in memory (estimated size 2.6 KB, free 187.9 MB)
16/12/15 17:35:17 INFO BlockManagerInfo: Added broadcast_4_piece0 in memory on 128.100.3.40:33005 (size: 2.6 KB, free: 188.1 MB)
16/12/15 17:35:17 INFO SparkContext: Created broadcast 4 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:17 INFO DAGScheduler: Submitting 2 missing tasks from ShuffleMapStage 4 (MapPartitionsRDD[9] at distinct at FlightApp.scala:100)
16/12/15 17:35:17 INFO TaskSchedulerImpl: Adding task set 4.0 with 2 tasks
16/12/15 17:35:17 INFO TaskSetManager: Starting task 0.0 in stage 4.0 (TID 5, localhost, partition 0, PROCESS_LOCAL, 5477 bytes)
16/12/15 17:35:17 INFO TaskSetManager: Starting task 1.0 in stage 4.0 (TID 6, localhost, partition 1, PROCESS_LOCAL, 5477 bytes)
16/12/15 17:35:17 INFO Executor: Running task 1.0 in stage 4.0 (TID 6)
16/12/15 17:35:17 INFO Executor: Running task 0.0 in stage 4.0 (TID 5)
16/12/15 17:35:17 INFO BlockManager: Found block rdd_2_1 locally
16/12/15 17:35:17 INFO BlockManager: Found block rdd_2_0 locally
16/12/15 17:35:18 INFO Executor: Finished task 1.0 in stage 4.0 (TID 6). 1488 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 1.0 in stage 4.0 (TID 6) in 157 ms on localhost (1/2)
16/12/15 17:35:18 INFO Executor: Finished task 0.0 in stage 4.0 (TID 5). 1488 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 0.0 in stage 4.0 (TID 5) in 182 ms on localhost (2/2)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Removed TaskSet 4.0, whose tasks have all completed, from pool 
16/12/15 17:35:18 INFO DAGScheduler: ShuffleMapStage 4 (distinct at FlightApp.scala:100) finished in 0.183 s
16/12/15 17:35:18 INFO DAGScheduler: looking for newly runnable stages
16/12/15 17:35:18 INFO DAGScheduler: running: Set()
16/12/15 17:35:18 INFO DAGScheduler: waiting: Set(ResultStage 5)
16/12/15 17:35:18 INFO DAGScheduler: failed: Set()
16/12/15 17:35:18 INFO DAGScheduler: Submitting ResultStage 5 (MapPartitionsRDD[11] at distinct at FlightApp.scala:100), which has no missing parents
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_5 stored as values in memory (estimated size 3.5 KB, free 187.9 MB)
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_5_piece0 stored as bytes in memory (estimated size 2011.0 B, free 187.9 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added broadcast_5_piece0 in memory on 128.100.3.40:33005 (size: 2011.0 B, free: 188.1 MB)
16/12/15 17:35:18 INFO SparkContext: Created broadcast 5 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:18 INFO DAGScheduler: Submitting 1 missing tasks from ResultStage 5 (MapPartitionsRDD[11] at distinct at FlightApp.scala:100)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Adding task set 5.0 with 1 tasks
16/12/15 17:35:18 INFO TaskSetManager: Starting task 0.0 in stage 5.0 (TID 7, localhost, partition 0, ANY, 5240 bytes)
16/12/15 17:35:18 INFO Executor: Running task 0.0 in stage 5.0 (TID 7)
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO Executor: Finished task 0.0 in stage 5.0 (TID 7). 1817 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 0.0 in stage 5.0 (TID 7) in 50 ms on localhost (1/1)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Removed TaskSet 5.0, whose tasks have all completed, from pool 
16/12/15 17:35:18 INFO DAGScheduler: ResultStage 5 (take at FlightApp.scala:102) finished in 0.050 s
16/12/15 17:35:18 INFO DAGScheduler: Job 2 finished: take at FlightApp.scala:102, took 0.244656 s
16/12/15 17:35:18 INFO SparkContext: Starting job: take at FlightApp.scala:107
16/12/15 17:35:18 INFO MapOutputTrackerMaster: Size of output statuses for shuffle 1 is 159 bytes
16/12/15 17:35:18 INFO DAGScheduler: Got job 3 (take at FlightApp.scala:107) with 1 output partitions
16/12/15 17:35:18 INFO DAGScheduler: Final stage: ResultStage 7 (take at FlightApp.scala:107)
16/12/15 17:35:18 INFO DAGScheduler: Parents of final stage: List(ShuffleMapStage 6)
16/12/15 17:35:18 INFO DAGScheduler: Missing parents: List()
16/12/15 17:35:18 INFO DAGScheduler: Submitting ResultStage 7 (MapPartitionsRDD[12] at map at FlightApp.scala:104), which has no missing parents
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_6 stored as values in memory (estimated size 3.6 KB, free 187.9 MB)
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_6_piece0 stored as bytes in memory (estimated size 2.1 KB, free 187.9 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added broadcast_6_piece0 in memory on 128.100.3.40:33005 (size: 2.1 KB, free: 188.1 MB)
16/12/15 17:35:18 INFO SparkContext: Created broadcast 6 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:18 INFO DAGScheduler: Submitting 1 missing tasks from ResultStage 7 (MapPartitionsRDD[12] at map at FlightApp.scala:104)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Adding task set 7.0 with 1 tasks
16/12/15 17:35:18 INFO TaskSetManager: Starting task 0.0 in stage 7.0 (TID 8, localhost, partition 0, ANY, 5240 bytes)
16/12/15 17:35:18 INFO Executor: Running task 0.0 in stage 7.0 (TID 8)
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO Executor: Finished task 0.0 in stage 7.0 (TID 8). 1826 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 0.0 in stage 7.0 (TID 8) in 50 ms on localhost (1/1)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Removed TaskSet 7.0, whose tasks have all completed, from pool 
16/12/15 17:35:18 INFO DAGScheduler: ResultStage 7 (take at FlightApp.scala:107) finished in 0.051 s
16/12/15 17:35:18 INFO DAGScheduler: Job 3 finished: take at FlightApp.scala:107, took 0.059696 s
16/12/15 17:35:18 INFO SparkContext: Starting job: take at FlightApp.scala:111
16/12/15 17:35:18 INFO DAGScheduler: Registering RDD 17 (mapPartitions at VertexRDD.scala:356)
16/12/15 17:35:18 INFO MapOutputTrackerMaster: Size of output statuses for shuffle 0 is 156 bytes
16/12/15 17:35:18 INFO DAGScheduler: Registering RDD 6 (distinct at FlightApp.scala:92)
16/12/15 17:35:18 INFO DAGScheduler: Got job 4 (take at FlightApp.scala:111) with 1 output partitions
16/12/15 17:35:18 INFO DAGScheduler: Final stage: ResultStage 12 (take at FlightApp.scala:111)
16/12/15 17:35:18 INFO DAGScheduler: Parents of final stage: List(ShuffleMapStage 9, ShuffleMapStage 11)
16/12/15 17:35:18 INFO DAGScheduler: Missing parents: List(ShuffleMapStage 9, ShuffleMapStage 11)
16/12/15 17:35:18 INFO DAGScheduler: Submitting ShuffleMapStage 9 (VertexRDD.createRoutingTables - vid2pid (aggregation) MapPartitionsRDD[17] at mapPartitions at VertexRDD.scala:356), which has no missing parents
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_7 stored as values in memory (estimated size 4.6 KB, free 187.9 MB)
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_7_piece0 stored as bytes in memory (estimated size 2.6 KB, free 187.9 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added broadcast_7_piece0 in memory on 128.100.3.40:33005 (size: 2.6 KB, free: 188.1 MB)
16/12/15 17:35:18 INFO SparkContext: Created broadcast 7 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:18 INFO DAGScheduler: Submitting 2 missing tasks from ShuffleMapStage 9 (VertexRDD.createRoutingTables - vid2pid (aggregation) MapPartitionsRDD[17] at mapPartitions at VertexRDD.scala:356)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Adding task set 9.0 with 2 tasks
16/12/15 17:35:18 INFO DAGScheduler: Submitting ShuffleMapStage 11 (MapPartitionsRDD[6] at distinct at FlightApp.scala:92), which has no missing parents
16/12/15 17:35:18 INFO TaskSetManager: Starting task 0.0 in stage 9.0 (TID 9, localhost, partition 0, ANY, 5229 bytes)
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_8 stored as values in memory (estimated size 3.8 KB, free 187.9 MB)
16/12/15 17:35:18 INFO TaskSetManager: Starting task 1.0 in stage 9.0 (TID 10, localhost, partition 1, ANY, 5229 bytes)
16/12/15 17:35:18 INFO Executor: Running task 0.0 in stage 9.0 (TID 9)
16/12/15 17:35:18 INFO Executor: Running task 1.0 in stage 9.0 (TID 10)
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_8_piece0 stored as bytes in memory (estimated size 2.2 KB, free 187.8 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added broadcast_8_piece0 in memory on 128.100.3.40:33005 (size: 2.2 KB, free: 188.1 MB)
16/12/15 17:35:18 INFO SparkContext: Created broadcast 8 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:18 INFO DAGScheduler: Submitting 2 missing tasks from ShuffleMapStage 11 (MapPartitionsRDD[6] at distinct at FlightApp.scala:92)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Adding task set 11.0 with 2 tasks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO TaskSetManager: Starting task 0.0 in stage 11.0 (TID 11, localhost, partition 0, ANY, 5229 bytes)
16/12/15 17:35:18 INFO TaskSetManager: Starting task 1.0 in stage 11.0 (TID 12, localhost, partition 1, ANY, 5229 bytes)
16/12/15 17:35:18 INFO Executor: Running task 0.0 in stage 11.0 (TID 11)
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO Executor: Running task 1.0 in stage 11.0 (TID 12)
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO BlockManagerInfo: Removed broadcast_5_piece0 on 128.100.3.40:33005 in memory (size: 2011.0 B, free: 188.1 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Removed broadcast_6_piece0 on 128.100.3.40:33005 in memory (size: 2.1 KB, free: 188.1 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Removed broadcast_4_piece0 on 128.100.3.40:33005 in memory (size: 2.6 KB, free: 188.1 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Removed broadcast_2_piece0 on 128.100.3.40:33005 in memory (size: 2011.0 B, free: 188.1 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Removed broadcast_3_piece0 on 128.100.3.40:33005 in memory (size: 2043.0 B, free: 188.1 MB)
16/12/15 17:35:18 INFO Executor: Finished task 0.0 in stage 11.0 (TID 11). 1953 bytes result sent to driver
16/12/15 17:35:18 INFO Executor: Finished task 1.0 in stage 11.0 (TID 12). 1953 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 0.0 in stage 11.0 (TID 11) in 232 ms on localhost (1/2)
16/12/15 17:35:18 INFO TaskSetManager: Finished task 1.0 in stage 11.0 (TID 12) in 232 ms on localhost (2/2)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Removed TaskSet 11.0, whose tasks have all completed, from pool 
16/12/15 17:35:18 INFO DAGScheduler: ShuffleMapStage 11 (distinct at FlightApp.scala:92) finished in 0.234 s
16/12/15 17:35:18 INFO DAGScheduler: looking for newly runnable stages
16/12/15 17:35:18 INFO DAGScheduler: running: Set(ShuffleMapStage 9)
16/12/15 17:35:18 INFO Executor: Finished task 1.0 in stage 9.0 (TID 10). 1953 bytes result sent to driver
16/12/15 17:35:18 INFO Executor: Finished task 0.0 in stage 9.0 (TID 9). 1953 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 1.0 in stage 9.0 (TID 10) in 241 ms on localhost (1/2)
16/12/15 17:35:18 INFO TaskSetManager: Finished task 0.0 in stage 9.0 (TID 9) in 243 ms on localhost (2/2)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Removed TaskSet 9.0, whose tasks have all completed, from pool 
16/12/15 17:35:18 INFO DAGScheduler: waiting: Set(ResultStage 12)
16/12/15 17:35:18 INFO DAGScheduler: failed: Set()
16/12/15 17:35:18 INFO DAGScheduler: ShuffleMapStage 9 (mapPartitions at VertexRDD.scala:356) finished in 0.245 s
16/12/15 17:35:18 INFO DAGScheduler: looking for newly runnable stages
16/12/15 17:35:18 INFO DAGScheduler: running: Set()
16/12/15 17:35:18 INFO DAGScheduler: waiting: Set(ResultStage 12)
16/12/15 17:35:18 INFO DAGScheduler: failed: Set()
16/12/15 17:35:18 INFO DAGScheduler: Submitting ResultStage 12 (VertexRDDImpl[22] at RDD at VertexRDD.scala:57), which has no missing parents
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_9 stored as values in memory (estimated size 4.9 KB, free 187.9 MB)
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_9_piece0 stored as bytes in memory (estimated size 2.8 KB, free 187.9 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added broadcast_9_piece0 in memory on 128.100.3.40:33005 (size: 2.8 KB, free: 188.1 MB)
16/12/15 17:35:18 INFO SparkContext: Created broadcast 9 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:18 INFO DAGScheduler: Submitting 1 missing tasks from ResultStage 12 (VertexRDDImpl[22] at RDD at VertexRDD.scala:57)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Adding task set 12.0 with 1 tasks
16/12/15 17:35:18 INFO TaskSetManager: Starting task 0.0 in stage 12.0 (TID 13, localhost, partition 0, ANY, 5560 bytes)
16/12/15 17:35:18 INFO Executor: Running task 0.0 in stage 12.0 (TID 13)
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 1 ms
16/12/15 17:35:18 INFO MemoryStore: Block rdd_20_0 stored as values in memory (estimated size 11.7 KB, free 187.9 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added rdd_20_0 in memory on 128.100.3.40:33005 (size: 11.7 KB, free: 188.1 MB)
16/12/15 17:35:18 WARN Executor: 1 block locks were not released by TID = 13:
[rdd_20_0]
16/12/15 17:35:18 INFO Executor: Finished task 0.0 in stage 12.0 (TID 13). 2199 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 0.0 in stage 12.0 (TID 13) in 52 ms on localhost (1/1)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Removed TaskSet 12.0, whose tasks have all completed, from pool 
16/12/15 17:35:18 INFO DAGScheduler: ResultStage 12 (take at FlightApp.scala:111) finished in 0.049 s
16/12/15 17:35:18 INFO DAGScheduler: Job 4 finished: take at FlightApp.scala:111, took 0.321968 s
16/12/15 17:35:18 INFO SparkContext: Starting job: take at FlightApp.scala:113
16/12/15 17:35:18 INFO MapOutputTrackerMaster: Size of output statuses for shuffle 1 is 159 bytes
16/12/15 17:35:18 INFO DAGScheduler: Got job 5 (take at FlightApp.scala:113) with 1 output partitions
16/12/15 17:35:18 INFO DAGScheduler: Final stage: ResultStage 14 (take at FlightApp.scala:113)
16/12/15 17:35:18 INFO DAGScheduler: Parents of final stage: List(ShuffleMapStage 13)
16/12/15 17:35:18 INFO DAGScheduler: Missing parents: List()
16/12/15 17:35:18 INFO DAGScheduler: Submitting ResultStage 14 (EdgeRDDImpl[24] at RDD at EdgeRDD.scala:41), which has no missing parents
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_10 stored as values in memory (estimated size 4.7 KB, free 187.9 MB)
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_10_piece0 stored as bytes in memory (estimated size 2.5 KB, free 187.9 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added broadcast_10_piece0 in memory on 128.100.3.40:33005 (size: 2.5 KB, free: 188.1 MB)
16/12/15 17:35:18 INFO SparkContext: Created broadcast 10 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:18 INFO DAGScheduler: Submitting 1 missing tasks from ResultStage 14 (EdgeRDDImpl[24] at RDD at EdgeRDD.scala:41)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Adding task set 14.0 with 1 tasks
16/12/15 17:35:18 INFO TaskSetManager: Starting task 0.0 in stage 14.0 (TID 14, localhost, partition 0, ANY, 5240 bytes)
16/12/15 17:35:18 INFO Executor: Running task 0.0 in stage 14.0 (TID 14)
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO MemoryStore: Block rdd_23_0 stored as values in memory (estimated size 40.5 KB, free 187.8 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added rdd_23_0 in memory on 128.100.3.40:33005 (size: 40.5 KB, free: 188.1 MB)
16/12/15 17:35:18 WARN Executor: 1 block locks were not released by TID = 14:
[rdd_23_0]
16/12/15 17:35:18 INFO Executor: Finished task 0.0 in stage 14.0 (TID 14). 2504 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 0.0 in stage 14.0 (TID 14) in 52 ms on localhost (1/1)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Removed TaskSet 14.0, whose tasks have all completed, from pool 
16/12/15 17:35:18 INFO DAGScheduler: ResultStage 14 (take at FlightApp.scala:113) finished in 0.053 s
16/12/15 17:35:18 INFO DAGScheduler: Job 5 finished: take at FlightApp.scala:113, took 0.060870 s
16/12/15 17:35:18 INFO SparkContext: Starting job: reduce at VertexRDDImpl.scala:88
16/12/15 17:35:18 INFO MapOutputTrackerMaster: Size of output statuses for shuffle 3 is 159 bytes
16/12/15 17:35:18 INFO MapOutputTrackerMaster: Size of output statuses for shuffle 0 is 156 bytes
16/12/15 17:35:18 INFO MapOutputTrackerMaster: Size of output statuses for shuffle 2 is 159 bytes
16/12/15 17:35:18 INFO DAGScheduler: Got job 6 (reduce at VertexRDDImpl.scala:88) with 2 output partitions
16/12/15 17:35:18 INFO DAGScheduler: Final stage: ResultStage 19 (reduce at VertexRDDImpl.scala:88)
16/12/15 17:35:18 INFO DAGScheduler: Parents of final stage: List(ShuffleMapStage 16, ShuffleMapStage 18)
16/12/15 17:35:18 INFO DAGScheduler: Missing parents: List()
16/12/15 17:35:18 INFO DAGScheduler: Submitting ResultStage 19 (MapPartitionsRDD[25] at map at VertexRDDImpl.scala:88), which has no missing parents
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_11 stored as values in memory (estimated size 4.8 KB, free 187.8 MB)
16/12/15 17:35:18 INFO MemoryStore: Block broadcast_11_piece0 stored as bytes in memory (estimated size 2.7 KB, free 187.8 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added broadcast_11_piece0 in memory on 128.100.3.40:33005 (size: 2.7 KB, free: 188.1 MB)
16/12/15 17:35:18 INFO SparkContext: Created broadcast 11 from broadcast at DAGScheduler.scala:1012
16/12/15 17:35:18 INFO DAGScheduler: Submitting 2 missing tasks from ResultStage 19 (MapPartitionsRDD[25] at map at VertexRDDImpl.scala:88)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Adding task set 19.0 with 2 tasks
16/12/15 17:35:18 INFO TaskSetManager: Starting task 0.0 in stage 19.0 (TID 15, localhost, partition 0, PROCESS_LOCAL, 5562 bytes)
16/12/15 17:35:18 INFO TaskSetManager: Starting task 1.0 in stage 19.0 (TID 16, localhost, partition 1, ANY, 5562 bytes)
16/12/15 17:35:18 INFO Executor: Running task 0.0 in stage 19.0 (TID 15)
16/12/15 17:35:18 INFO Executor: Running task 1.0 in stage 19.0 (TID 16)
16/12/15 17:35:18 INFO BlockManager: Found block rdd_20_0 locally
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO Executor: Finished task 0.0 in stage 19.0 (TID 15). 1120 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 0.0 in stage 19.0 (TID 15) in 7 ms on localhost (1/2)
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Getting 2 non-empty blocks out of 2 blocks
16/12/15 17:35:18 INFO ShuffleBlockFetcherIterator: Started 0 remote fetches in 0 ms
16/12/15 17:35:18 INFO MemoryStore: Block rdd_20_1 stored as values in memory (estimated size 13.5 KB, free 187.8 MB)
16/12/15 17:35:18 INFO BlockManagerInfo: Added rdd_20_1 in memory on 128.100.3.40:33005 (size: 13.5 KB, free: 188.1 MB)
16/12/15 17:35:18 INFO Executor: Finished task 1.0 in stage 19.0 (TID 16). 2147 bytes result sent to driver
16/12/15 17:35:18 INFO TaskSetManager: Finished task 1.0 in stage 19.0 (TID 16) in 17 ms on localhost (2/2)
16/12/15 17:35:18 INFO TaskSchedulerImpl: Removed TaskSet 19.0, whose tasks have all completed, from pool 
16/12/15 17:35:18 INFO DAGScheduler: ResultStage 19 (reduce at VertexRDDImpl.scala:88) finished in 0.019 s
16/12/15 17:35:18 INFO DAGScheduler: Job 6 finished: reduce at VertexRDDImpl.scala:88, took 0.027585 s
16/12/15 17:35:18 INFO SparkContext: Invoking stop() from shutdown hook
16/12/15 17:35:18 INFO SparkUI: Stopped Spark web UI at http://128.100.3.40:4040
16/12/15 17:35:18 INFO MapOutputTrackerMasterEndpoint: MapOutputTrackerMasterEndpoint stopped!
16/12/15 17:35:18 INFO MemoryStore: MemoryStore cleared
16/12/15 17:35:18 INFO BlockManager: BlockManager stopped
16/12/15 17:35:18 INFO BlockManagerMaster: BlockManagerMaster stopped
16/12/15 17:35:18 INFO OutputCommitCoordinator$OutputCommitCoordinatorEndpoint: OutputCommitCoordinator stopped!
16/12/15 17:35:18 INFO SparkContext: Successfully stopped SparkContext
16/12/15 17:35:18 INFO ShutdownHookManager: Shutdown hook called
16/12/15 17:35:18 INFO ShutdownHookManager: Deleting directory /tmp/spark-6c3f3bc7-7773-49c9-947f-1052c42762bb
