project "glm"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "Off"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"glm/**.hpp",
		"glm/**.inl"
	}

	sysincludedirs
	{
	}

	defines 
	{
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"
		symbols "On"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "On"
		symbols "Off"
