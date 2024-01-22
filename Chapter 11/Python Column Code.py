# 'dataset' holds the input data for this script
import geopandas

dataset[['LatLong','Description']] =  geopandas.tools.geocode(dataset.Name) 