from pyspark import pipelines as dp
catalog = spark.conf.get("catalog")

source_path = f"/Volumes/{catalog}/landing/raw/orders/"

@dp.table()
def orders_bronze():
    return (
        spark.readStream
        .format("cloudFiles")                                
        .option("cloudFiles.format", "json")                
        .option("cloudFiles.schemaEvolutionMode", "rescue")
        .load(source_path)
    )