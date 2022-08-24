freshr <- function() {
    #' Unload none-base packages and remove all objects from environment
    #'
    #' @description Ever experienced a time when you pass an R script to your
    #'   colleague, and it does not work on their machine because you forgot to
    #'   add a library import that you did interactively? freshr is here to
    #'   help! By calling freshr::freshr() at the top of your every script, you
    #'   create a fresh environment for you to test reproducibility before you
    #'   send your script to someone else.
    #'
    #' @return This function returns no value. It is called for its side effect
    #'   of cleaning up the global environment at script's start up/
    #'
    #' @importFrom utils sessionInfo
    #'
    #' @export

    # Drop all variables from global workspace
    rm(
        list = ls(all.names = TRUE, envir = parent.frame()),
        envir = parent.frame()
    )

    # Unload none-base packages from global environment
    # https://stackoverflow.com/questions/7505547/
    pkgs <- names(sessionInfo()$otherPkgs)
    if (!is.null(pkgs)) {
        suppressWarnings(invisible(lapply(
            X              = paste0("package:", pkgs),
            FUN            = detach,
            character.only = TRUE,
            unload         = TRUE
        )))
    }

}
