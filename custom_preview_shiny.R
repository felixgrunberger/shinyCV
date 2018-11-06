library(devtools)
library(here)
install_github("felixgrunberger/shinyCV")
library(shinyCV)

# >>> 1. Initialization of your main CV folder.
init_shinyCV(cv_path = here())

# >>> 2. Preview your cv by running the dedicated function:
###
# datas for the profile example
temp_profile <- list(
  my_name = "Felix Gruenberger",
  my_position = "PhD Student Microbiology/Bioinformatics",
  my_age = 29,
  my_interests = c("Microbiology", "Bioinformatics", "NGS", "R", "Data Science"),
  my_website = "https://felixgrunberger.com",
  my_teaser = "Hi, I´m Felix! Currently, I´m doing my PhD in Biology working on gene regulatory networks in archaea.",
  my_image = list(
    src = system.file("inst/App/cv_viewer/www/man2.png", package = "shinyCV"),
    # very important to keep the adminLTE image border
    class = "profile-user-img img-responsive img-circle",
    alt = "User profile picture"
  )
)

# datas for about example
temp_about <- data.frame(
  my_mail = "felix-gruenberger@web.de",
  my_location = "Regensburg/Germany",
  my_linkedin = "www.linkedin.com/in/felixgrunberger",
  my_twitter = "https://twitter.com/felixgrunberger",
  my_github = "https://github.com/felixgrunberger"
)

# datas for skills example
temp_skills <- data.frame(
  variable = c("R", "", "HTML"),
  value = c(70, 50, 60)
)

# datas for language example
temp_languages <- data.frame(
  variable = c("german", "english", "spanish"),
  value = c(100, 80,5)
)

# datas for network example
temp_network <- data.frame(
  title = c("Dr.", "Pr.", ""),
  sex = c("male", "female", "female"),
  name = c("Janine", "Huguette", "Jean Raymond"),
  mail = c("janineatgmail.com", "huguetteatgmail.com",
           "raymondatgmail.com"),
  phone = c("+44 650 36 47", "+44 650 36 47", "+44 650 36 47")
)

# datas for formation example
temp_formations <- data.frame(
  title = c("B. Sc Biology", "M. Sc Biology", "PhD"),
  topic = c("user", "key", "graduation-cap"),
  from = c("2010-10", "2013-10", "2016-02"),
  to = c("2013-09", "2016-01","now"),
  summary = c("Focus subjects: Molecular Microbiology, Molecular Genetics", "Major subjects: Bioinformatics, Microbiology, Immunology", "Functional analysis of unknown gene regulatory networks in Pyrococcus furiosus
"),
  place = rep("Regensburg", 3),
  supervisor = c("Winfried Hausner","Winfried Hausner","Winfried Hausner, Dina Grohmann"),
  grade = c(4, 5, 0),
  extra = c("Bachelor thesis: Expression of a bifunctional aldehyde-/ alcohol-dehydrogenase in Pyrococcus furiosus",
            "Master thesis: AP-MS to detect novel RNAP-binding proteins in Pyrococcus furiosus",
            "Topic: Functional analysis of unknown gene regulatory networks in Pyrococcus furiosus")
)


# datas for task example
temp_tasks <- list(
  # one task dataframe per project
  project1 = data.frame(
    name = c("task 1", "task 2"),
    status = rep("wip", 2)
  ),
  project2 = data.frame(
    name = c("task 1", "task 2"),
    status = rep("completed", 2)
  ),
  project3 = data.frame(
    name = c("task 1", "task 2"),
    status = rep("wip", 2)
  ),
  project4 = data.frame(
    name = c("task 1", "task 2"),
    status = rep("completed", 2)
  )
)

# datas for project example
temp_projects <- data.frame(
  title = c("My project 1", "My_project 2",
            "My project 3"),
  position = c("Big Boss", "Slave", "Big Boss"),
  overview = rep("an amazing project", 3),
  supervisors = rep("Jean Eude", 3),
  place = rep("Somewhere", 3)
)

# datas for publications screenshots
demo_list <- list(
  class = "img-responsive pad",
  src = system.file("App/cv_viewer/www/text-lines.svg", package = "shinyCV"),
  style = "height: 100px; display: block;
  margin-left: auto; margin-right: auto;"
)
temp_publications_screenshots <- list(demo_list, demo_list, demo_list)

# data for publication example
temp_publications <- data.frame(
  reference = rep("Your name et al., Journal Title, 2018", 3),
  abstract = rep("Lorem ipsum dolor sit amet, consectetur
                 adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua.
                 Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo
                 consequat. Duis aute irure dolor in reprehenderit in
                 voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                 Excepteur sint occaecat cupidatat non proident, sunt in
                 culpa qui officia deserunt mollit anim id est laborum.", 3),
  pubmed_link = rep("https://www.ncbi.nlm.nih.gov/pubmed", 3)
  )


# datas for talk example
temp_talks <- data.frame(
  title = rep("My Talk", 5),
  from = rep("1900-01-01", 5),
  to = rep("1900-01-01", 5),
  summary = rep("Lorem ipsum dolor sit amet, consectetur
                adipiscing elit, sed do eiusmod tempor
                incididunt ut labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostrud exercitation
                ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in
                voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                Excepteur sint occaecat cupidatat non proident, sunt in
                culpa qui officia deserunt mollit anim id est laborum.", 5),
  place = rep("Somewhere", 5),
  price = c(rep("yes", 3), rep("no", 2)),
  website = rep("http://google.com", 5)
  )

# datas for course example
temp_courses <- data.frame(
  title = rep("My course", 4),
  topic = rep("my topic", 4),
  nb_students = c(10, 100, 4, 250),
  nb_hours = c(5, 45, 8, 45),
  from = rep("1900-01-01", 4),
  to = rep("1900-01-01", 4),
  place = rep("Somewhere", 4),
  supervisor = rep("Somebody", 4),
  syllabus = rep("http://google.com", 4)
)

# datas for internship example
temp_internships <- data.frame(
  title = c("My Internship 1", "My Internship 2",
            "My Internship 3", "My Internship 4"),
  topic = rep("some topic", 4),
  from = rep("1900-01-01", 4),
  to = rep("1900-01-01", 4),
  place = rep("Somewhere", 4),
  supervisor = rep("Somebody", 4),
  level = c("bachelor", "master", "PhD", "PostDoc"),
  advert = rep("http://google.com", 4)
)


feed_datas <- feed_shinyCV(temp_profile, temp_about, temp_skills, temp_languages,temp_network,
                           temp_formations, temp_projects, temp_tasks,
                           temp_publications, publications_screenshots = list(),
                           temp_talks, temp_courses, temp_internships)

preview_shinyCV(cv_path = "MyShinyCV", cv_mode = "academic", data_source = "manual", datas = feed_datas)


#publish_shinyCV(cv_path = "MyShinyCV")

