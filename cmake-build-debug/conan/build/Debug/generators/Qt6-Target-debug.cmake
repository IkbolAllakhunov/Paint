# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(qt_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(qt_FRAMEWORKS_FOUND_DEBUG "${qt_FRAMEWORKS_DEBUG}" "${qt_FRAMEWORK_DIRS_DEBUG}")

set(qt_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET qt_DEPS_TARGET)
    add_library(qt_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET qt_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${qt_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${qt_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:Qt6::Core;Qt6::Gui;Qt6::Widgets;Qt6::OpenGL;Qt6::EntryPointImplementation>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### qt_DEPS_TARGET to all of them
conan_package_library_targets("${qt_LIBS_DEBUG}"    # libraries
                              "${qt_LIB_DIRS_DEBUG}" # package_libdir
                              "${qt_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_LIBRARY_TYPE_DEBUG}"
                              "${qt_IS_HOST_WINDOWS_DEBUG}"
                              qt_DEPS_TARGET
                              qt_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "qt"    # package_name
                              "${qt_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${qt_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Debug ########################################

    ########## COMPONENT Qt6::EntryPointPrivate #############

        set(qt_Qt6_EntryPointPrivate_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_EntryPointPrivate_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_EntryPointPrivate_FRAMEWORKS_DEBUG}" "${qt_Qt6_EntryPointPrivate_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_EntryPointPrivate_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_EntryPointPrivate_DEPS_TARGET)
            add_library(qt_Qt6_EntryPointPrivate_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_EntryPointPrivate_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_EntryPointPrivate_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_EntryPointPrivate_LIBS_DEBUG}"
                              "${qt_Qt6_EntryPointPrivate_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_EntryPointPrivate_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_EntryPointPrivate_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_EntryPointPrivate_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_EntryPointPrivate_DEPS_TARGET
                              qt_Qt6_EntryPointPrivate_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_EntryPointPrivate"
                              "${qt_Qt6_EntryPointPrivate_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::EntryPointPrivate
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_EntryPointPrivate_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::EntryPointPrivate
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_EntryPointPrivate_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::EntryPointPrivate PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::EntryPointPrivate PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::EntryPointPrivate PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::EntryPointPrivate PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::EntryPointPrivate PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointPrivate_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::EntryPointImplementation #############

        set(qt_Qt6_EntryPointImplementation_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_EntryPointImplementation_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_EntryPointImplementation_FRAMEWORKS_DEBUG}" "${qt_Qt6_EntryPointImplementation_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_EntryPointImplementation_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_EntryPointImplementation_DEPS_TARGET)
            add_library(qt_Qt6_EntryPointImplementation_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_EntryPointImplementation_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_EntryPointImplementation_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_EntryPointImplementation_LIBS_DEBUG}"
                              "${qt_Qt6_EntryPointImplementation_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_EntryPointImplementation_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_EntryPointImplementation_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_EntryPointImplementation_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_EntryPointImplementation_DEPS_TARGET
                              qt_Qt6_EntryPointImplementation_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_EntryPointImplementation"
                              "${qt_Qt6_EntryPointImplementation_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::EntryPointImplementation
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_EntryPointImplementation_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::EntryPointImplementation
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_EntryPointImplementation_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::EntryPointImplementation PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::EntryPointImplementation PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::EntryPointImplementation PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::EntryPointImplementation PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::EntryPointImplementation PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_EntryPointImplementation_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::Xml #############

        set(qt_Qt6_Xml_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_Xml_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_Xml_FRAMEWORKS_DEBUG}" "${qt_Qt6_Xml_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_Xml_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_Xml_DEPS_TARGET)
            add_library(qt_Qt6_Xml_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_Xml_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_Xml_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_Xml_LIBS_DEBUG}"
                              "${qt_Qt6_Xml_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_Xml_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_Xml_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_Xml_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_Xml_DEPS_TARGET
                              qt_Qt6_Xml_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_Xml"
                              "${qt_Qt6_Xml_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::Xml
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_Xml_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::Xml
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_Xml_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::Xml PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Xml PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Xml PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Xml PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Xml PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Xml_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::Concurrent #############

        set(qt_Qt6_Concurrent_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_Concurrent_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_Concurrent_FRAMEWORKS_DEBUG}" "${qt_Qt6_Concurrent_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_Concurrent_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_Concurrent_DEPS_TARGET)
            add_library(qt_Qt6_Concurrent_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_Concurrent_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_Concurrent_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_Concurrent_LIBS_DEBUG}"
                              "${qt_Qt6_Concurrent_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_Concurrent_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_Concurrent_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_Concurrent_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_Concurrent_DEPS_TARGET
                              qt_Qt6_Concurrent_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_Concurrent"
                              "${qt_Qt6_Concurrent_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::Concurrent
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_Concurrent_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::Concurrent
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_Concurrent_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::Concurrent PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Concurrent PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Concurrent PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Concurrent PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Concurrent PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Concurrent_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::OpenGLWidgets #############

        set(qt_Qt6_OpenGLWidgets_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_OpenGLWidgets_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_OpenGLWidgets_FRAMEWORKS_DEBUG}" "${qt_Qt6_OpenGLWidgets_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_OpenGLWidgets_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_OpenGLWidgets_DEPS_TARGET)
            add_library(qt_Qt6_OpenGLWidgets_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_OpenGLWidgets_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_OpenGLWidgets_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_OpenGLWidgets_LIBS_DEBUG}"
                              "${qt_Qt6_OpenGLWidgets_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_OpenGLWidgets_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_OpenGLWidgets_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_OpenGLWidgets_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_OpenGLWidgets_DEPS_TARGET
                              qt_Qt6_OpenGLWidgets_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_OpenGLWidgets"
                              "${qt_Qt6_OpenGLWidgets_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::OpenGLWidgets
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_OpenGLWidgets_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::OpenGLWidgets
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_OpenGLWidgets_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::OpenGLWidgets PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::OpenGLWidgets PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::OpenGLWidgets PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::OpenGLWidgets PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::OpenGLWidgets PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGLWidgets_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::OpenGL #############

        set(qt_Qt6_OpenGL_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_OpenGL_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_OpenGL_FRAMEWORKS_DEBUG}" "${qt_Qt6_OpenGL_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_OpenGL_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_OpenGL_DEPS_TARGET)
            add_library(qt_Qt6_OpenGL_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_OpenGL_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_OpenGL_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_OpenGL_LIBS_DEBUG}"
                              "${qt_Qt6_OpenGL_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_OpenGL_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_OpenGL_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_OpenGL_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_OpenGL_DEPS_TARGET
                              qt_Qt6_OpenGL_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_OpenGL"
                              "${qt_Qt6_OpenGL_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::OpenGL
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_OpenGL_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::OpenGL
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_OpenGL_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::OpenGL PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::OpenGL PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::OpenGL PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::OpenGL PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::OpenGL PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_OpenGL_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::PrintSupport #############

        set(qt_Qt6_PrintSupport_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_PrintSupport_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_PrintSupport_FRAMEWORKS_DEBUG}" "${qt_Qt6_PrintSupport_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_PrintSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_PrintSupport_DEPS_TARGET)
            add_library(qt_Qt6_PrintSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_PrintSupport_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_PrintSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_PrintSupport_LIBS_DEBUG}"
                              "${qt_Qt6_PrintSupport_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_PrintSupport_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_PrintSupport_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_PrintSupport_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_PrintSupport_DEPS_TARGET
                              qt_Qt6_PrintSupport_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_PrintSupport"
                              "${qt_Qt6_PrintSupport_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::PrintSupport
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_PrintSupport_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::PrintSupport
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_PrintSupport_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::PrintSupport PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::PrintSupport PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::PrintSupport PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::PrintSupport PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::PrintSupport PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_PrintSupport_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::Widgets #############

        set(qt_Qt6_Widgets_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_Widgets_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_Widgets_FRAMEWORKS_DEBUG}" "${qt_Qt6_Widgets_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_Widgets_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_Widgets_DEPS_TARGET)
            add_library(qt_Qt6_Widgets_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_Widgets_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_Widgets_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_Widgets_LIBS_DEBUG}"
                              "${qt_Qt6_Widgets_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_Widgets_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_Widgets_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_Widgets_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_Widgets_DEPS_TARGET
                              qt_Qt6_Widgets_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_Widgets"
                              "${qt_Qt6_Widgets_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::Widgets
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_Widgets_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::Widgets
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_Widgets_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::Widgets PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Widgets PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Widgets PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Widgets PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Widgets PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Widgets_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::Test #############

        set(qt_Qt6_Test_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_Test_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_Test_FRAMEWORKS_DEBUG}" "${qt_Qt6_Test_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_Test_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_Test_DEPS_TARGET)
            add_library(qt_Qt6_Test_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_Test_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_Test_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_Test_LIBS_DEBUG}"
                              "${qt_Qt6_Test_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_Test_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_Test_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_Test_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_Test_DEPS_TARGET
                              qt_Qt6_Test_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_Test"
                              "${qt_Qt6_Test_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::Test
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_Test_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::Test
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_Test_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::Test PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Test PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Test PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Test PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Test PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Test_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::Sql #############

        set(qt_Qt6_Sql_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_Sql_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_Sql_FRAMEWORKS_DEBUG}" "${qt_Qt6_Sql_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_Sql_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_Sql_DEPS_TARGET)
            add_library(qt_Qt6_Sql_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_Sql_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_Sql_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_Sql_LIBS_DEBUG}"
                              "${qt_Qt6_Sql_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_Sql_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_Sql_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_Sql_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_Sql_DEPS_TARGET
                              qt_Qt6_Sql_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_Sql"
                              "${qt_Qt6_Sql_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::Sql
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_Sql_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::Sql
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_Sql_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::Sql PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Sql PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Sql PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Sql PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Sql PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Sql_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::Network #############

        set(qt_Qt6_Network_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_Network_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_Network_FRAMEWORKS_DEBUG}" "${qt_Qt6_Network_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_Network_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_Network_DEPS_TARGET)
            add_library(qt_Qt6_Network_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_Network_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_Network_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_Network_LIBS_DEBUG}"
                              "${qt_Qt6_Network_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_Network_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_Network_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_Network_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_Network_DEPS_TARGET
                              qt_Qt6_Network_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_Network"
                              "${qt_Qt6_Network_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::Network
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_Network_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::Network
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_Network_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::Network PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Network PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Network PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Network PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Network PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Network_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::QIcoPlugin #############

        set(qt_Qt6_QIcoPlugin_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_QIcoPlugin_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_QIcoPlugin_FRAMEWORKS_DEBUG}" "${qt_Qt6_QIcoPlugin_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_QIcoPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_QIcoPlugin_DEPS_TARGET)
            add_library(qt_Qt6_QIcoPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_QIcoPlugin_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_QIcoPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_QIcoPlugin_LIBS_DEBUG}"
                              "${qt_Qt6_QIcoPlugin_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_QIcoPlugin_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_QIcoPlugin_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_QIcoPlugin_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_QIcoPlugin_DEPS_TARGET
                              qt_Qt6_QIcoPlugin_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_QIcoPlugin"
                              "${qt_Qt6_QIcoPlugin_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::QIcoPlugin
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_QIcoPlugin_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::QIcoPlugin
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_QIcoPlugin_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::QIcoPlugin PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QIcoPlugin PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QIcoPlugin PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QIcoPlugin PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QIcoPlugin PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QIcoPlugin_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::QGifPlugin #############

        set(qt_Qt6_QGifPlugin_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_QGifPlugin_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_QGifPlugin_FRAMEWORKS_DEBUG}" "${qt_Qt6_QGifPlugin_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_QGifPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_QGifPlugin_DEPS_TARGET)
            add_library(qt_Qt6_QGifPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_QGifPlugin_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_QGifPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_QGifPlugin_LIBS_DEBUG}"
                              "${qt_Qt6_QGifPlugin_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_QGifPlugin_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_QGifPlugin_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_QGifPlugin_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_QGifPlugin_DEPS_TARGET
                              qt_Qt6_QGifPlugin_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_QGifPlugin"
                              "${qt_Qt6_QGifPlugin_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::QGifPlugin
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_QGifPlugin_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::QGifPlugin
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_QGifPlugin_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::QGifPlugin PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QGifPlugin PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QGifPlugin PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QGifPlugin PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QGifPlugin PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QGifPlugin_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::QWindowsVistaStylePlugin #############

        set(qt_Qt6_QWindowsVistaStylePlugin_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_QWindowsVistaStylePlugin_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_QWindowsVistaStylePlugin_FRAMEWORKS_DEBUG}" "${qt_Qt6_QWindowsVistaStylePlugin_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_QWindowsVistaStylePlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_QWindowsVistaStylePlugin_DEPS_TARGET)
            add_library(qt_Qt6_QWindowsVistaStylePlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_QWindowsVistaStylePlugin_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_QWindowsVistaStylePlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_QWindowsVistaStylePlugin_LIBS_DEBUG}"
                              "${qt_Qt6_QWindowsVistaStylePlugin_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_QWindowsVistaStylePlugin_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_QWindowsVistaStylePlugin_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_QWindowsVistaStylePlugin_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_QWindowsVistaStylePlugin_DEPS_TARGET
                              qt_Qt6_QWindowsVistaStylePlugin_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_QWindowsVistaStylePlugin"
                              "${qt_Qt6_QWindowsVistaStylePlugin_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::QWindowsVistaStylePlugin
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_QWindowsVistaStylePlugin_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::QWindowsVistaStylePlugin
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_QWindowsVistaStylePlugin_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::QWindowsVistaStylePlugin PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QWindowsVistaStylePlugin PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QWindowsVistaStylePlugin PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QWindowsVistaStylePlugin PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QWindowsVistaStylePlugin PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsVistaStylePlugin_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::QWindowsIntegrationPlugin #############

        set(qt_Qt6_QWindowsIntegrationPlugin_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_QWindowsIntegrationPlugin_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_QWindowsIntegrationPlugin_FRAMEWORKS_DEBUG}" "${qt_Qt6_QWindowsIntegrationPlugin_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_QWindowsIntegrationPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_QWindowsIntegrationPlugin_DEPS_TARGET)
            add_library(qt_Qt6_QWindowsIntegrationPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_QWindowsIntegrationPlugin_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_QWindowsIntegrationPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_QWindowsIntegrationPlugin_LIBS_DEBUG}"
                              "${qt_Qt6_QWindowsIntegrationPlugin_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_QWindowsIntegrationPlugin_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_QWindowsIntegrationPlugin_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_QWindowsIntegrationPlugin_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_QWindowsIntegrationPlugin_DEPS_TARGET
                              qt_Qt6_QWindowsIntegrationPlugin_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_QWindowsIntegrationPlugin"
                              "${qt_Qt6_QWindowsIntegrationPlugin_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::QWindowsIntegrationPlugin
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_QWindowsIntegrationPlugin_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::QWindowsIntegrationPlugin
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_QWindowsIntegrationPlugin_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::QWindowsIntegrationPlugin PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QWindowsIntegrationPlugin PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QWindowsIntegrationPlugin PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QWindowsIntegrationPlugin PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::QWindowsIntegrationPlugin PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_QWindowsIntegrationPlugin_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::Gui #############

        set(qt_Qt6_Gui_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_Gui_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_Gui_FRAMEWORKS_DEBUG}" "${qt_Qt6_Gui_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_Gui_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_Gui_DEPS_TARGET)
            add_library(qt_Qt6_Gui_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_Gui_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_Gui_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_Gui_LIBS_DEBUG}"
                              "${qt_Qt6_Gui_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_Gui_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_Gui_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_Gui_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_Gui_DEPS_TARGET
                              qt_Qt6_Gui_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_Gui"
                              "${qt_Qt6_Gui_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::Gui
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_Gui_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::Gui
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_Gui_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::Gui PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Gui PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Gui PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Gui PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Gui PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Gui_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::Platform #############

        set(qt_Qt6_Platform_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_Platform_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_Platform_FRAMEWORKS_DEBUG}" "${qt_Qt6_Platform_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_Platform_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_Platform_DEPS_TARGET)
            add_library(qt_Qt6_Platform_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_Platform_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_Platform_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_Platform_LIBS_DEBUG}"
                              "${qt_Qt6_Platform_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_Platform_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_Platform_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_Platform_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_Platform_DEPS_TARGET
                              qt_Qt6_Platform_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_Platform"
                              "${qt_Qt6_Platform_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::Platform
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_Platform_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::Platform
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_Platform_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::Platform PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Platform PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Platform PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Platform PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Platform PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Platform_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT Qt6::Core #############

        set(qt_Qt6_Core_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(qt_Qt6_Core_FRAMEWORKS_FOUND_DEBUG "${qt_Qt6_Core_FRAMEWORKS_DEBUG}" "${qt_Qt6_Core_FRAMEWORK_DIRS_DEBUG}")

        set(qt_Qt6_Core_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt6_Core_DEPS_TARGET)
            add_library(qt_Qt6_Core_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt6_Core_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt6_Core_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt6_Core_LIBS_DEBUG}"
                              "${qt_Qt6_Core_LIB_DIRS_DEBUG}"
                              "${qt_Qt6_Core_BIN_DIRS_DEBUG}" # package_bindir
                              "${qt_Qt6_Core_LIBRARY_TYPE_DEBUG}"
                              "${qt_Qt6_Core_IS_HOST_WINDOWS_DEBUG}"
                              qt_Qt6_Core_DEPS_TARGET
                              qt_Qt6_Core_LIBRARIES_TARGETS
                              "_DEBUG"
                              "qt_Qt6_Core"
                              "${qt_Qt6_Core_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt6::Core
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt6_Core_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt6::Core
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt6_Core_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt6::Core PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Core PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Core PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_LIB_DIRS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Core PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Qt6::Core PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${qt_Qt6_Core_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::EntryPointPrivate APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::EntryPointImplementation APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::Xml APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::Concurrent APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::OpenGLWidgets APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::OpenGL APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::PrintSupport APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::Widgets APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::Test APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::Sql APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::Network APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::QIcoPlugin APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::QGifPlugin APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::QWindowsVistaStylePlugin APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::QWindowsIntegrationPlugin APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::Gui APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::Platform APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt6::Core APPEND)

########## For the modules (FindXXX)
set(qt_LIBRARIES_DEBUG qt::qt)
