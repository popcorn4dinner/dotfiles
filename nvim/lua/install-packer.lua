-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
	if vim.fn.input("Install packer.nvim? (y)") ~= "y" then
		return
	end

	local directory = string.format(
	'%s/site/pack/packer/opt/',
	vim.fn.stdpath('data')
	)

	vim.fn.mkdir(directory, 'p')

	local git_clone_cmd = vim.fn.system(string.format(
	'git clone %s %s',
	'https://github.com/wbthomason/packer.nvim',
	directory .. '/packer.nvim'
	))

	print(git_clone_cmd)
	print("Installed packer.nvim...")

	return
end
