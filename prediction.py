import math 

# Algor for Oscar Prediction 
# Factors
# 1 is yes, 0 is no
# First nomination / won before - 20% - first_nom, win_before, 
# subjective popularity (2 favourites agreed upon) - 20% - is_popular
# 2016 - Miller + Inarritu, 2015 - Linklater + Inarritu, 2014 - Cuaron + Scrocese, 2013 - Lee + Spielberg, 2012 -  Allen + Scorcese 
# nominated for Oscar for best film - 10% - best_film_nom
# won critics choice for best film - 20% won_cc_film
# number of oscar nominations - 30% num_movie_nominations 
# TODO figure out another factor or reweight



def best_director_prediction(name, win_before, first_nom, is_popular, num_movie_nominations, won_cc_film, best_film_nom):
         
         chance  = 0; 
         if win_before == 1: 
                  chance = 0.2 * 0.25
                  print (str(chance))
         if first_nom == 1: 
                  chance = 0.2 * 0.25 
                  print (str(chance))                  
         if is_popular == 1: 
                  chance = chance + (0.2 * 1) 
                  print (str(chance))                  
         if best_film_nom == 1: 
                  chance = chance + (0.1 * 0.68)
                  print (str(chance))                  
         if num_movie_nominations >= 9: 
                  chance = chance + (0.3 * 0.64) 
                  print (str(chance))                  
         if 8 >= num_movie_nominations >= 5 :
                  chance = chance + (0.3 * 0.36) 
                  print (str(chance))                  
         if num_movie_nominations < 5: 
                  chance = chance + (0.2 * 0.01)  
                  print (str(chance))                 
         if won_cc_film == 1: 
                  chance = chance + (0.2 * 0.71) 
        
         print( name + " has chance " + str(chance * 100)+ "% of winning Best Director " )
 
 #best_director_prediction("Miller", 0, 1, 1, 10, 0, 1)    