puts "Creating Characters"
char1 = Character.create(name: "Albert Wesker", affiliation: 
"Umbrella, S.T.A.R.S, TRICELL", bio: "was an accomplished virologist notorious for his work with groups affiliated with the bio-weapons black market. Originally one of the test subjects in Project W who specialised in biotechnology and bioengineering, Wesker was an elite perfectionist individual of absolute coldness, always wearing deep-black sunglasses that gave him an even more unapproachable air. As a senior researcher linked to the t-Virus Project as early as 1978, he bore witness to and at times shaped Umbrella's B.O.W. research. He officially left the company soon after a stall in the Tyrant Project and began work as a spy, leading to a career in the United States Army and eventually with S.T.A.R.S. as its Captain. Wesker ultimately chose to betray Umbrella and work with other groups to steal its research data, benefiting from a mutation brought on by a prototype virus that gave him superhuman powers. This made him, in his self-assertion, believe that he was chosen to achieve the ultimate goal of causing the mass extinction of humanity in favor of evolution. Ultimately, Wesker was killed in March 2009 during a BSAA operation which uncovered his role in a doomsday project dubbed Uroboros. More info: https://residentevil.fandom.com/wiki/Albert_Wesker ", 
img: "https://static.wikia.nocookie.net/residentevil/images/e/e4/Wesker_Revelations_2_Render.png/revision/latest?cb=20150302074104")

char2 = Character.create(name: "Chris Redfield", affiliation: 
"S.T.A.R.S , BSAA ", bio: "is an American operator in the Bioterrorism Security Assessment Alliance, in which he has served since its foundation in 2003. Redfield has built up and dedicated his career in destroying Bio Organic Weapons and fighting against producers and sellers of bioweapons after his experiences with bioterrorism in 1998. He is the older brother of TerraSave member Claire Redfield. More Info: https://residentevil.fandom.com/wiki/Chris_Redfield ", 
img: "https://static.wikia.nocookie.net/residentevil/images/4/42/Chara10Q94l_rev2.png/revision/latest?cb=20151221004429" )

char3 = Character.create(name: "Jill Valentine", affiliation: 
"S.T.A.R.S, BSAA ", bio: "is an American Special Operations Agent (SOA) of the Bioterrorism Security Assessment Alliance, of which she is a co-founder and an original member. She is a respected high-ranking operator, owing to her commitment in eradicating bioterrorism and her survival amid to the Biohazardous outbreaks in Arklay County in 1998. More info: https://residentevil.fandom.com/wiki/Jill_Valentine ", 
img: "https://static.wikia.nocookie.net/residentevil/images/1/1f/Chara12wFnM_rev2.png/revision/latest?cb=20151221004448 " )

char4 = Character.create(name: "Barry Burton", affiliation: 
"S.T.A.R.S, BSAA ", bio: "is a consultant and combat specialist for the Bioterrorism Security Assessment Alliance. Formerly, he was a member of the Special Tactics and Rescue Service and the backup man for the S.T.A.R.S. Alpha team, being in charge of maintaining and supplying weapons for his fellow unit members. More info: https://residentevil.fandom.com/wiki/Barry_Burton ", 
img: "https://static.wikia.nocookie.net/residentevil/images/f/f1/Barry_2_.jpg/revision/latest?cb=20141202135124 " )

char5 = Character.create(name: "Rebecca Chambers", affiliation: 
"S.T.A.R.S, BSAA ", bio: "is an advisor for the Bioterrorism Security Assessment Alliance and former rookie member of the Special Tactics and Rescue Service assigned to S.T.A.R.S. Bravo team, being charge of medical needs due her extensive knowledge in biochemistry. More info: https://residentevil.fandom.com/wiki/Rebecca_Chambers", 
img: "https://static.wikia.nocookie.net/residentevil/images/7/79/Rebecca-Vendetta-Render.jpeg/revision/latest?cb=20190627172303 " )

char6 = Character.create(name: "Leon Scott Kennedy", affiliation: 
"Raccoon Police Department, US-STRATCOM, DSO (Agent)", bio: "is an American Federal Agent currently employed with the Division of Security Operations (D.S.O.), a counterterrorism agency with direct Presidential oversight. Kennedy is a known survivor of the 1998 Raccoon City Destruction Incident, then as a police officer. Following his escape, he was offered a job in a US-STRATCOM team devoted to anti-B.O.W. combat, and served it until 2011 in repeated operations around the world. More info: https://residentevil.fandom.com/wiki/Leon_Scott_Kennedy", 
img: "https://static.wikia.nocookie.net/residentevil/images/6/69/Vendettaimage.jpg/revision/latest?cb=20181019021040" )

char7 = Character.create(name: "Claire Redfield", affiliation: 
"TerraSave", bio: "is a current member of the human rights organization, TerraSave. She is the younger sister of BSAA operative and former S.T.A.R.S. member Chris Redfield. Since her survival in the Raccoon City incident in 1998, Claire would become involved or end up in the midst of several Biohazard outbreaks around the world, prompting her, as well as Chris, to devote her career to combating the threat of Bio Organic Weapons. More info: https://residentevil.fandom.com/wiki/Claire_Redfield ", 
img: "https://static.wikia.nocookie.net/residentevil/images/d/d3/86b060ae9a6b00703ff712b3109c59541472657554_full.png/revision/latest?cb=20190606160637" )

char8 = Character.create(name: "Ada Wong", affiliation: 
"Industrial spy for rival to Umbrella Corp", bio: ": is the pseudonym of an enigmatic unnamed spy of Asian-American descent. She has gained notoriety in the corporate world for being able to handle serious situations and the most difficult requests without guilt. She acted secretly in the background of many biohazard incidents and collected information which became useful to several organisations, while at the same time operating to undermine them. However, Ada follows only her own 'true purpose' and has often betrayed the organisations and customers she is affiliated with to achieve it. More info: https://residentevil.fandom.com/wiki/Ada_Wong ", 
img: "https://static.wikia.nocookie.net/residentevil/images/5/5c/Ada_Wong_RE6.jpg/revision/latest?cb=20120612001402" )


puts "Creating Users"
User.create!([
    {
     username: "Admin",
     password: "flatiron099"
    },
    {
     username: "Bob",
     password: "ilovecapcom"

    },
    {
     username: "Susie",
     password: "sologirl01"
     }
])

# puts "Creating Stats for Characters"

# Character.all.each do |character|
#     Stat.create!(character_id:character.id, VIT: rand(40..100), STR: rand(50..90), DEF: rand(20..90))
# end


puts "Creating Favorites"

Favorite.create(character_id: 8, user_id: 2 )
Favorite.create(character_id: 7, user_id: 2)
Favorite.create(character_id: 2, user_id: 3)
Favorite.create(character_id: 4, user_id: 3)



