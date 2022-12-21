export CMAKE_ARGS="${CMAKE_ARGS} -D BUILD_DOC:BOOL=OFF -D VERSION_STRING:STRING=${PKG_VERSION}"

echo "CMAKE_ARGS: ${CMAKE_ARGS}"
echo "CXX: ${CXX}"
echo "CC: ${CC}"

${PYTHON} -m pip install . -vv