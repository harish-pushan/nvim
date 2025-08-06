-- Harpoon

return {
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<A-a>", function() require("harpoon.mark").add_file() end,        desc = "Harpoon Add File" },

      { "<A-e>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon Menu" },

      { "<A-1>", function() require("harpoon.ui").nav_file(1) end,         desc = "Harpoon first in buffer" },
      { "<A-2>", function() require("harpoon.ui").nav_file(2) end,         desc = "Harpoon first in buffer" },

      { "<A-3>", function() require("harpoon.ui").nav_file(3) end,         desc = "Harpoon first in buffer" },
      { "<A-4>", function() require("harpoon.ui").nav_file(4) end,         desc = "Harpoon first in buffer" },

    },
  }
}
