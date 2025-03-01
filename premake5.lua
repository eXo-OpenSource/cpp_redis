solution "cpp_redis"
	configurations { "Debug", "Release" }
	location ( "Build" )
	targetdir "Bin/%{cfg.buildcfg}"

	platforms { "x86", "x64" }
	pic "On"
	symbols "On"

	filter "system:windows"
		defines { "WINDOWS", "WIN32" }

	filter "configurations:Debug"
		defines { "DEBUG" }

	filter "configurations:Release"
		optimize "On"

	include "tacopie/tacopie"
	include "cpp_redis"
