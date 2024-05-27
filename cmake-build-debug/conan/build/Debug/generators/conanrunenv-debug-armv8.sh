script_folder="/Users/murategenberdiev/CLionProjects/final/cmake-build-debug/conan/build/Debug/generators"
echo "echo Restoring environment" > "$script_folder/deactivate_conanrunenv-debug-armv8.sh"
for v in QT_PLUGIN_PATH PATH LD_LIBRARY_PATH DYLD_LIBRARY_PATH
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "$script_folder/deactivate_conanrunenv-debug-armv8.sh"
    else
        echo unset $v >> "$script_folder/deactivate_conanrunenv-debug-armv8.sh"
    fi
done


export QT_PLUGIN_PATH="/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/plugins"
export PATH="/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/bin:$PATH"
export LD_LIBRARY_PATH="/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib:/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/plugins/imageformats:/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/plugins/platforms:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/lib:/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/plugins/imageformats:/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/plugins/platforms:$DYLD_LIBRARY_PATH"