project "glm"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "On"
	
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
		symbols "On"	-- debug version --

	filter "configurations:Release"
		runtime "Release"
		optimize "Full"	-- release version --
		inlining "Auto"
		floatingpoint "Fast"
