workspace "Simulation-A"
	configurations {"Debug", "Release", "Dist"}
	architecture "x64"

	location "Build/"

	filter "configurations:Debug"
		defines {"SA_DEBUG"}
		symbols "On"
		runtime "Debug"

	filter "configurations:Release"
		defines {"SA_RELEASE"}
		symbols "On"
		optimize "On"
		runtime "Release"

	filter "configurations:Dist"
		defines {"SA_DIST"}
		symbols "Off"
		optimize "On"
		runtime "Release"

	project "Simulation-Core"
		kind "StaticLib"
		language "C++"
		cppdialect "C++20"

		files {"core/**.cpp", "core/**.hpp"}

		libdirs {"libs/"}
		links {"raylib", "winmm"}
