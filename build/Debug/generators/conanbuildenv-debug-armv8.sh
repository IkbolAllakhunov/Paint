script_folder="/Users/murategenberdiev/CLionProjects/final/build/Debug/generators"
echo "echo Restoring environment" > "$script_folder/deactivate_conanbuildenv-debug-armv8.sh"
for v in QT_PLUGIN_PATH QT_HOST_PATH
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "$script_folder/deactivate_conanbuildenv-debug-armv8.sh"
    else
        echo unset $v >> "$script_folder/deactivate_conanbuildenv-debug-armv8.sh"
    fi
done


export QT_PLUGIN_PATH="/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p/res/archdatadir/plugins"
export QT_HOST_PATH="/Users/murategenberdiev/.conan2/p/b/qt539864e5f4379/p"