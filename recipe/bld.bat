set "CMAKE_ARGS='%CMAKE_ARGS% -DBUILD_DOC:BOOL=OFF -DVERSION_STRING:STRING=%PKG_VERSION%'"

echo "CMAKE_ARGS: %CMAKE_ARGS%"

"%PYTHON%" -m pip install . -vv

if errorlevel 1 exit 1