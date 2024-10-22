local fs = require("filesystem")

-- Funktion, um den Computer zu löschen
function deleteComputer()
    -- Bestätigungsaufforderung
    print("Möchtest du alle Dateien im Computer wirklich löschen? (ja/nein)")
    local confirmation = io.read()

    if confirmation == "ja" then
        local path = "/"

        -- Alle Dateien im Computer-Verzeichnis löschen
        for file in fs.list(path) do
            local filePath = path .. file
            if fs.isDirectory(filePath) then
                fs.remove(filePath) -- Entfernt das Verzeichnis
            else
                fs.remove(filePath) -- Entfernt die Datei
            end
        end
        print("Alle Dateien wurden gelöscht.")
    else
        print("Löschvorgang abgebrochen.")
    end
end

-- Hauptprogramm starten
deleteComputer()
