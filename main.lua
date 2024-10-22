local fs = require("filesystem")

-- Funktion, um den Computer zu löschen
function deleteComputer()
    -- Aktuellen Computer-UUID abrufen
    local computerID = computer.getID()

    -- Bestätigungsaufforderung
    print("Möchtest du den Computer mit der ID " .. computerID .. " wirklich löschen? (ja/nein)")
    local confirmation = io.read()

    if confirmation == "ja" then
        -- Alle Dateien im Computer-Verzeichnis löschen
        local path = "/"
        for file in fs.list(path) do
            fs.remove(path .. file)
        end
        print("Computer wurde gelöscht.")
    else
        print("Löschvorgang abgebrochen.")
    end
end

-- Hauptprogramm starten
deleteComputer()
