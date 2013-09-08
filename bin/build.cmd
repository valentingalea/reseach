@echo off

set ALL=_all.md
set OUT=FAQ

del %ALL%

for %%i in (..\src\*.md) do (
	type %%i
	echo.
	echo -------------------------------------------
	echo.
) >> %ALL%

pandoc %ALL% -o %OUT%.pdf --toc --toc-depth=5
pandoc %ALL% -o %OUT%.html --toc --toc-depth=5 --to html5

start %OUT%.pdf

