# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/math
    REF boost-${VERSION}
    SHA512 5f5aec5c7c2de137fc8b69e33a3f0aa6c18b63292a66508cb68c86d3c1c27455f73432218e90cbd47e919e0be84a6d25af39aa1c4b9a223c013a948c029b7251
    HEAD_REF master
)

vcpkg_replace_string("${SOURCE_PATH}/build/Jamfile.v2"
    "import ../../config/checks/config"
    "import ../config/checks/config"
)
file(COPY "${CURRENT_INSTALLED_DIR}/share/boost-config/checks" DESTINATION "${SOURCE_PATH}/config")
include(${CURRENT_HOST_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(SOURCE_PATH ${SOURCE_PATH})
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
