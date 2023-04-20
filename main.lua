-- Fonction pour afficher le menu de chargement
local function showLoadingMenu()
    print("Chargement en cours...")
    -- Ajoutez ici tout code pour afficher un menu de chargement à l'utilisateur
end

-- Fonction pour rechercher l'ID de jeu
local function findGameId()
    -- Insérez ici le code pour effectuer la recherche de l'ID de jeu, par exemple :
    local gameId = "2753915549" -- Exemple d'ID trouvé

    -- Retourne l'ID trouvé ou nil s'il n'a pas été trouvé
    return gameId
end

-- Fonction pour exécuter le script en fonction de l'ID de jeu
local function executeScript(gameId)
    if gameId == "3260590327" then
        -- Si l'ID du jeu est 3260590327, exécutez le script suivant
        loadstring(game:HttpGet("https://raw.githubusercontent.com/frrp9/auto-farm-drems-/main/Tower_Defense_Simulator.lua"))()
    elseif gameId == "2753915549" then
        -- Si l'ID du jeu est 2753915549, exécutez le script suivant
        loadstring(game:HttpGet("https://pastebin.com/raw/HH8YbxzC"))()
    else
        -- Si l'ID du jeu n'a pas été trouvé, affichez un message d'erreur
        print("ID de jeu non valide")
    end
end

-- Fonction principale pour lancer le chargement et l'exécution de script
local function main()
    showLoadingMenu()
    local gameId = findGameId()
    if gameId then
        executeScript(gameId)
    else
        print("Impossible de trouver l'ID du jeu")
    end
end

main() -- Lancer la fonction principale
