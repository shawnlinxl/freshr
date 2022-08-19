freshr <- function() {
    #' Unload none-base packages and remove all objects from environment
    #'
    #' @export


    # Drop all variables from global workspace
    rm(list = ls())

    # Unload none-base packages from global environment
    # https://stackoverflow.com/questions/7505547/detach-all-packages-while-working-in-r/7506112#7506112
    pkgs <- names(sessionInfo()$otherPkgs)
    if (!is.null(pkgs)){
        suppressWarnings(invisible(lapply(
            X = paste0('package:', pkgs),
            FUN = detach,
            character.only=TRUE,
            unload=TRUE
        )))
    }

}
