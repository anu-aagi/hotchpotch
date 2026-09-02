#!/usr/bin/env Rscript
# test_r.R
# Simple sanity-check script: confirms R is working, prints environment info,
# and does a small computation to confirm the job actually ran.

cat("=== R Test Job ===\n")
cat("R version:", R.version.string, "\n")
cat("Hostname:", Sys.info()[["nodename"]], "\n")
cat("Working directory:", getwd(), "\n")
cat("Start time:", format(Sys.time()), "\n\n")

# Small computation - not trivial, so you can see it actually used CPU
n <- 2e6
x <- rnorm(n)
y <- rnorm(n)
result <- cor(x, y)

cat("Generated", n, "random pairs.\n")
cat("Correlation (should be near 0):", round(result, 5), "\n")

# Check a couple of commonly used packages are available (optional)
pkgs <- c("data.table", "ggplot2")
for (p in pkgs) {
  status <- if (requireNamespace(p, quietly = TRUE)) "FOUND" else "NOT installed"
  cat(sprintf("Package '%s': %s\n", p, status))
}

cat("\nEnd time:", format(Sys.time()), "\n")
cat("=== R Test Job Complete ===\n")
