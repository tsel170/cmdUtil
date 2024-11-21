@echo off

set /p dirName=Enter dir name in one word:

mkdir %dirName%


explorer "%cd%\%dirName%"


cd %dirName%

set "new_script_path=open_vs_code.cmd"
(
    echo @echo off
    echo code .
    echo exit
) > "%new_script_path%"



set "new_script_path=open_vs&&html.cmd"
(
    echo @echo off
echo start "" "index.html"
    echo code .
    echo exit
) > "%new_script_path%"



set "html_file=index.html"



(
    echo ^<!DOCTYPE html^>
    echo ^<html lang="en"^>
    echo ^<head^>
    echo     ^<meta charset="UTF-8"^>
    echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<link rel="stylesheet" href="style.css"^>
    echo     ^<title^>Document^</title^>
    echo ^</head^>
    echo ^<body^>
    echo     ^<script src="index.js"^>^</script^>
    echo ^</body^>
    echo ^</html^>
) > "%html_file%"

start "" "index.html"


set "js_file=index.js"
type nul > "%js_file%"


set "css_file=style.css"
type nul > "%css_file%"


code .

exit
