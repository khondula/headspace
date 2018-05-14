# headspaceR

Tools for processing dissolved gas sample data in R.

Workflow:

- Inputs needed: 
    1. File with peak areas from GC (one row per sample) containing a "machineID" column
    1. File with calibration curve data
    1. File to match "machineID" to field sample ID
- If the calibration curve data and sample ID data are in the same file, use XX function to separate them into 2 files


1. Use `gc-calc-ppms.Rmd` worksheet to calculate PPM from peak areas and calibration curves, and save file of ppms_ID-ID.csv - make this a function of the input files
1. Then use `ppms_add_field_info` (just R currently, not Rmd) to add field sample IDs, merging on machine ID. save csv file of ppms_sampleinfo **get this file to return NA values**
- *If adding to database* use `db-insert-hs-ppms.Rmd` to add ppm values to database
- then use `hs-calcs-DATE.R` to calculate dissolved gas concentrations **update to include more input options** and save sdg_results
- *add sdg results to database*

### directory structure

```
├──db-insert-hs-ppms.Rmd
├──db-insert-hs-umols.Rmd
├──def.calc.sdg.R
├──R/
  ├──db_add_method.R
  ├──db_add_new_variable.R
  ├──db_add_site.R
  ├──db_get_hs_source.R
├──data/
  ├──gc_results_db_test.csv
  ├──headspace_sources.csv
  ├──gsod_data.csv
```

**Workflows**

1. `db-insert-hs-ppms.Rmd` - insert new headspace and source air samples and associated PPM values from GC analysis into ODM2 database

2. `db-insert-hs-ppms.Rmd` - insert dissolved gas concentrations derived from Henry's Law calculations for headspace samples using `def.calc.sdg()` function from [NEON-dissolved-gas](https://github.com/NEONScience/NEON-dissolved-gas) repository

**Functions**

* add a new method
* add a new variable
* add a new site
* get source air samples for headspace samples
  
**Data**

* ppms of sample and source air
* table of source air and sample combinations
* Global summary daily weather data for Dover AFB station, retrieved with the `GSODR` [package](https://github.com/ropensci/GSODR)

 
> This work is part of my "[Enhancing Reproducibility in Watershed Science](https://ropensci.org/blog/2018/02/14/announcing-2018-ropensci-fellows/)" project supported by [rOpenSci](https://ropensci.org/) and [SESYNC](https://www.sesync.org/).