local Window = libraryCreateWindow('Whatever you want the window to be called!')
WindowSection('The text you'd like to add for the section')
local Toggle = WindowToggle(Do whatever, {flag = ThisNeedsToBeRemembered})
spawn( 
    function() --Makes this a new loop within the running script so it doesn't interfere with the rest of the script
        while wait(1) do
            if Window.flags.ThisNeedsToBeRemembered then
                print(Wow such stuff is happening, THIS IS ENABLED. Also, you can print the value (true  false) by doing, Window.flags.ThisNeedsToBeRemembered)
            end
        end
    end
)