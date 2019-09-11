project "cpp_redis"
    language "C++"
    cppdialect "C++11"
    kind "StaticLib"
    targetname "cpp_redis"

    includedirs { "includes" }

    vpaths {
        ["Headers/*"] = "includes/cpp_redis/**.hpp",
        ["Sources/*"] = "sources/**.cpp",
        ["*"] = "premake5.lua"
    }
    
    files {
        "premake5.lua",
        "**.cpp",
        "**.hpp"
    }
    
    excludes {
        "examples/**",
        "tests/**"
    }