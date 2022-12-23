# Fonctions utiles

# Installation et activation de fonctions
lancer_extensions <- function() {
  
  # On crée ici notre fonction maison
  installer_extension <- function(x="stringr") {
    if(!x %in% rownames(installed.packages())) {install.packages(x)}
  }
  
  # On demande à R de nous demander quelles extensions sont à installer
  noms_extensions <- readline(prompt = "Quelles extensions activer? Sépare chaque nom d'extension par une virgule (ex.: data.table,dplyr,ggplot2). Réponse: ")
  
  # On segmente la réponse que nous avons fournie en prenant la virgule comme élément séparateur, puis on transforme la liste en vecteur
  noms_extensions_l <- strsplit(noms_extensions, ",")
  noms_extensions_v <- unlist(noms_extensions_l)
  
  # Boucle qui prend chaque élément du vecteur ci-dessus, le passe à la fonction maison puis à la fonction d'activation library()
  for(i in seq_along(noms_extensions_v)){
    if(length(noms_extensions_v) > 0){
      installer_extension(x = noms_extensions_v[i])
      library(noms_extensions_v[i], character.only = TRUE)
    }
  }
}
