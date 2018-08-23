function(treat_warnings_as_errors target)
    if(MSVC)
        target_compile_options(${target} PRIVATE "/W4" "/WX")
    elseif(CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX)
        target_compile_options(${target} PRIVATE "-Wall" "-Wextra" "-Werror")
    endif()
endfunction()
