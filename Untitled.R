
dat <- table(Findexdata$Respondent.is.female, Findexdata$Respondent.education.level, Findexdata$Within.economy.household.income.quintile, Findexdata$Has.an.account, Findexdata$agegroups)
summarylist <- list()
for(m in 1:length(dim(dat))){
  martab <- margin.table(dat, margin=m)
  summarylist[[m]] <- cbind(Freq=martab, Prop=prop.table(martab))
}
names(summarylist) <- names(dimnames(dat))
summarylist
