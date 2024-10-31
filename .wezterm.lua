-- save in USERPROFILE/
local wezterm = require 'wezterm'
return {
    -- default_prog = {'wsl.exe', '-d', 'kali', '--cd', '~'},
    default_prog = {'wsl.exe', '-d', 'kali-linux', '--cd', '~'},
    default_cursor_style = 'BlinkingBar',
    color_schemes = {
        ['banana-blueberry'] = {
            foreground = '#cccccc',
            background = '#191323',
            cursor_bg = '#e07d13',
            cursor_border = '#e07d13',
            cursor_fg = '#ffffff',
            selection_bg = '#220525',
            selection_fg = '#f4f4f4',
            ansi = {
                '#17141f', '#ff6b7f', '#00bd9c', '#e6c62f', '#22e8df',
                '#dc396a', '#56b6c2', '#f1f1f1'
            },
            brights = {
                '#495162', '#fe9ea1', '#98c379', '#f9e46b', '#91fff4',
                '#da70d6', '#bcf3ff', '#ffffff'
            }
        },
        ['tokyonight-storm'] = {
            foreground = "#c0caf5",
            background = "#24283b",
            cursor_bg = "#c0caf5",
            cursor_border = "#c0caf5",
            cursor_fg = "#1d202f",
            selection_bg = "#364a82",
            selection_fg = "#c0caf5",
            ansi = {
                "#1d202f", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7",
                "#bb9af7", "#7dcfff", "#a9b1d6"
            },
            brights = {
                "#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7",
                "#bb9af7", "#7dcfff", "#c0caf5"
            }
        },
        ['custom-1'] = {
            foreground = "#dcd7ba",
            background = "#181616",
            cursor_bg = "#c8c093",
            cursor_fg = "#c8c093",
            cursor_border = "#c8c093",
            selection_fg = "#c8c093",
            selection_bg = "#2d4f67",
            scrollbar_thumb = "#16161d",
            split = "#16161d",
            ansi = {
                "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8",
                "#957fb8", "#6a9589", "#c8c093"
            },
            brights = {
                "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca",
                "#938aa9", "#7aa89f", "#dcd7ba"
            },
            indexed = {[16] = "#ffa066", [17] = "#ff5d62"}
        }
    },
    color_scheme = 'custom-1',
    font = wezterm.font_with_fallback(
        { -- RUN TERMINAL: wezterm ls-fonts --list-system
            {
                family = 'JetBrainsMono Nerd Font Propo',
                weight = 'Regular',
                stretch = 'Normal',
                style = 'Normal'
            }, 'JetBrainsMono Nerd Font Propo', 'Noto Color Emoji',
            'Symbols Nerd Font Mono'
        }),
    font_size = 13,
    window_background_opacity = 0.88,
    window_padding = {left = 0, right = 0, top = 0, bottom = 0},
    -- Habilitar la multiplexión con teclas rápidas
    keys = { -- Dividir horizontalmente
        {
            key = "d",
            mods = "CTRL|SHIFT",
            action = wezterm.action.SplitHorizontal {
                domain = "CurrentPaneDomain"
            }
        }, -- Dividir verticalmente
        {
            key = "d",
            mods = "CTRL|ALT",
            action = wezterm.action.SplitVertical {domain = "CurrentPaneDomain"}
        }, -- Navegar a la derecha
        {
            key = "RightArrow",
            mods = "CTRL|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Right")
        }, -- Navegar a la izquierda
        {
            key = "LeftArrow",
            mods = "CTRL|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Left")
        }, -- Navegar hacia abajo
        {
            key = "DownArrow",
            mods = "CTRL|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Down")
        }, -- Navegar hacia arriba
        {
            key = "UpArrow",
            mods = "CTRL|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Up")
        }, -- Cerrar el panel actual
        {
            key = "w",
            mods = "CTRL|SHIFT",
            action = wezterm.action.CloseCurrentPane {confirm = true}
        }, -- Ajustar el tamaño del panel (hacer zoom)
        -- Aumentar el ancho del panel actual
        {
            key = "RightArrow",
            mods = "CTRL|ALT",
            action = wezterm.action.AdjustPaneSize {"Right", 5}
        }, -- Reducir el ancho del panel actual
        {
            key = "LeftArrow",
            mods = "CTRL|ALT",
            action = wezterm.action.AdjustPaneSize {"Left", 5}
        }, -- Aumentar la altura del panel actual
        {
            key = "UpArrow",
            mods = "CTRL|ALT",
            action = wezterm.action.AdjustPaneSize {"Up", 5}
        }, -- Reducir la altura del panel actual
        {
            key = "DownArrow",
            mods = "CTRL|ALT",
            action = wezterm.action.AdjustPaneSize {"Down", 5}
        }
    },
    -- Habilitar pestañas
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true
}
