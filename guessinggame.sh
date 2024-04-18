#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire actuel
get_file_count() {
    ls -l | grep "^-" | wc -l
}

# Fonction principale du jeu de devinettes
main() {
    correct_guess=$(get_file_count)  # Nombre de fichiers dans le répertoire actuel
    guess=0

    while [ $guess -ne $correct_guess ]; do
        echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
        read guess

        if [ $guess -lt $correct_guess ]; then
            echo "Trop bas. Essayez à nouveau !"
        elif [ $guess -gt $correct_guess ]; then
            echo "Trop haut. Essayez à nouveau !"
        else
            echo "Félicitations ! Vous avez deviné le bon nombre de fichiers : $correct_guess"
        fi
    done
}

# Appel de la fonction principale
main
