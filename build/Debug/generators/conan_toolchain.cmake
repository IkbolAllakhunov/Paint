

# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()

message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")

if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()




########## generic_system block #############
# Definition of system, platform and toolset
#############################################







# Set the architectures for which to build.
set(CMAKE_OSX_ARCHITECTURES arm64 CACHE STRING "" FORCE)
# Setting CMAKE_OSX_SYSROOT SDK, when using Xcode generator the name is enough
# but full path is necessary for others
set(CMAKE_OSX_SYSROOT macosx CACHE STRING "" FORCE)
set(BITCODE "")
set(FOBJC_ARC "")
set(VISIBILITY "")
#Check if Xcode generator is used, since that will handle these flags automagically
if(CMAKE_GENERATOR MATCHES "Xcode")
  message(DEBUG "Not setting any manual command-line buildflags, since Xcode is selected as generator.")
else()
    string(APPEND CONAN_C_FLAGS " ${BITCODE} ${VISIBILITY} ${FOBJC_ARC}")
    string(APPEND CONAN_CXX_FLAGS " ${BITCODE} ${VISIBILITY} ${FOBJC_ARC}")
endif()

string(APPEND CONAN_CXX_FLAGS " -stdlib=libc++")


message(STATUS "Conan toolchain: C++ Standard 17 with extensions ON")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Conan conf flags start: 
# Conan conf flags end

foreach(config IN LISTS CMAKE_CONFIGURATION_TYPES)
    string(TOUPPER ${config} config)
    if(DEFINED CONAN_CXX_FLAGS_${config})
      string(APPEND CMAKE_CXX_FLAGS_${config}_INIT " ${CONAN_CXX_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_C_FLAGS_${config})
      string(APPEND CMAKE_C_FLAGS_${config}_INIT " ${CONAN_C_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_SHARED_LINKER_FLAGS_${config})
      string(APPEND CMAKE_SHARED_LINKER_FLAGS_${config}_INIT " ${CONAN_SHARED_LINKER_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_EXE_LINKER_FLAGS_${config})
      string(APPEND CMAKE_EXE_LINKER_FLAGS_${config}_INIT " ${CONAN_EXE_LINKER_FLAGS_${config}}")
    endif()
endforeach()

if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()


get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
list(PREPEND CMAKE_MODULE_PATH "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib/cmake/Qt6Widgets" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib/cmake/Qt6Gui" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/bin" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib/cmake/Qt6Core" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib/cmake/Qt6")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The explicitly defined "builddirs" of "host" context dependencies must be in PREFIX_PATH
list(PREPEND CMAKE_PREFIX_PATH "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib/cmake/Qt6Widgets" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib/cmake/Qt6Gui" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/bin" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib/cmake/Qt6Core" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib/cmake/Qt6")
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_LIBRARY_PATH "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/plugins/imageformats" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/plugins/platforms" "lib" "lib" "lib" "lib" "lib" "lib" "lib" "lib" "lib" "lib")
list(PREPEND CMAKE_INCLUDE_PATH "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtXml" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtConcurrent" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtOpenGLWidgets" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtOpenGL" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtPrintSupport" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtWidgets" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtTest" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtSql" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtNetwork" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtGui" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/mkspecs/macx-clang" "/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/include/QtCore" "include" "include" "include" "include" "include" "include" "include" "include" "include" "include")



if (DEFINED ENV{PKG_CONFIG_PATH})
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR}:$ENV{PKG_CONFIG_PATH}")
else()
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR}:")
endif()




# Variables
# Variables  per configuration


# Preprocessor definitions
# Preprocessor definitions per configuration


if(CMAKE_POLICY_DEFAULT_CMP0091)  # Avoid unused and not-initialized warnings
endif()
