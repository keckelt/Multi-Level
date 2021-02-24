soccer_strikers <- read.csv('soccer.csv', header=TRUE)
df <- data.frame(soccer_strikers)


# duplicate entries for ‘Leandrinho.12’, ‘Wanderson.12’, ‘William.12’
# --> renamed them to <Name> A and B
df_long <- reshape(df, 
        direction='long', 
        varying=9:32,
        timevar='year',
        times=c('12', '13', '14', '15', '16', '17'),
        sep="",
        idvar='player')

write.csv(df_long,"soccer-long.csv", row.names = FALSE, na="")
