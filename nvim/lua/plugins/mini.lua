
return {

  { 

    "nvim-mini/mini.nvim",
    version = "*",
    config = function()
    require("mini.ai").setup()
    require("mini.surround").setup()
    require("mini.indentscope").setup()
    --require("mini.animate").setup()
    require("mini.cursorword").setup()
    end,

  },

}
