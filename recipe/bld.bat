set "CMAKE_ARGS=-DBUILD_DOC:BOOL=OFF -DVERSION_STRING:STRING=%PKG_VERSION%"

"%PYTHON%" -m pip install . -vv
if errorlevel 1 exit 1