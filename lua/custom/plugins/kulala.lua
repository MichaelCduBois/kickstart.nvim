return {
  "mistweaverco/kulala.nvim",
  keys = {
    {
      "<leader>Re",
      function() require("kulala").set_selected_env() end,
      desc = "Set selected environment",
    },
    {
      "<leader>Rs",
      function() require("kulala").run() end,
      desc = "Send request",
    },
    {
      "<leader>Ra",
      function() require("kulala").run_all() end,
      desc = "Send all requests",
    },
    {
      "<leader>Rb",
      function() require("kulala").scratchpad() end,
      desc = "Open scratchpad",
    },
  },
  -- only show for .http or .rest files
  ft = { "http", "rest" },
  opts = {
    env = {
      -- default to staging environment
      default = "staging",
      -- walk through dirs for http-client.env.json
      file = function()
        local dir = vim.fn.expand("%:p:h")
        while dir ~= "/" do
          local candidate = dir .. "/http-client.env.json"
          if vim.fn.filereadable(candidate) == 1 then
            return candidate
          end
          dir = vim.fn.fnamemodify(dir, ":h")
        end
        return nil
      end,
    },
    global_keymaps = false,
    global_keymaps_prefix = "<leader>R",
    kulala_keymaps_prefix = "",
    ui = {
      max_response_size = 1000000, -- 1 MB
      split_direction = "horizontal",
    },
  },
}
