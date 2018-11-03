library(devtools)
library(here)
install_github("felixgrunberger/shinyCV")
library(shinyCV)


# >>> 1. Initialization of your main CV folder.
init_shinyCV(cv_path = here())

# >>> 2. Preview your cv by running the dedicated function:
preview_shinyCV("MyShinyCV", cv_mode = "basic", data_source = "manual", datas = NULL)
