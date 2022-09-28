-- Use the `default_options` as the second parameter, which uses
-- `foreground` for every mode. This is the inverse of the previous
-- setup configuration.
require 'colorizer'.setup {
  css = {
            RGB  = true;         -- #RGB hex codes
            RRGGBB   = true;         -- #RRGGBB hex codes
            names    = true;         -- "Name" codes like Blue
            RRGGBBAA = true;        -- #RRGGBBAA hex codes
            rgb_fn   = false;        -- CSS rgb() and rgba() functions
            hsl_fn   = false;        -- CSS hsl() and hsla() functions
            css      = false;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn   = false;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
	        -- Available modes: foreground, background
	        mode     = 'background'; -- Set the display mode.
  }; -- Enable parsing rgb(...) functions in css.
  html = { names = false; } -- Disable parsing "names" like Blue or Gray
}
