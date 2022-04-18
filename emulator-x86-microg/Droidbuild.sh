setup_target emulator-x86-microg

target_emulator-x86-microg(){
    LOCAL_PATH=$(dirname $BASH_SOURCE)
    # Clean build variables
    include $BASEDIR/droidbuild/build_vars.sh
    TARGET_NEEDS_RESYNC=false
    # Set device bitness
    TARGET_ARCH_BITNESS=64
    # Set architecture for emulator
    TARGET_ARCH="x86"
    # Codename of device
    TARGET_CODENAME="emulator-x86-microg"
    # Fully qualified model name
    TARGET_FULLNAME="Emulator(x86) with microG"
    # Build type
    TARGET_BUILDTYPE="eng"
    # Set hosts category(allows communication with GMS)
    TARGET_HOSTS_CAT=2
    # Include microG in the build
    TARGET_USES_MICROG=1
    # Call build
    target_build-emulator
}

# Currently dummy droidbuild target is required
droidbuild_module(){
    echo 1 > /dev/null 
}
