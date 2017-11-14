FlagStat <- function(id){
id <- list.files(pattern = "*.txt", recursive = TRUE)
for(i in id){
 sink("OutPutAnalysis.txt", append=TRUE)
  
  f <- readLines(i)
  a <- data.frame( as.numeric(first.word(f[1])  )
                   , as.numeric(first.word(f[2])  )
                   , as.numeric(first.word(f[5])  )
                   , as.numeric(first.word(f[6])  )
                   , as.numeric(first.word(f[7])  )
                   , as.numeric(first.word(f[8])  )
                   , as.numeric(first.word(f[9])  )
                   , ((as.numeric(first.word(f[9])))*100/(as.numeric(first.word(f[6])))) 
                   , as.numeric(first.word(f[10]) )
                   , as.numeric(first.word(f[11]) )
                   , ((as.numeric(first.word(f[11])))*100/(as.numeric(first.word(f[6])))) 
  )
  names(a) <- NULL
  print(a)
  sink()
  sink()
  sink()

}
#id <- list.files(pattern = "*.txt", recursive = TRUE)
res <- read.table("OutPutAnalysis.txt")
dat <- data.frame(id, res$V2, res$V3, res$V4, res$V5, res$V6, res$V7, res$V8, res$V9, res$V10, res$V11, res$V12)
colnames(dat) <- c(            "FlagStat name",
                               "Total",
                               "Secondary",
                               "Mapped",
                               "Paired in sequencing",
                               "Read 1",
                               "Read 2",
                               "Properly paired",
                               "% properly paired",
                               "With itself and mate mapped",
                               "Singletons",
                               "% singletons")
write.table(dat, file = "results.csv", sep=";")
return(dat)
}
