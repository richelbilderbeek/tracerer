context("parse_beast_posterior")

test_that("use, single alignment", {

  posterior <- parse_beast_posterior(
    trees_filename = get_tracerer_path("beast2_example_output.trees"),
    log_filename = get_tracerer_path("beast2_example_output.log")
  )
  testthat::expect_true("beast2_example_output_trees" %in% names(posterior))
  testthat::expect_true("estimates" %in% names(posterior))
  testthat::expect_true(is_posterior(posterior))
})

test_that("use, two alignments", {

  posterior <- parse_beast_posterior(
    trees_filename = get_tracerer_paths(c("anthus_2_4_a.trees", "anthus_2_4_b.trees")),
    log_filename = get_tracerer_path("anthus_2_4.log")
  )
  testthat::expect_true("anthus_2_4_a_trees" %in% names(posterior))
  testthat::expect_true("anthus_2_4_b_trees" %in% names(posterior))
  testthat::expect_true("estimates" %in% names(posterior))
  testthat::expect_true(is_posterior(posterior))
})

test_that("abuse", {

  testthat::expect_silent(
    parse_beast_posterior(
      trees_filename = get_tracerer_path("beast2_example_output.trees"),
      log_filename = get_tracerer_path("beast2_example_output.log")
    )
  )

  testthat::expect_error(
    parse_beast_posterior(
      trees_filename = "abs.ent",
      log_filename = get_tracerer_path("beast2_example_output.log")
    ),
    "'trees_filenames' must be the name of one or more existing files"
  )

  testthat::expect_error(
    parse_beast_posterior(
      trees_filename = get_tracerer_path("beast2_example_output.trees"),
      log_filename = "abs.ent"
    ),
    "'log_filename' must be the name of an existing file"
  )

})
