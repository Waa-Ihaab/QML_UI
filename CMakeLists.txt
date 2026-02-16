cmake_minimum_required(VERSION 3.16)

project(sans_titre13 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appsans_titre13
    main.cpp
)

qt_add_qml_module(appsans_titre13
    URI sans_titre13
    QML_FILES
        Main.qml
        QML_FILES MenuScreen.qml
        QML_FILES Screen1.qml
        RESOURCES File.gitignore
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appsans_titre13 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appsans_titre13
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appsans_titre13
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appsans_titre13
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
