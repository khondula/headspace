db_get_hs_sources <- function(){
  sql <- "WITH t1 AS(
  SELECT 
  REL.samplingfeatureid,
  SF.samplingfeaturecode,
  REL.relationshiptypecv,
  REL.relatedfeatureid
  FROM 
  odm2.relatedfeatures REL,
  odm2.samplingfeatures SF
  WHERE 
  REL.samplingfeatureid = SF.samplingfeatureid
  AND REL.relationshiptypecv = 'isPartOf')
  
  SELECT
  t1.samplingfeaturecode source,
  SF2.samplingfeaturecode HS
  FROM
  t1,
  odm2.samplingfeatures SF2
  WHERE
  t1.relatedfeatureid = SF2.samplingfeatureid
  "
  sql <- gsub("\n", " ", sql)
  
  dbGetQuery(db, sql)  
}