return {
  servers = {
    "clangd",
    "cmake",
    "cssls",
    "html",
    "intelephense",
    "jsonls",
    "pyright",
    "sqls",
    "sumneko_lua",
    "texlab",
    "tsserver",
    "yamlls",
  },
  skip_setup = { "tsserver", "clangd" },
  ["server-settings"] = {
    clangd = { capabilities = { offsetEncoding = "utf-8" } },
    pyright = {
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "on",
          },
        },
      },
    },
    sqls = {
      on_attach = function(client, bufnr)
        if client.name == "sqls" then
          require("sqls").on_attach(client, bufnr)
        end
      end,
    },
  },
}
