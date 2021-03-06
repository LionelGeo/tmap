\dontrun{
	data(NLD_muni, NLD_prov)
	m <- tm_shape(NLD_muni) +
		     tm_fill(col="population", convert2density=TRUE, 
		         style="kmeans", title="Population (per km2)", legend.hist=FALSE) +
		     tm_borders("black", alpha=.5) + 
		 tm_shape(NLD_prov) +
		     tm_borders("grey25", lwd=2) +
	     tm_format_NLD(inner.margins = c(.02, .15, .06, .15)) + 
	     tm_scale_bar(position = c("left", "bottom")) +
	     tm_compass(position=c("right", "bottom")) + 
	     tm_style_classic()
	
	save_tmap(m, "choropleth.png", height=7)
	
	m2 <- tm_shape(World) +
		tm_fill("well_being", id="name", title="Well-being") +
		tm_format_World()

	# save image
	save_tmap(m2, "World_map.png", width=1920, height=1080)

	# save interactive plot
	save_tmap(m2, "World_map.html")
}
