########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND qt_COMPONENT_NAMES Qt6::Core Qt6::Platform Qt6::Gui Qt6::QWindowsIntegrationPlugin Qt6::QWindowsVistaStylePlugin Qt6::QGifPlugin Qt6::QIcoPlugin Qt6::Network Qt6::Sql Qt6::Test Qt6::Widgets Qt6::PrintSupport Qt6::OpenGL Qt6::OpenGLWidgets Qt6::Concurrent Qt6::Xml Qt6::EntryPointImplementation Qt6::EntryPointPrivate)
list(REMOVE_DUPLICATES qt_COMPONENT_NAMES)
set(qt_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(qt_PACKAGE_FOLDER_DEBUG "C:/Users/ikbol/.conan2/p/b/qtd110934e84857/p")
set(qt_BUILD_MODULES_PATHS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Core/conan_qt_executables_variables.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Core/conan_qt_qt6_coreprivate.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Core/conan_qt_entry_point.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/Qt6ConfigExtras.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicAppleHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicCMakeHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicCMakeVersionHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicDependencyHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicExternalProjectHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicFinalizerHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicFindPackageHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicPluginHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicTargetHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicTestHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicToolHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicWalkLibsHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6/QtPublicWasmToolchainHelpers.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Core/Qt6CoreMacros.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Core/Qt6CoreConfigExtras.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Gui/conan_qt_qt6_guiprivate.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Widgets/conan_qt_qt6_widgetsprivate.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Widgets/Qt6WidgetsMacros.cmake")


set(qt_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtXml"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtConcurrent"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtOpenGLWidgets"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtOpenGL"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtPrintSupport"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtWidgets"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtTest"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtSql"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtNetwork"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtGui"
			"${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/mkspecs/win32-msvc"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtCore")
set(qt_RES_DIRS_DEBUG )
set(qt_DEFINITIONS_DEBUG "-DQT_XML_LIB"
			"-DQT_CONCURRENT_LIB"
			"-DQT_OPENGLWIDGETS_LIB"
			"-DQT_OPENGL_LIB"
			"-DQT_PRINTSUPPORT_LIB"
			"-DQT_WIDGETS_LIB"
			"-DQT_TEST_LIB"
			"-DQT_SQL_LIB"
			"-DQT_NETWORK_LIB"
			"-DQT_GUI_LIB"
			"-DQT_CORE_LIB")
set(qt_SHARED_LINK_FLAGS_DEBUG )
set(qt_EXE_LINK_FLAGS_DEBUG )
set(qt_OBJECTS_DEBUG )
set(qt_COMPILE_DEFINITIONS_DEBUG "QT_XML_LIB"
			"QT_CONCURRENT_LIB"
			"QT_OPENGLWIDGETS_LIB"
			"QT_OPENGL_LIB"
			"QT_PRINTSUPPORT_LIB"
			"QT_WIDGETS_LIB"
			"QT_TEST_LIB"
			"QT_SQL_LIB"
			"QT_NETWORK_LIB"
			"QT_GUI_LIB"
			"QT_CORE_LIB")
set(qt_COMPILE_OPTIONS_C_DEBUG )
set(qt_COMPILE_OPTIONS_CXX_DEBUG -permissive-;-Zc:__cplusplus)
set(qt_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib"
			"${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/plugins/imageformats"
			"${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/plugins/styles"
			"${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/plugins/platforms")
set(qt_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_LIBRARY_TYPE_DEBUG SHARED)
set(qt_IS_HOST_WINDOWS_DEBUG 1)
set(qt_LIBS_DEBUG Qt6EntryPointd Qt6Xmld Qt6Concurrentd Qt6OpenGLWidgetsd Qt6OpenGLd Qt6PrintSupportd Qt6Widgetsd Qt6Testd Qt6Sqld Qt6Networkd Qt6Guid Qt6Cored)
set(qt_SYSTEM_LIBS_DEBUG shell32 dwmapi uxtheme advapi32 gdi32 imm32 ole32 oleaut32 setupapi shlwapi user32 winmm winspool wtsapi32 shcore comdlg32 d3d9 runtimeobject d3d11 dxgi dxguid d2d1 dwrite d3d12 version authz synchronization)
set(qt_FRAMEWORK_DIRS_DEBUG )
set(qt_FRAMEWORKS_DEBUG )
set(qt_BUILD_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Widgets"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Gui"
			"${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/bin"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt6Core")
set(qt_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(qt_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_COMPILE_OPTIONS_C_DEBUG}>")
set(qt_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_EXE_LINK_FLAGS_DEBUG}>")


set(qt_COMPONENTS_DEBUG Qt6::Core Qt6::Platform Qt6::Gui Qt6::QWindowsIntegrationPlugin Qt6::QWindowsVistaStylePlugin Qt6::QGifPlugin Qt6::QIcoPlugin Qt6::Network Qt6::Sql Qt6::Test Qt6::Widgets Qt6::PrintSupport Qt6::OpenGL Qt6::OpenGLWidgets Qt6::Concurrent Qt6::Xml Qt6::EntryPointImplementation Qt6::EntryPointPrivate)
########### COMPONENT Qt6::EntryPointPrivate VARIABLES ############################################

set(qt_Qt6_EntryPointPrivate_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include")
set(qt_Qt6_EntryPointPrivate_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_EntryPointPrivate_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_EntryPointPrivate_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_EntryPointPrivate_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_EntryPointPrivate_RES_DIRS_DEBUG )
set(qt_Qt6_EntryPointPrivate_DEFINITIONS_DEBUG )
set(qt_Qt6_EntryPointPrivate_OBJECTS_DEBUG )
set(qt_Qt6_EntryPointPrivate_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt6_EntryPointPrivate_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_EntryPointPrivate_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_EntryPointPrivate_LIBS_DEBUG )
set(qt_Qt6_EntryPointPrivate_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_EntryPointPrivate_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_EntryPointPrivate_FRAMEWORKS_DEBUG )
set(qt_Qt6_EntryPointPrivate_DEPENDENCIES_DEBUG Qt6::EntryPointImplementation)
set(qt_Qt6_EntryPointPrivate_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_EntryPointPrivate_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_EntryPointPrivate_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_EntryPointPrivate_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_EntryPointPrivate_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_EntryPointPrivate_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_EntryPointPrivate_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_EntryPointPrivate_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_EntryPointPrivate_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_EntryPointPrivate_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::EntryPointImplementation VARIABLES ############################################

set(qt_Qt6_EntryPointImplementation_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include")
set(qt_Qt6_EntryPointImplementation_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_EntryPointImplementation_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_EntryPointImplementation_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_EntryPointImplementation_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_EntryPointImplementation_RES_DIRS_DEBUG )
set(qt_Qt6_EntryPointImplementation_DEFINITIONS_DEBUG )
set(qt_Qt6_EntryPointImplementation_OBJECTS_DEBUG )
set(qt_Qt6_EntryPointImplementation_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt6_EntryPointImplementation_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_EntryPointImplementation_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_EntryPointImplementation_LIBS_DEBUG Qt6EntryPointd)
set(qt_Qt6_EntryPointImplementation_SYSTEM_LIBS_DEBUG shell32)
set(qt_Qt6_EntryPointImplementation_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_EntryPointImplementation_FRAMEWORKS_DEBUG )
set(qt_Qt6_EntryPointImplementation_DEPENDENCIES_DEBUG )
set(qt_Qt6_EntryPointImplementation_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_EntryPointImplementation_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_EntryPointImplementation_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_EntryPointImplementation_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_EntryPointImplementation_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_EntryPointImplementation_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_EntryPointImplementation_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_EntryPointImplementation_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_EntryPointImplementation_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_EntryPointImplementation_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::Xml VARIABLES ############################################

set(qt_Qt6_Xml_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtXml")
set(qt_Qt6_Xml_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_Xml_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_Xml_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_Xml_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_Xml_RES_DIRS_DEBUG )
set(qt_Qt6_Xml_DEFINITIONS_DEBUG "-DQT_XML_LIB")
set(qt_Qt6_Xml_OBJECTS_DEBUG )
set(qt_Qt6_Xml_COMPILE_DEFINITIONS_DEBUG "QT_XML_LIB")
set(qt_Qt6_Xml_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_Xml_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_Xml_LIBS_DEBUG Qt6Xmld)
set(qt_Qt6_Xml_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_Xml_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_Xml_FRAMEWORKS_DEBUG )
set(qt_Qt6_Xml_DEPENDENCIES_DEBUG Qt6::Core)
set(qt_Qt6_Xml_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_Xml_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_Xml_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_Xml_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_Xml_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_Xml_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_Xml_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_Xml_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_Xml_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_Xml_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::Concurrent VARIABLES ############################################

set(qt_Qt6_Concurrent_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtConcurrent")
set(qt_Qt6_Concurrent_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_Concurrent_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_Concurrent_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_Concurrent_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_Concurrent_RES_DIRS_DEBUG )
set(qt_Qt6_Concurrent_DEFINITIONS_DEBUG "-DQT_CONCURRENT_LIB")
set(qt_Qt6_Concurrent_OBJECTS_DEBUG )
set(qt_Qt6_Concurrent_COMPILE_DEFINITIONS_DEBUG "QT_CONCURRENT_LIB")
set(qt_Qt6_Concurrent_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_Concurrent_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_Concurrent_LIBS_DEBUG Qt6Concurrentd)
set(qt_Qt6_Concurrent_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_Concurrent_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_Concurrent_FRAMEWORKS_DEBUG )
set(qt_Qt6_Concurrent_DEPENDENCIES_DEBUG Qt6::Core)
set(qt_Qt6_Concurrent_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_Concurrent_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_Concurrent_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_Concurrent_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_Concurrent_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_Concurrent_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_Concurrent_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_Concurrent_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_Concurrent_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_Concurrent_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::OpenGLWidgets VARIABLES ############################################

set(qt_Qt6_OpenGLWidgets_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtOpenGLWidgets")
set(qt_Qt6_OpenGLWidgets_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_OpenGLWidgets_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_OpenGLWidgets_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_OpenGLWidgets_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_OpenGLWidgets_RES_DIRS_DEBUG )
set(qt_Qt6_OpenGLWidgets_DEFINITIONS_DEBUG "-DQT_OPENGLWIDGETS_LIB")
set(qt_Qt6_OpenGLWidgets_OBJECTS_DEBUG )
set(qt_Qt6_OpenGLWidgets_COMPILE_DEFINITIONS_DEBUG "QT_OPENGLWIDGETS_LIB")
set(qt_Qt6_OpenGLWidgets_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_OpenGLWidgets_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_OpenGLWidgets_LIBS_DEBUG Qt6OpenGLWidgetsd)
set(qt_Qt6_OpenGLWidgets_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_OpenGLWidgets_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_OpenGLWidgets_FRAMEWORKS_DEBUG )
set(qt_Qt6_OpenGLWidgets_DEPENDENCIES_DEBUG Qt6::OpenGL Qt6::Widgets Qt6::Core)
set(qt_Qt6_OpenGLWidgets_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_OpenGLWidgets_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_OpenGLWidgets_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_OpenGLWidgets_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_OpenGLWidgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_OpenGLWidgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_OpenGLWidgets_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_OpenGLWidgets_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_OpenGLWidgets_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_OpenGLWidgets_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::OpenGL VARIABLES ############################################

set(qt_Qt6_OpenGL_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtOpenGL")
set(qt_Qt6_OpenGL_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_OpenGL_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_OpenGL_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_OpenGL_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_OpenGL_RES_DIRS_DEBUG )
set(qt_Qt6_OpenGL_DEFINITIONS_DEBUG "-DQT_OPENGL_LIB")
set(qt_Qt6_OpenGL_OBJECTS_DEBUG )
set(qt_Qt6_OpenGL_COMPILE_DEFINITIONS_DEBUG "QT_OPENGL_LIB")
set(qt_Qt6_OpenGL_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_OpenGL_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_OpenGL_LIBS_DEBUG Qt6OpenGLd)
set(qt_Qt6_OpenGL_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_OpenGL_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_OpenGL_FRAMEWORKS_DEBUG )
set(qt_Qt6_OpenGL_DEPENDENCIES_DEBUG Qt6::Gui Qt6::Core)
set(qt_Qt6_OpenGL_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_OpenGL_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_OpenGL_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_OpenGL_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_OpenGL_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_OpenGL_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_OpenGL_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_OpenGL_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_OpenGL_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_OpenGL_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::PrintSupport VARIABLES ############################################

set(qt_Qt6_PrintSupport_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtPrintSupport")
set(qt_Qt6_PrintSupport_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_PrintSupport_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_PrintSupport_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_PrintSupport_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_PrintSupport_RES_DIRS_DEBUG )
set(qt_Qt6_PrintSupport_DEFINITIONS_DEBUG "-DQT_PRINTSUPPORT_LIB")
set(qt_Qt6_PrintSupport_OBJECTS_DEBUG )
set(qt_Qt6_PrintSupport_COMPILE_DEFINITIONS_DEBUG "QT_PRINTSUPPORT_LIB")
set(qt_Qt6_PrintSupport_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_PrintSupport_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_PrintSupport_LIBS_DEBUG Qt6PrintSupportd)
set(qt_Qt6_PrintSupport_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_PrintSupport_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_PrintSupport_FRAMEWORKS_DEBUG )
set(qt_Qt6_PrintSupport_DEPENDENCIES_DEBUG Qt6::Gui Qt6::Widgets Qt6::Core)
set(qt_Qt6_PrintSupport_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_PrintSupport_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_PrintSupport_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_PrintSupport_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_PrintSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_PrintSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_PrintSupport_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_PrintSupport_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_PrintSupport_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_PrintSupport_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::Widgets VARIABLES ############################################

set(qt_Qt6_Widgets_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtWidgets")
set(qt_Qt6_Widgets_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_Widgets_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_Widgets_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_Widgets_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_Widgets_RES_DIRS_DEBUG )
set(qt_Qt6_Widgets_DEFINITIONS_DEBUG "-DQT_WIDGETS_LIB")
set(qt_Qt6_Widgets_OBJECTS_DEBUG )
set(qt_Qt6_Widgets_COMPILE_DEFINITIONS_DEBUG "QT_WIDGETS_LIB")
set(qt_Qt6_Widgets_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_Widgets_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_Widgets_LIBS_DEBUG Qt6Widgetsd)
set(qt_Qt6_Widgets_SYSTEM_LIBS_DEBUG dwmapi shell32 uxtheme)
set(qt_Qt6_Widgets_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_Widgets_FRAMEWORKS_DEBUG )
set(qt_Qt6_Widgets_DEPENDENCIES_DEBUG Qt6::Gui Qt6::Core)
set(qt_Qt6_Widgets_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_Widgets_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_Widgets_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_Widgets_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_Widgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_Widgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_Widgets_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_Widgets_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_Widgets_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_Widgets_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::Test VARIABLES ############################################

set(qt_Qt6_Test_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtTest")
set(qt_Qt6_Test_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_Test_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_Test_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_Test_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_Test_RES_DIRS_DEBUG )
set(qt_Qt6_Test_DEFINITIONS_DEBUG "-DQT_TEST_LIB")
set(qt_Qt6_Test_OBJECTS_DEBUG )
set(qt_Qt6_Test_COMPILE_DEFINITIONS_DEBUG "QT_TEST_LIB")
set(qt_Qt6_Test_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_Test_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_Test_LIBS_DEBUG Qt6Testd)
set(qt_Qt6_Test_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_Test_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_Test_FRAMEWORKS_DEBUG )
set(qt_Qt6_Test_DEPENDENCIES_DEBUG Qt6::Core)
set(qt_Qt6_Test_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_Test_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_Test_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_Test_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_Test_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_Test_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_Test_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_Test_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_Test_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_Test_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::Sql VARIABLES ############################################

set(qt_Qt6_Sql_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtSql")
set(qt_Qt6_Sql_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_Sql_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_Sql_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_Sql_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_Sql_RES_DIRS_DEBUG )
set(qt_Qt6_Sql_DEFINITIONS_DEBUG "-DQT_SQL_LIB")
set(qt_Qt6_Sql_OBJECTS_DEBUG )
set(qt_Qt6_Sql_COMPILE_DEFINITIONS_DEBUG "QT_SQL_LIB")
set(qt_Qt6_Sql_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_Sql_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_Sql_LIBS_DEBUG Qt6Sqld)
set(qt_Qt6_Sql_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_Sql_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_Sql_FRAMEWORKS_DEBUG )
set(qt_Qt6_Sql_DEPENDENCIES_DEBUG Qt6::Core)
set(qt_Qt6_Sql_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_Sql_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_Sql_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_Sql_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_Sql_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_Sql_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_Sql_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_Sql_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_Sql_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_Sql_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::Network VARIABLES ############################################

set(qt_Qt6_Network_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtNetwork")
set(qt_Qt6_Network_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_Network_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_Network_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_Network_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_Network_RES_DIRS_DEBUG )
set(qt_Qt6_Network_DEFINITIONS_DEBUG "-DQT_NETWORK_LIB")
set(qt_Qt6_Network_OBJECTS_DEBUG )
set(qt_Qt6_Network_COMPILE_DEFINITIONS_DEBUG "QT_NETWORK_LIB")
set(qt_Qt6_Network_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_Network_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_Network_LIBS_DEBUG Qt6Networkd)
set(qt_Qt6_Network_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_Network_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_Network_FRAMEWORKS_DEBUG )
set(qt_Qt6_Network_DEPENDENCIES_DEBUG Qt6::Core)
set(qt_Qt6_Network_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_Network_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_Network_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_Network_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_Network_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_Network_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_Network_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_Network_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_Network_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_Network_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::QIcoPlugin VARIABLES ############################################

set(qt_Qt6_QIcoPlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt6_QIcoPlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/plugins/imageformats")
set(qt_Qt6_QIcoPlugin_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_QIcoPlugin_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_QIcoPlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_QIcoPlugin_RES_DIRS_DEBUG )
set(qt_Qt6_QIcoPlugin_DEFINITIONS_DEBUG )
set(qt_Qt6_QIcoPlugin_OBJECTS_DEBUG )
set(qt_Qt6_QIcoPlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt6_QIcoPlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_QIcoPlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_QIcoPlugin_LIBS_DEBUG )
set(qt_Qt6_QIcoPlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_QIcoPlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_QIcoPlugin_FRAMEWORKS_DEBUG )
set(qt_Qt6_QIcoPlugin_DEPENDENCIES_DEBUG Qt6::Gui Qt6::Core)
set(qt_Qt6_QIcoPlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_QIcoPlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_QIcoPlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_QIcoPlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_QIcoPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_QIcoPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_QIcoPlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_QIcoPlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_QIcoPlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_QIcoPlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::QGifPlugin VARIABLES ############################################

set(qt_Qt6_QGifPlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt6_QGifPlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/plugins/imageformats")
set(qt_Qt6_QGifPlugin_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_QGifPlugin_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_QGifPlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_QGifPlugin_RES_DIRS_DEBUG )
set(qt_Qt6_QGifPlugin_DEFINITIONS_DEBUG )
set(qt_Qt6_QGifPlugin_OBJECTS_DEBUG )
set(qt_Qt6_QGifPlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt6_QGifPlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_QGifPlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_QGifPlugin_LIBS_DEBUG )
set(qt_Qt6_QGifPlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_QGifPlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_QGifPlugin_FRAMEWORKS_DEBUG )
set(qt_Qt6_QGifPlugin_DEPENDENCIES_DEBUG Qt6::Gui Qt6::Core)
set(qt_Qt6_QGifPlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_QGifPlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_QGifPlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_QGifPlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_QGifPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_QGifPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_QGifPlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_QGifPlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_QGifPlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_QGifPlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::QWindowsVistaStylePlugin VARIABLES ############################################

set(qt_Qt6_QWindowsVistaStylePlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/plugins/styles")
set(qt_Qt6_QWindowsVistaStylePlugin_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_QWindowsVistaStylePlugin_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_QWindowsVistaStylePlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_QWindowsVistaStylePlugin_RES_DIRS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_DEFINITIONS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_OBJECTS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_QWindowsVistaStylePlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_QWindowsVistaStylePlugin_LIBS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_FRAMEWORKS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_DEPENDENCIES_DEBUG Qt6::Core Qt6::Gui)
set(qt_Qt6_QWindowsVistaStylePlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_QWindowsVistaStylePlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_QWindowsVistaStylePlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_QWindowsVistaStylePlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_QWindowsVistaStylePlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_QWindowsVistaStylePlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_QWindowsVistaStylePlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_QWindowsVistaStylePlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_QWindowsVistaStylePlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::QWindowsIntegrationPlugin VARIABLES ############################################

set(qt_Qt6_QWindowsIntegrationPlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/plugins/platforms")
set(qt_Qt6_QWindowsIntegrationPlugin_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_QWindowsIntegrationPlugin_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_QWindowsIntegrationPlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_QWindowsIntegrationPlugin_RES_DIRS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_DEFINITIONS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_OBJECTS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_QWindowsIntegrationPlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_QWindowsIntegrationPlugin_LIBS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_SYSTEM_LIBS_DEBUG advapi32 dwmapi gdi32 imm32 ole32 oleaut32 setupapi shell32 shlwapi user32 winmm winspool wtsapi32 shcore comdlg32 d3d9 runtimeobject)
set(qt_Qt6_QWindowsIntegrationPlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_FRAMEWORKS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_DEPENDENCIES_DEBUG Qt6::Core Qt6::Gui)
set(qt_Qt6_QWindowsIntegrationPlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_QWindowsIntegrationPlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_QWindowsIntegrationPlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_QWindowsIntegrationPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_QWindowsIntegrationPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_QWindowsIntegrationPlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_QWindowsIntegrationPlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_QWindowsIntegrationPlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_QWindowsIntegrationPlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::Gui VARIABLES ############################################

set(qt_Qt6_Gui_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtGui")
set(qt_Qt6_Gui_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_Gui_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_Gui_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_Gui_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_Gui_RES_DIRS_DEBUG )
set(qt_Qt6_Gui_DEFINITIONS_DEBUG "-DQT_GUI_LIB")
set(qt_Qt6_Gui_OBJECTS_DEBUG )
set(qt_Qt6_Gui_COMPILE_DEFINITIONS_DEBUG "QT_GUI_LIB")
set(qt_Qt6_Gui_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_Gui_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_Gui_LIBS_DEBUG Qt6Guid)
set(qt_Qt6_Gui_SYSTEM_LIBS_DEBUG advapi32 gdi32 ole32 shell32 user32 d3d11 dxgi dxguid d2d1 dwrite d3d12 advapi32 d2d1 d3d11 dwmapi dwrite dxgi dxguid gdi32 imm32 ole32 oleaut32 setupapi shell32 shlwapi user32 version winmm winspool wtsapi32 shcore comdlg32 d3d9 runtimeobject)
set(qt_Qt6_Gui_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_Gui_FRAMEWORKS_DEBUG )
set(qt_Qt6_Gui_DEPENDENCIES_DEBUG Qt6::Core)
set(qt_Qt6_Gui_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_Gui_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_Gui_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_Gui_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_Gui_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_Gui_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_Gui_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_Gui_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_Gui_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_Gui_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::Platform VARIABLES ############################################

set(qt_Qt6_Platform_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/res/archdatadir/mkspecs/win32-msvc")
set(qt_Qt6_Platform_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_Platform_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_Platform_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_Platform_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_Platform_RES_DIRS_DEBUG )
set(qt_Qt6_Platform_DEFINITIONS_DEBUG )
set(qt_Qt6_Platform_OBJECTS_DEBUG )
set(qt_Qt6_Platform_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt6_Platform_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_Platform_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt6_Platform_LIBS_DEBUG )
set(qt_Qt6_Platform_SYSTEM_LIBS_DEBUG )
set(qt_Qt6_Platform_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_Platform_FRAMEWORKS_DEBUG )
set(qt_Qt6_Platform_DEPENDENCIES_DEBUG )
set(qt_Qt6_Platform_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_Platform_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_Platform_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_Platform_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_Platform_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_Platform_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_Platform_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_Platform_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_Platform_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_Platform_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt6::Core VARIABLES ############################################

set(qt_Qt6_Core_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtCore")
set(qt_Qt6_Core_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt6_Core_BIN_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin")
set(qt_Qt6_Core_LIBRARY_TYPE_DEBUG SHARED)
set(qt_Qt6_Core_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt6_Core_RES_DIRS_DEBUG )
set(qt_Qt6_Core_DEFINITIONS_DEBUG "-DQT_CORE_LIB")
set(qt_Qt6_Core_OBJECTS_DEBUG )
set(qt_Qt6_Core_COMPILE_DEFINITIONS_DEBUG "QT_CORE_LIB")
set(qt_Qt6_Core_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt6_Core_COMPILE_OPTIONS_CXX_DEBUG "-permissive-;-Zc:__cplusplus")
set(qt_Qt6_Core_LIBS_DEBUG Qt6Cored)
set(qt_Qt6_Core_SYSTEM_LIBS_DEBUG authz synchronization runtimeobject)
set(qt_Qt6_Core_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt6_Core_FRAMEWORKS_DEBUG )
set(qt_Qt6_Core_DEPENDENCIES_DEBUG )
set(qt_Qt6_Core_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt6_Core_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt6_Core_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt6_Core_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt6_Core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt6_Core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt6_Core_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt6_Core_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt6_Core_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt6_Core_COMPILE_OPTIONS_C_DEBUG}>")