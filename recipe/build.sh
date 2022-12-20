mkdir build -p
cd build

if [[ ${target_platform} =~ linux* ]]; then
	# https://github.com/conda-forge/boost-feedstock/issues/72
	sed -i '127s#;##g' ${PREFIX}/include/boost/python/detail/caller.hpp
fi

cmake -G "Ninja" \
      ${CMAKE_ARGS} \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      -D CMAKE_PREFIX_PATH:FILEPATH="${PREFIX}" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH="${SP_DIR}" \
      -D Python_ROOT_DIR:FILEPATH="${PREFIX}" \
      -D Python_FIND_STRATEGY="LOCATION" \
      -D BUILD_PY_LIB:BOOL="ON" \
      -D Boost_NO_BOOST_CMAKE:BOOL="ON" \
      -D VERSION_STRING:STRING="${PKG_VERSION}" \
      -D BUILD_DOC="OFF" \
      ..

ninja install
