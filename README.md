# headspace

Tools for processing dissolved gas sample data

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

 
> This work is part of my "Enhancing Reproducibility in Watershed Science" projected supported by [rOpenSci](https://ropensci.org/) and [SESYNC](https://www.sesync.org/).