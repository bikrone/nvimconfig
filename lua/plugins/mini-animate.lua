return {
  "echasnovski/mini.animate",
  event = "VeryLazy",
  config = function() 
    local animate = require("mini.animate")
    animate.setup({
      resize = {
        timing = animate.gen_timing.linear({ duration = 50, unit = "total" }),
      },
      scroll = {
        timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
        subscroll = animate.gen_subscroll.equal({
          predicate = function(total_scroll)
            if mouse_scrolled then
              mouse_scrolled = false
              return false
            end
            return total_scroll > 1
          end,
        }),
      },
      cursor = {
        timing = animate.gen_timing.linear({ duration = 20, unit = "total" }),
      }

    })
  end
}
