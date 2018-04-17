# включаем в проект InstallRequiredSystemLibraries
include(InstallRequiredSystemLibraries)
# формализация преднастроек определенных спецификайий в файл,
# представление файла детализации и краткого описания
set(CPACK_PACKAGE_CONTACT gshkvbmstu@gmail.com)
set(CPACK_PACKAGE_VERSION_MAJOR ${PRINT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PRINT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PRINT_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION_TWEAK ${PRINT_VERSION_TWEAK})
set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTION)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static c++ library for printing")
# включение лицензии и README.md
set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)
# формирование конфигурирования файла
set(CPACK_RPM_PACKAGE_NAME "print-devel") 
# представление имени поставщика для PRM пакета
set(CPACK_RPM_PACKAGE_LICENSE "MIT") 
# представление лицензии поставщика для PRM пакета
set(CPACK_RPM_PACKAGE_GROUP "print") 
# представление групы поставщика для PRM пакета
set(CPACK_RPM_PACKAGE_URL "https://github.com/geminishkv/lab07") 
# представление на каталог линковки для PRM пакета
set(CPACK_RPM_CHANGELOG_FILE ${CMAKE_CURRENT_SOURCE_DIR}/ChangeLog.md) 
# представление CHANGELOG_FILE в ChangeLog.md для PRM пакета
set(CPACK_RPM_PACKAGE_RELEASE 1) 
# представление нормализованной версии выпуска для PRM пакета
include(CPack)
