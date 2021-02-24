soccer_strikers <- read.csv('soccer.csv', header=TRUE)
df <- data.frame(soccer_strikers)


# duplicate entries for ‘Leandrinho.12’, ‘Wanderson.12’, ‘William.12’
# --> renamed them to <Name> A and B
df_long <- reshape(df, direction='long', 
        varying=c('games12', 'games13', 'games14', 'games15', 'games16', 'games17', 'goals12', 'goals13', 'goals14', 'goals15', 'goals16', 'goals17', 'assists12', 'assists13', 'assists14', 'assists15', 'assists16', 'assists17', 'minutes12', 'minutes13', 'minutes14', 'minutes15', 'minutes16', 'minutes17'), 
        timevar='year',
        times=c('12', '13', '14', '15', '16', '17'),
        v.names=c('games', 'goals', 'assists', 'minutes'),
        idvar='player')

write.csv(df_long,"soccer-long.csv", row.names = FALSE)
