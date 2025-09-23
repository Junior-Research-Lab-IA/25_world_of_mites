library(tidyverse)
illustACM <-illustACM %>% select(-Individus)
# supprime individus de illust acm
# pour réaliser acm
library(FactoMineR)
res.mca = MCA(illustACM,ncp=7)

# choix nombre dimensions
res.mca$var$eta2 %>% round(2)


res.mca$var$v.test %>% round(2)
library(factoextra)
fviz_mca_var(res.mca, col.var = &quot;cos2&quot;, gradient.cols = c(&quot;#00AFBB&quot;, &quot;#E7B800&quot;, &quot;#FC4E07&quot;),
                                                                    axes=c(1,2))