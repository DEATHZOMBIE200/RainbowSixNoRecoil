toggleKey = "scrolllock"

Horizontal= 0
Vertical= 20

delay = 10


function NoRecoil()
    repeat
        MoveMouseRelative(Horizontal, Vertical)
        Sleep(delay)
    until not IsMouseButtonPressed(1) or not IsMouseButtonPressed(3)
end


function OnEvent(event, arg)
    EnablePrimaryMouseButtonEvents(true);
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        Sleep(25)
        if IsMouseButtonPressed(3) then
            if IsKeyLockOn(toggleKey) then
                NoRecoil()
            end
        else
            while IsMouseButtonPressed(1) do
                Sleep(15)
                if IsMouseButtonPressed(3) then
                    NoRecoil()
                end
            end
        end
    end
end
