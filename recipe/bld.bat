mkdir build
cd build

cmake -G "Ninja" ^
      %CMAKE_ARGS% ^
      -D CMAKE_BUILD_TYPE:STRING="Release" ^
      -D CMAKE_PREFIX_PATH:FILEPATH="%PREFIX%" ^
      -D CMAKE_INSTALL_PREFIX:FILEPATH="%SP_DIR%" ^
      -D Python_EXECUTABLE:FILEPATH="%PYTHON%" ^
      -D Python_FIND_STRATEGY="LOCATION" ^
      -D Python_ROOT_DIR:FILEPATH="%PREFIX%" ^
      -D BUILD_PY_LIB:BOOL="ON" ^
      -D Boost_NO_BOOST_CMAKE:BOOL="ON" ^
      -D VERSION_STRING:STRING="%PKG_VERSION%" ^
      -D BUILD_DOC="OFF" ^
      ..

if errorlevel 1 exit 1
ninja install
if errorlevel 1 exit 1
