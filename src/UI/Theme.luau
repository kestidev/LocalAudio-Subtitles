local LocalAudioSubtitlesTypes = require(script.Parent.Parent:WaitForChild("LocalAudioSubtitlesTypes"))
local Theme = {}

Theme._Font = Enum.Font.SourceSans
Theme._BackgroundColor = Color3.fromRGB(0, 0, 0)

function Theme:BackgroundColor()
    return Theme._BackgroundColor
end

function Theme:Font()
    return Theme._Font
end

function Theme:ApplyOverrides(Overrides: LocalAudioSubtitlesTypes.Theme)
    Theme._Font = Overrides.Font or Enum.Font.SourceSans
    Theme._BackgroundColor = Overrides.BackgroundColor or Color3.fromRGB(0,0,0)
end

return Theme