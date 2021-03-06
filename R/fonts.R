## adapted from ratlas and hrbrthemes

#' @rdname Roboto
#' @md
#' @description `font_rc` == "`Roboto Condensed`"
#' @family Font helpers and shortcuts
#' @export
font_rc <- "Roboto Condensed"

#' @rdname Roboto
#' @md
#' @description `font_rc_bold` == "`Roboto Condensed Bold`"
#' @family Font helpers and shortcuts
#' @export
font_rc_bold <- "Roboto Condensed Bold"

#' @rdname Roboto
#' @md
#' @description `font_rc_thin` == "`Roboto Condensed Thin`"
#' @family Font helpers and shortcuts
#' @export
font_rc_thin <- "Roboto Condensed Thin"

#' @rdname Roboto
#' @md
#' @note `font_rc_light` (a.k.a. "`Roboto Condensed Light`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @family Font helpers and shortcuts
#' @description `font_rc_light` == "`Roboto Condensed Light`"
font_rc_light <- "Roboto Condensed Light"

#' Roboto font shortcuts
#' @rdname Roboto
#' @md
#' @description `font_bold` == "`Roboto Bold`"
#' @family Font helpers and shortcuts
#' @export
font_r_bold <- "Roboto Bold"

#' @rdname Roboto
#' @md
#' @description `font_rc_thin` == "`Roboto Thin`"
#' @family Font helpers and shortcuts
#' @export
font_r_thin <- "Roboto Thin"

#' @rdname Roboto
#' @md
#' @description `font_r` == "`Roboto`"
#' @family Font helpers and shortcuts
#' @export
font_r <- "Roboto"

#' @rdname Roboto
#' @md
#' @note `font_r_light` (a.k.a. "`Roboto Light`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_fc_light` == "`Roboto Light`"
#' @family Font helpers and shortcuts
#' @export
font_r_light <- "Roboto Light"

#' Import Roboto font for use in charts
#'
#' Roboto is a trademark of Google.
#'
#' This is an analogue of `hrbrthemes::import_roboto_condensed()`.
#'
#' There is an option `mtaux.loadfonts` which -- if set to `TRUE` -- will
#' call `extrafont::loadfonts()` to register non-core fonts with R PDF & PostScript
#' devices. If you are running under Windows, the package calls the same function
#' to register non-core fonts with the Windows graphics device.
#'
#' @md
#' @note This will take care of ensuring PDF/PostScript usage. The location of the
#'   font directory is displayed after the base import is complete. It is highly
#'   recommended that you install them on your system the same way you would any
#'   other font you wish to use in other programs.
#' @family Font helpers and shortcuts
#' @export
import_fonts <- function() {

  r_font_dir <- system.file("fonts", "roboto", package="mtaux")

  suppressWarnings(suppressMessages(extrafont::font_import(r_font_dir, prompt=FALSE)))

  usethis::ui_done("Done registering Roboto with R.")
  usethis::ui_todo("Now go to {usethis::ui_path(r_font_dir)} and install the fonts onto your system.")
  usethis::ui_info("On Windows 7 and 10, you can install fonts by right-clicking the font file and clicking Install.")
}

#' Mqke ggplot2 use chosen font in geom_text/label
#'
#' Wrapper around update_geom_font_defaults(), different default
#'
#' @param font font, defaults to `"Roboto Condensed"`
#' @family Font helpers and shortcuts
#' @export
#'
set_mtaux_ggplot_fonts <- function(font = "Roboto Condensed") {
  hrbrthemes::update_geom_font_defaults(font)
}
