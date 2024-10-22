-- Script: Inventory Viewer
-- Zeigt den Inhalt des ausgewählten Inventarplatzes an und kopiert es in den Chat

function getItemDetails()
    local slot = turtle.getSelectedSlot() -- Wählt den aktuellen Inventarplatz aus
    local item = turtle.getItemDetail(slot) -- Holt die Details des Items

    if item then
        -- Gibt die Item-Details aus
        print("Item Name: " .. item.name)
        print("Item Count: " .. item.count)
        -- Hier könntest du eine Funktion hinzufügen, um das Item in den Chat zu kopieren
    else
        print("Kein Item im aktuellen Slot.")
    end
end

getItemDetails()
