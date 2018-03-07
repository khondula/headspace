db_add_site <- function(samplingfeaturecode, samplingfeaturedescription, samplingfeaturename, samplingfeaturetypecv){
  uuid <- UUIDgenerate()
  sql <- sprintf("INSERT INTO odm2.samplingfeatures 
                 (samplingfeaturecode, samplingfeaturedescription, samplingfeaturename, samplingfeaturetypecv, samplingfeatureuuid) 
                 VALUES 
                 ('%s', '%s', '%s', '%s', '%s')",
                 samplingfeaturecode, samplingfeaturedescription, samplingfeaturename, samplingfeaturetypecv, uuid)
  sql <- gsub("\n", "", sql)
  dbGetQuery(db, sql)
}