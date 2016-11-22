library(googlesheets)
#in spread sheet 
#=ImportHTML("http://en.wikipedia.org/wiki/List_of_Bollywood_films_of_2012", "table", 2)

#import movie Lion
gs_gap() %>% 
gs_copy(to = "Gapminder")

gap <- gs_title("Lion")

lion <- gs_read(gap)

str(lion)

#import movie La La Land 

gap <- gs_title("La La Land")
la_la_land <- gs_read(gap)
str(la_la_land)
names(la_la_land) <- as.matrix(la_la_land[1, ])
la_la_land <- la_la_land[-1, ]
la_la_land[] <- lapply(la_la_land, function(x) type.convert(as.character(x)))

# import movie Spotlight 
gap <- gs_title("spotlight")
spotlight <- gs_read(gap)
str(spotlight)

#import Birdman 
gap <- gs_title("birdman")
birdman <- gs_read(gap)
str(birdman)
names(birdman) <- as.matrix(birdman[1, ])
birdman <- birdman[-1, ]
birdman[] <- lapply(birdman, function(x) type.convert(as.character(x)))


#import 12 Years A Slave 
gap <- gs_title("12 Years A Slave")
years <- gs_read(gap)
str(years)

#import Argo 
gap <- gs_title("Argo")
argo <- gs_read(gap)
str(argo)

#import The Artist 
gap <- gs_title("The Artist")
the_artist <- gs_read(gap)
str(the_artist)

#import Hacksaw Ridge  
gap <- gs_title("Hacksaw Ridge")
hacksaw <- gs_read(gap)
str(hacksaw)
names(hacksaw) <- as.matrix(hacksaw[1, ])
hacksaw <- hacksaw[-1, ]
hacksaw[] <- lapply(hacksaw, function(x) type.convert(as.character(x)))

#import movie Manchester By The Sea
gap <- gs_title("Manchester By The Sea")
manchester <- gs_read(gap)
str(manchester)

#import movie Sully 
gap <- gs_title("Sully")
sully <- gs_read(gap)
str(sully)
names(sully) <- as.matrix(sully[1, ])
sully <- sully[-1, ]
sully[] <- lapply(sully, function(x) type.convert(as.character(x)))

#import movie Moonlight 
gap <- gs_title("Moonlight")
moonlight <- gs_read(gap)
str(moonlight)

#import movie Loving 
gap <- gs_title("Loving")
loving <- gs_read(gap)
str(loving)


#import movie Jackie 
gap <- gs_title("Jackie")
jackie <- gs_read(gap)
str(jackie)
names(jackie) <- as.matrix(jackie[1, ])
jackie <- jackie[-1, ]
jackie[] <- lapply(jackie, function(x) type.convert(as.character(x)))

#import movie Arrival 
gap <- gs_title("Arrival")
arrival <- gs_read(gap)
str(arrival)
names(arrival) <- as.matrix(arrival[1, ])
arrival <- arrival[-1, ]
arrival[] <- lapply(arrival, function(x) type.convert(as.character(x)))

#import movie Fences

#import extra data 
gap <- gs_title("Other score")
other <- gs_read(gap)
str(other)
