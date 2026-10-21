return {
  {
    "isakbm/gitgraph.nvim",
    -- O diffview é opcional, mas é o melhor par para o gitgraph
    -- para você conseguir ver o que mudou em cada commit clicado.
    dependencies = { "sindrets/diffview.nvim" },
    opts = {
      symbols = {
        merge_commit = "M",
        commit = "*",
      },
      format = {
        timestamp = "%H:%M:%S %d-%m-%Y",
        fields = { "hash", "timestamp", "author", "branch_name", "tag" },
      },
      hooks = {
        -- Abre o Diffview quando você clica em um commit (usando <CR>)
        on_select_commit = function(commit)
          vim.notify("Abrindo diff do commit: " .. commit.hash)
          vim.cmd(":DiffviewOpen " .. commit.hash .. "^!")
        end,
        -- Abre o Diffview para um range de commits (selecionando no modo visual)
        on_select_range_commit = function(from, to)
          vim.notify("Abrindo diff entre: " .. from.hash .. " e " .. to.hash)
          vim.cmd(":DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
        end,
      },
    },
    keys = {
      {
        "<leader>gl",
        function()
          require("gitgraph").draw({}, { all = true, max_count = 5000 })
        end,
        desc = "GitGraph - Desenhar Árvore",
      },
    },
  },
}
