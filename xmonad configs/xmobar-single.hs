-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- https://github.com/vicfryzel/xmonad-config

-- This xmobar config is for a single 4k display (3840x2160) and meant to be
-- used with the stalonetrayrc-single config.
--
-- If you're using a single display with a different resolution, adjust the
-- position argument below using the given calculation.
Config {
    -- Position xmobar along the top, with a stalonetray in the top right.
    -- Add right padding to xmobar to ensure stalonetray and xmobar don't
    -- overlap. stalonetrayrc-single is configured for 12 icons, each 23px
    -- wide.
    -- right_padding = num_icons * icon_size
    -- right_padding = 12 * 23 = 276
    -- Example: position = TopP 0 276
    position = TopP 0 276,
    font = "xft:iosevka-15",
    bgColor = "#000000",
    fgColor = "#ffffff",
    lowerOnStart = False,
    overrideRedirect = False,
    allDesktops = True,
    persistent = True,
    commands = [
        Run Network "enp3s0" ["-t","LAN: <rx>KB, <tx>KB","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "wlp2s0" ["-t","WiFi: <rx>KB, <tx>KB","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
	Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader%  }{  %enp3s0% | %wlp2s0% |  <fc=#FFFFCC>%date%</fc>"}
