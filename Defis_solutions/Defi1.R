# Solutions du Défi 1

library(proustr)

# Assignez à cinq objets différents une citation aléatoire de Proust composée chacune d'une seule phrase;
objet1 <- proust_random()
objet2 <- proust_random()
objet3 <- proust_random()
objet4 <- proust_random()
objet5 <- proust_random()

# Créez un objet de longueur 5 avec ces cinq vecteurs atomiques;

Objet_long <- c(objet1, objet2, objet3, objet4, objet5)

# Amalgamez (collez) le premier et le dernier élément de ce vecteur, en les séparant avec une série d'astérisques *******.
paste(Objet_long[1], Objet_long[5], sep = "*******")

# Faites une copie du vecteur letters`.
copie_lettres <- letters

# Utilisez l'indiçage et la fonction paste() pour former le mot "abc".
paste(copie_lettres[1], copie_lettres[2], copie_lettres[3], sep = "")
