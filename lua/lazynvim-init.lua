-- 1. 准备lazy.nvim模块（存在性检测）
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end


-- 2. 将 lazypath 设置为运行时路径
vim.opt.rtp:prepend(lazypath)


-- 3. 加载lazy.nvim模块，在.setup({})里添加"plugins"，让lazy.nvim加载plugins目录下的插件配置文件
--require("lazy").setup({})
require("lazy").setup("plugins")
