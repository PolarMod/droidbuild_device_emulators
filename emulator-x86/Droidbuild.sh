setup_target emulator_x86

target_emulator_x86(){
    LOCAL_PATH=$(dirname $BASH_SOURCE)
    # Clean build variables
    include $BASEDIR/droidbuild/build_vars.sh
    TARGET_NEEDS_RESYNC=false
    # Set device bitness
    TARGET_ARCH_BITNESS=32
    # Set architecture for emulator
    TARGET_ARCH="x86"
    # Codename of device
    TARGET_CODENAME="emulator_x86"
    # Fully qualified model name
    TARGET_FULLNAME="Emulator(x86)"
    # Build type
    TARGET_BUILDTYPE="eng"
    # Call build
    target_build-emulator
}

# Currently dummy droidbuild target is required
droidbuild_module(){
    echo 1 > /dev/null 
}
