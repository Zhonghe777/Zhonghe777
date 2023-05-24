packages <- c('tidyverse', 'rmarkdown')
pkgs_installed <- sapply(packages,
                         requireNamespace, quietly = TRUE)
if (!all(pkgs_installed)) {
    install.packages(packages)
}
library(dplyr, quietly = TRUE)
pkg_versions <- installed.packages() %>%
    dplyr::as_tibble() %>%
    filter(Package %in% packages) %>%
    select(Package, Version)

print(getwd())
print(system('git --version', intern = TRUE))
print(R.Version()$version.string)
print(pkg_versions)

library(tidyverse)

gapminder_1997 <- read_csv("gapminder_1997.csv")

read_csv()
?read_csv()

Sys.Date()
getwd()

sum(7, 7)

round(3.141592)
?round()

round(3.1415, 3)
round(3.1415, digits = 3)
round(digits = 3, x=3.1415)

ggplot (data= gapminder_1997)+
  aes(x=gdpPercap)+
  labs(x="GDP Per Capita")+
  aes(y=lifeExp)+
  labs(y="life Expetancy")+
  geom_point()+
  labs(title="Do people in wealthy countries live longer?")+
  aes(color= continent)+
  scale_color_brewer(palette = "Set1")+
  aes(size=pop)
