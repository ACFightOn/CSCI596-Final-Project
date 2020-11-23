from pyspark import SparkContext
from pyspark.mllib.regression import LabeledPoint
from pyspark.mllib.linalg import Vectors,Vector
from pyspark.mllib.classification import SVMModel, SVMWithSGD
from pyspark.python.pyspark.shell import spark
from pyspark.sql.types import Row
from pyspark.sql.types import *

sc = SparkContext.getOrCreate()
train_data = sc.textFile("../data/train_after.csv")
test_data = sc.textFile("../data/test_after.csv")

def GetParts(line):
    parts = line.split(',')
    return LabeledPoint(float(parts[4]),Vectors.dense(float(parts[1]),float(parts[2]),float(parts[3])))
train = train_data.map(lambda line: GetParts(line))
test = test_data.map(lambda line: GetParts(line))

numIterations = 1000
model = SVMWithSGD.train(train, numIterations)

def Getpoint(point):
    score = model.predict(point.features)
    return str(score) + " " + str(point.label)
model.clearThreshold()
scoreAndLabels = test.map(lambda point: Getpoint(point))

# scoreAndLabels.foreach(lambda x : print(x))
# model.setThreshold(0.0)
# scoreAndLabels.foreach(lambda x : print(x))

rebuyRDD = scoreAndLabels.map(lambda x: x.split(" "))
schema = StructType([StructField("score", StringType(), True),StructField("label", StringType(), True)])
rowRDD = rebuyRDD.map(lambda p : Row(p[0].strip(), p[1].strip()))
rebuyDF = spark.createDataFrame(rowRDD, schema, True)
prop = {}
prop['user'] = 'root'
prop['password'] = '123' 
prop['driver'] = "com.mysql.jdbc.Driver" 
rebuyDF.write.jdbc("jdbc:mysql://localhost:3306/dbtaobao",'dbtaobao.rebuy','append', prop)

