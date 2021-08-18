--[[ 
	HttpUtils Library for ComputerCraft
	Authors: PentagonLP, SkyTheCodeMaster
	Version: 1.0
]]

os.loadAPI("/lib/fileutils")

--[[ Gets result of HTTP URL
	@param String url: The desired URL
	@return Table|boolean result|error: The result of the request; If the URL is not reachable, an error is printed in the terminal and boolean false is returned
--]]
function gethttpresult(url)
	if not http.checkURL(url) then
		print("ERROR: Url '" .. url .. "' is blocked in config. Unable to fetch data.")
		return false
	end
	local result,err = http.get(url)
	if not result then
		print("ERROR: Unable to reach '" .. url .. "' because '" .. err .. "'")
		return false
	end
	return result
end

--[[ Gets table from HTTP URL
	@param String url: The desired URL
	@return Table|boolean result|error: The content of the site parsed into a table; If the URL is not reachable, an error is printed in the terminal and boolean false is returned
--]]
function gethttpdata(url)
	local result = gethttpresult(url)
	if not result then 
		return false
	end
	local data = result.readAll()
	data = string.gsub(data,"\n","")
	if textutils.unserialize(data) == nil then 
		print("ERROR: Unable to parse data fetched from '" .. url .. "'")
		return false
	end
	return textutils.unserialize(data)
end

--[[ Download file HTTP URL
	@param String filepath: Filepath where to create file (if file already exists, it gets overwritten)
	@param String url: The desired URL
	@return nil|boolean nil|error: nil; If the URL is not reachable, an error is printed in the terminal and boolean false is returned
--]]
function downloadfile(filepath,url)
	local result = gethttpresult(url)
	if not result then 
		return false
	end
	fileutils.storeFile(filepath,result.readAll())
end