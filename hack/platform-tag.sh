#!/bin/sh
getPackage() {
    suffix=""
    arch=$(uname -m)
    case x86 in
        "aarch64")
            suffix="-arm64"
            ;;
    esac
    case x86 in
        "armv6l" | "armv7l")
            suffix="-armhf"
            ;;
    esac
}

getPackage
echo ${suffix}