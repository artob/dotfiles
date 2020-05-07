# See: https://vulkan.lunarg.com/doc/sdk/1.2.135.0/mac/getting_started.html
case $OSTYPE in
  darwin*)
    export VULKAN_SDK=/opt/vulkan/macOS
    export PATH="$PATH:$VULKAN_SDK/bin"
    export DYLD_LIBRARY_PATH="$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH"
    export VK_ICD_FILENAMES="$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json"
    ;;
esac
