local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local fortune = require("alpha.fortune")

--dashboard.section.header.val = {
-- 	"        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⣒⡯⠓⠉⠀⢀⠀⢠⢀⡐⢄⢢⡐⢢⢁⠂⠄⠠⢀⠀⠀⠀⠀⠀⠀⠀⠀ ..⣄⡄",
-- 	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⡲⡥⠒⠋⠀⠀⡄⣌⠰⣘⣆⢧⡜⣮⣱⣎⠷⣌⡞⣌⡒⠤⣈⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⠖⠞⠒⠁⠀⠠⠐ ",
-- 	"⠀⠀⠀⠀⠀⠀⠀⠀⢀⡲⢛⡿⠋⠀⠀⢀⠢⠱⡜⣞⣳⠝⣘⣭⣼⣾⣷⣶⣶⣮⣬⣥⣙⠲⢡⢂⠡⢀⠀⠀⣠⠤⠒⡡⣞⡡⢀⡀⠤⠒⠉⠀⠀⠀ ",
-- 	"⠀⠀⠀⠀⠀⠀⠀⡗⢀⡶⠋⠀⠀⠀⢀⠢⣑⢣⠝⣪⣵⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣯⣻⢦⣍⠢⢅⣲⠈⢁⣤⠎⡀⠁⠀⠁⠀⠀⠀⠀⠀⠀⠀ ",
-- 	"⠀⠀⠀⠀⠀⠀⡸⢠⡟⠀⠀⢀⠀⠀⢆⡱⠌⣡⣞⣵⣿⣿⣿⠿⠛⠛⠉⠉⠛⠛⠿⢷⣽⣻⣦⣎⢳⣌⠆⣱⢃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
-- 	"⠀⠀⠀⠀⠀⡰⠇⠼⢿⡀⢀⠂⠠⠌⢢⢃⣾⣳⣿⢿⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢻⣏⠻⣷⣬⡳⣤⡂⠜⢠⡀⣀⠀⠀⡀⢀⡄⡄⠀⠐⠐ ",
-- 	"⠀⠀⠀⠀⡰⠁⡀⠐⡜⠳⣠⣀⠂⣌⢃⡾⣵⣿⢣⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡇⡊⣿⣿⣾⣽⣛⠶⣶⣬⣯⣥⣙⣟⢷⣶⢦⡦⢬ ",
-- 	"⠀⠀⠀⠀⡁⠀⠑⠤⠽⠤⣥⡒⠻⣌⣾⡫⣾⢃⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣾⡿⣿⣻⣯⡼⣟⢳⠉⠂ ",
-- 	"⠀⠀⠀⠀⠉⠉⠈⠁⠲⠑⡞⣚⣟⣿⣫⣼⣿⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢀⣀⣀⣠⣤⣤⣿⣿⣿⣿⣿⣻⣟⣯⣭⣷⣞⢻⣍⠷⠚⠃⠀⠀⠀ ",
-- 	"⠀⠀⠀⠀⠀⢀⢀⣤⣶⣽⣿⣿⣿⣼⣿⣿⣿⣿⣿⣀⣼⣀⣀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⠿⡛⠏⠍⣂⢥⣴⡋⢉⡀⠀⠀⠀⠀⠀ ",
-- 	"⠀⡠⣠⢵⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⠟⣿⠐⠨⣑⣆⣈⠝⣪⠳⠋⡀⠃⠀⠀⠀⠀⠀⠀ ",
-- 	"⣚⢶⣟⣾⣿⣿⣟⣛⣿⣿⣿⣿⣿⣿⠻⠿⢿⣯⣛⣿⣿⣿⣿⡛⠻⠿⣛⠻⠛⡛⠩⢁⣴⡾⢃⣾⣇⣒⠻⠚⣀⣤⠞⠁⠐⠉⠀⠀⠀⠀⠀⠀⠀⠀ ",
-- 	"⠭⢗⠞⠟⠋⠻⠞⣙⢺⠹⠐⡊⠂⡚⠗⠙⠊⠐⠙⣻⣷⣭⠛⠿⣶⣦⣤⣤⣴⣴⡾⣟⣯⣾⣿⡏⠁⠂⡶⠟⠛⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
-- 	"⢀⢀⠈⡀⠂⠄⡀⠀⠁⠈⠁⠁⠀⠈⠀⠀⠀⠀⠀⠈⠙⢻⢿⢶⣤⣬⣉⣉⣭⣴⣾⣿⣿⡿⣃⠤⡼⠋⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
-- 	"⠈⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⡜⢮⡳⠿⡽⣿⠿⠿⠟⠻⡭⠓⠑⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
-- 	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⣀⣐⡶⠖⠀⠉⠂⠉⠉⠉⠈⣘⡁⠜⠚⠉⠁⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
-- }
--
_Gopts = {
	position = "center",
	hl = "Type",
	wrap = "overflow",
}
local function get_all_files_in_dir(dir)
	local files = {}
	-- print("Searching directory: " .. dir)
	local scan = vim.fn.globpath(dir, "**/*.lua", true, true)
	-- print("Found files: " .. vim.inspect(scan))
	for _, file in ipairs(scan) do
		table.insert(files, file)
	end
	return files
end

-- local function load_random_header()
-- 	math.randomseed(os.time())
-- 	-- Use dynamic path construction
-- 	local header_dir = vim.fn.stdpath("config") .. "/after/plugin/alpha_ascii/"
-- 	print("Header directory: " .. header_dir)
-- 	local files = get_all_files_in_dir(header_dir)
-- 	print("Number of files found: " .. #files)
--
-- 	if #files == 0 then
-- 		return nil
-- 	end
--
-- 	local random_file = files[math.random(#files)]
-- 	print("Selected file: " .. random_file)
-- 	local relative_path = random_file:sub(#header_dir + 1)
-- 	local module_name = "after.plugin.alpha_ascii." .. relative_path:gsub("/", "."):gsub("\\", "."):gsub("%.lua$", "")
-- 	print("Module name: " .. module_name)
--
-- 	package.loaded[module_name] = nil
--
-- 	local ok, module = pcall(require, module_name)
-- 	if ok and module.header then
-- 		print("Successfully loaded header module")
-- 		return module.header
-- 	else
-- 		print("Failed to load module: " .. (ok and "module exists but no header" or "module not found"))
-- 		return nil
-- 	end
-- end
local function load_random_header()
	math.randomseed(os.time())
	local header_folder = vim.fn.stdpath("config") .. "/after/plugin/alpha_ascii/"
	local files = get_all_files_in_dir(header_folder)

	if #files == 0 then
		return nil
	end

	local random_file = files[math.random(#files)]

	-- Use dofile with the absolute path to load the module directly
	local ok, result = pcall(dofile, random_file)

	if ok and result and result.header then
		return result.header
	else
		return nil
	end
end

local function change_header()
	local new_header = load_random_header()
	if new_header then
		dashboard.config.layout[2] = new_header
		vim.cmd("AlphaRedraw")
	else
		print("No images inside header_img folder.")
	end
end

local header = load_random_header()
if header then
	dashboard.config.layout[2] = header
else
	print("No images inside header_img folder.")
end

dashboard.section.buttons.val = {
	dashboard.button("w", "Magic", function()
		change_header()
	end),
}
dashboard.section.footer.val = fortune()
alpha.setup(dashboard.opts)
