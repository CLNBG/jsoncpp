project "jsoncpp"
    kind "StaticLib"
    language "C++"


    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs 
    {
        "include"
    }

    files
    {
        "include/**.h",
        "src/lib_json/**.h",
        "src/lib_json/**.cpp",
    }

    filter "system:windows"
        systemversion "latest"
		cppdialect "C++17"


	filter "configurations:Debug"
        systemversion "latest"
		runtime "Debug"
        symbols "on"
        staticruntime "off"

	filter "configurations:Release"
        systemversion "latest"
		runtime "Release"
        optimize "on"
        staticruntime "on"