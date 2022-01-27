def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >=60
        "#{time_ago_in_minutes / 60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/' do

finstagram_post_Angel = {
    username: "angel",
        avatar_url: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSExMWFhUVFxUVFRUVFxUXFRYVGBUWFhcXFRcYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDQ0ODhAPDisZFRkrLSsrKy0rLSsrKysrLSsrLSsrNy0rKystKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAN0A5AMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAECBQAGB//EADsQAAEDAgMGBQMCBQEJAAAAAAEAAhEDIQQSMQVBUWFxgRMikaHwMrHBQtEGFFJi8eEVIzNykpOisrP/xAAWAQEBAQAAAAAAAAAAAAAAAAAAAQL/xAAXEQEBAQEAAAAAAAAAAAAAAAAAAREx/9oADAMBAAIRAxEAPwDFAV205RaVO6cbh+CBFtJM08MnGYeNU9hsI55hjC48hMdeCDMZhkzQpieq0Rsw/qfTb3L/AP5ghXwmzWOMCuP+3Wj1y2QK0sGDu9Fm4mjBhe2wOzBcZ2PtEDMDpr5gNFj7S2cSbiOBix6IPPBinKm3YchDNNAEMU5UTKpyoKAKwCnKrAIOamqJS4CLSQaVErRoBZdArWwbZQO4ejK1KOHFhCRoiE7RQXdhxBAA1HoudhgNyZpiSAOCeDbXCDHGCBNgg4mWNMaytunThJ4ymJ0sg88QSZKWxNgtutSGUxuXn8eDKDMr1Eo9HrnVJ1KiCxKlBLlyDMpNT1ESubRRqLYQMHzx5QIAFt/MrbawvYA9xgaMYA1vUxYehPFZeHbcW+dFt0G2lAs+whoDen7m6rRzji47rkD56J6jSDirmiTbcLCw0CBdj6mUuDWgDWHv49YlVoYiQZFjqIBHf/WU/wD7LY4X17klBOCY02abcigzK2DDwSzUXLRfrl39jfruzXUoXocVhoIqNkEa8R313+6W2hhRHiAW/UOBO/kD9+qDFbTCtWwoDQQRebXkdUYtCFUCBUtUAIpYrCmgFlRabVdtJGZSQEoBbOCMLNosWhQCDUpXTmHpmUjhQtvCgETCA+GbCM5QCIQqxJFvRB2IrBoN7pZwzAFD8CZlWpviyBDF1MoIWU9uYp/HmSpw+CJNmk8UHm9q4Ui8G3JZNdjYEEl28EWHTivbbVwBm5aLfqc0T2Jn/C85X2Q5x8hpu5CpTn0JBQYBClM1cO5pLXAgixBEEdQuQNmgrCgmWt4otMXQAwzC0zqtakJ3XVaFGeqKBCCadPeN3sm2br/OSUbUvdGoVpKAjSW3XVKt7i6sbC6Flug0m4Y5YcAZ37vVI+BlJa4AxYjc5huLbrW7FaGBo1SJDvLuBgz0/ZXxlF2ZpIFwQSNLX07+yDyePwJpvLd2rTxadClHYZep2rQz0mutLDFv6Tp7j3WQ2lCDKOG5KfAWlVCoGckCIpIzKSbFIK7aSALKSbo01anTT+DpIC4PDkrZo0w0Ql6LE4wII8MSrOCmFYFAq5h1CRxVVrJLjG87z6Ku0dtNz+FTcAf1VDcN5NH6nLKoYcvksp1Kwm5qPDGk9Br3KCXbQZMwOr3NB9Lx6Kzsc9/0Oa4bwXut/wBI/CYZgHxDqVNo4Amf/WD6otPCNBHlEjfAsgx673k8P+UmPdL16IIOYAnjAB5XGvdb+KwwOgSTsHa6DydajBhct2rs6STK5Bj1KiIzEJZ7kMIN2jiLTvRRiLGVkUaiYzTCBrxZur4epBStJm9NUmQgdrY9zoB3CB0TWFYZusxrDMx7rUwlW+nz9kD+FoPzEtOVvDW/TvqibUBAYdYdeBGoi3rKpsxr3EvD8rSSMsAybXE6I21GeRvnIhzTPlvfeY+3FAs2mXtc0j6gQJ/q1Ed49V58uPDl3XpKVjb1ub6wPdYuNpAVKjf7iR3835QIuVJTNehaeCWyoL00/QZKQaE5h3IGfATeFppdlRO4YA6mEDlFMMKSYmKcoGV5z+JtrZQaTDDiPMRMtB3CN5WptbHijTLjruHErx+zyX1XOcM7tZN4JNraIGMHhTlEMvoTlk9Ji3Cy9ZstjwwBw00tHsElsx75HlPMm1uC2JQUdTBS9Wmj50tiXygUqlKP+6vVegPegEQuUSuQeKdUXMcqKWoGqS0aDFkNqkXT+Hx/EINWlCK2CVn0687kzhzdA+1to3a7teqYos3G3NDpVLfPm5We0zIlA3gNmtmTn1/TodNYun8cyKcAb26mZgoOFxtUtAFMcJ0HyyvjKTsoL3ScwgCzdx03xHFAJrbduMHX7JDalE+KHDRzW+oEfhMmpBIgXHe8iIU1G5mNfH0kjhYn7SEFGUWwC4cjCzMZQaCcum5P4yr5QO4We8EoIwmHL3ZRbiToAtYYSk1hMuMaukD0WDWrEQwGC76jwYNe94UDFtrEtLyGs8uRri0G1yS25G6OXNTVxqEQbaEBzTxabgpqi5efpYtznxM+G7JfXIWtcJ5gGJ5BblIFVD9OpdNU3rPotkq20K+SnzdYIMP+IcWatQNEhrd0a80XZuAcGw7WSSBfXosl7S6wH1kC82m5AHqvUYGgRFgQI5INLB0y1oEympCE5De6yC7ilKzrKz6iVq1JQLVSk6j0as5KVCg7OuQsy5B5FcohcGlBMolMoWVXAQaVGpCdp1Fi0yVoUHlBq0qsELSpvKxKafpYgj8IPSYfGPdZrQDx3DsrYzDwwu+pwg87GYHBB2ZiXvaMrAxg1cTJJ3xZaUWQZLmwZ068/sVfCAeZhFnbyfQQrPadI0tfcPkKQyYcdx1jfyRSGJwdzO63zkkazI0Xoa5a4eYTHA39khjqTMhyiCdHXJHqiPH1qhL4vwJHAax7eiHiG4d7HUqbW04dnNSnlyzBjMNSSSZB1V8bVNJ2Y2ytjL3v1vvXisTtWpXe9rKYY0nK5w+p+vSBMrPG8eo/hirloVH5s2aq7KYDZAY1kgCwEgr6LTbIHNfPKGHLKFKmNf3MD7L6Pg2lw0gDerGatTpRc6fhYW1MR4jibQLAX06LU2pirZGdDI4jWViZZNrgQfaCJ7qotgcLmqAixaJI66QN4svT4TPFwDe+5ZGwKEg1P6jEHgLCOwW3BbcaIK1HwYQKr1VziTdDe5BR70tVqKa74SVWogtVclnFQ+ogl6CXLlQvXIPPZVwamvCUtpIFg1WDE0KSKyigUY1N0QitopqhRCAuBwwcQCYB9kzXwsTBkIlGjwTDKXEICbGJ+kuhusaSVuh4Ol+mgWH4Q3LTw1WAAB/lBTHCDmJ8sQVlYrGgmxsNNR99Eztiu4SYt2Ky6WzXOZ4j5aDoN5mLngEGvhqudvXUjTkQFNRliCowzMsAeiO6qDYj1QebxuDDgZ+a6LzjdmsY5pDdSB/5Fe/rYYHeQOR+681tdopPaRoCPeb9pUq6thMOHV6YAkMIJ6C/3j1XpsRinO8oEC43aR11WJsF8Oc75E/59lruBMjS5PP5BlUJ1ALC+643W0+yE2hnPhwY/U7gCdEau4iGNbJcIA4c/daGEwuUAtvMZuZjVENUMIGjKLCPfkufWLbFSCT5QYi99R04hL1qubqN6CK1QJV1TVdVdCWe5AHEVEnVci1ClahQcShOK4qjkHSpVFyCMikUky2kitpIFRTVm004KSuKSBQU0ek1GFNFZTQTSTtFCpNTLQgKKavTdOllDTKuwIM8vM5XHXomqN6fh8JM/wBouPe3RUxFGbxdC/mGt8pcS8C+oAnnp1ugBVqQqtxJUtqNqfTeOEH0jVd4HD5+yAgriFh7TDaji2YEi54b07i2FokHsf3Weymc3WJ9ZPtKB/Y0N8w+nhra4HwcVrOFRzA9rQLaE30Im3ZKbPoOAnLr00EQNeS3K1YCW2uDHXggS2fhMplxl8CT7/umw7JMXymOxuPuljWjK8aiWPHGPhSZrOG+3tG5A7iqwcQQIhAZVAN0o6uVQPKA9epJsl3Gy7MqOKALghOYjOVSEACxUcxGKo4IFy1cruC5A62mrhqIGq0IBgIgCmF0IIhXYoAVoQEYUYOQAFaUB2OR2vKTBRWvKDqj3cDf0HVYX8RYF9QAUyZmS2wBuCL62/PruVHyFbDNkF3UD51+yDE/h/CvEio0CA0SLggzHcZTPULacwg6+uiPUAHoP2VfG46FAli8OCIj2CWxFDy21ufQf6rQxLZFiAOR/CBSb9R7BAXAvcWtJOoO6/BEqUrhzNQZIHzkppsgNA4BFIymSYHVAiXIVQpzFFhMWDjcCdUB9GNQUCsKFd4VMqCCVVwVoXFBSFWESFyAJaqOYjlVKBYtUI5C5A5CmFTIV2Q80F1MIeU81EHiUBsqs1L+biV1+aBlSlr8SuvxKBlWBSkniVIceJQOP0ToZlaG+qQwAzPvJi/L5MLQqnTqPugpVuSP7fyk6UluXeLdY+e6aJ856JR1n9YP4QUmD90ZlZsQIPHiiZxEELF2nTuCLQQg161UHT3SgxVQmDpwP3tvQKbN+86o7OpQAqbLDhYlrpnMB9+KGynXpkCs7ygiKmrY0LHiZg+xWpRcAmMbVa9uUgEbwQCLIspN0ITwikKhARA4VSrmFUgIByoKuYVSQgoVUlXMKhAQUJXKxaPgXINgNXZUULsg4oAQuLUwGc1OQcUCmRdCbyhRAQKwuhNZAuyBAplKjKU05qiOaCmEYZ6Apk2I+blOGbAJS9JxzkcvugvPn7flL1m7+CI0y/t+Spc3VANt9Evjadu6Yp2KjFbhzQCpiyKGq2GZr1/ARjTQCaFICLkCjwigAWqjgmDS6qhpoFixULU0aSEaSBdwVIR3NAQyEAi1QUUgKroQDhQrLkG6ACrCmFwpqtTFNbab8kF/CXeGhfz39tut/RNMqAoBeGoNNM5V0IEzTVfDT2QLvDCBHwlHhp/IFBagAbMAS2G+px7ew/dHxTtyHQiIBB49fkIBNPn7flEOqCP+J2/Kms26DnC6HVNwisQ3jzdkBKdWDHEx3TgSuGEvECY15c1pZUAVZoRIUSgiFRwVyVQoBOAQnwjOCEQgA5ioaXNHIVCUAHYfmhnDpmVxhAr/ACq5M91yDSyoL8ECmAVbMgVZgwmKdOFbMuJQWUKuZVLkBV0oJeql6A8qr3deyBKmUClStmLjqBw/KHhR/uyeJcfc/gBCx1ENgi8zPzum8kU45fhArhXkkTuGvcWTFUXSdCvBA3JmrVFue/TRB1PVQ6qA4geqj+aB4pfPnMxHG9jwQauyiPN2/K0LLMwBgxyTudBdwVCozKpcgq5yq4lcSqOcgFVYSlf5aNCR0TZdzQ3FAuGEbyVMK7nIZdyQQeqqSePsp8TkoLxwQV7rl0hcg0GYlEGIWUzqjMcg0RWCIKqzmuVg5A94gUZwki8qPFKBsvVS5LF5UZygZ8RQaiWzorXoB4u4S4x7jLXAbrjW87imquhWDiXnNOlwLc0D7G3HVPvaCByKycJWJflO68rY3IFGU4lRhmq9b6T1UUEDNJ8FMeMlCVBKBwVVBqJXMqGqgZfUQi9AfWQs6Bh1RUNRBzKHFAZz0PxEJxUIDF6iULMoJQEnmuQi5Qg//9k=",
        photo_url:  "https://us.123rf.com/450wm/izzzy71/izzzy712001/izzzy71200100182/140453992-guardian-angel-and-spring-flowers-on-wooden-background.jpg?ver=6",
        humanized_time_ago:humanized_time_ago(15),
        like_count: 0,
        comment_count:1,
        comment: [{
            username:"Dear Angel",
            text: "Dear Angel ineeds her solitude time !! Hugs ma girl !!"
        } ]    
}

finstagram_post_blue_Honey = {
    avatar_url:"https://cdn1.vectorstock.com/i/1000x1000/78/20/angels-heart-vector-177820.jpg",
    photo_url:"https://i.ytimg.com/vi/bMmyJwwWsV4/maxresdefault.jpg",
    humanized_time_ago:humanized_time_ago(190),
    like_count: 0,
    comment_count:1,
    comment: [{
        username:"Blue Honey : ",
        text: "Glitteringvibes ! :)"
    }
   ]
}

finstagram_post_Red_Honey = {
    avatar_url:"https://thumbs.dreamstime.com/z/young-beautiful-fantasy-woman-fallen-angel-lying-air-near-tree-orange-leaves-creative-red-costume-huge-artificial-bird-199788247.jpg",
    photo_url:"https://t3.ftcdn.net/jpg/03/84/76/26/360_F_384762679_g3gJ7RjzDBb9AEFblvZdVmXsjIrOoVML.jpg",
    humanized_time_ago:humanized_time_ago(190),
    like_count: 0,
    comment_count:1,
    comment: [{
        username:"Red Honey : ",
        text: "#solitudevibes"
    }
   ]
}

[finstagram_post_Angel, finstagram_post_blue_Honey, finstagram_post_Red_Honey].to_s

end








    # File.read(File.join('app/views', 'index.html'))
    # "Hello WOrld!"


    
#     finstagram_post = {
#     username: "angel",
#     avatar_url: "data:image/jpeg;base64,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",
#     photo_url:  "https://us.123rf.com/450wm/izzzy71/izzzy712001/izzzy71200100182/140453992-guardian-angel-and-spring-flowers-on-wooden-background.jpg?ver=6",
#     time_ago_in_minutes:1000,
#     like_count: 0,
#     comment_count:1,
#     comment: [{
#         username:"Dear Angel",
#         text: "Dear Angel ineeds her solitude time !! Hugs ma girl !!"
#     }
#    ]
# }
# finstagram_post.to_s



#time_ago = humanized_time_ago(finstagram_post[:time_ago_in_minutes])

##finstagram_post[:comment][0][:username]


#humanized_time_age(finstagram_post[:time_ago_in_minutes])


# get '/' do
#     # File.read(File.join('app/views', 'index.html'))
#     # "Hello WOrld!"
    
    
#     username = "angel"
#     avatar_url = "data:image/jpeg;base64,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"
#     photo_url = "https://us.123rf.com/450wm/izzzy71/izzzy712001/izzzy71200100182/140453992-guardian-angel-and-spring-flowers-on-wooden-background.jpg?ver=6"
#     time_ago_in_minutes = 10
#     like_count = 0
#     comment_count = 1
#     comment = [
#         "Dear Angel ineeds her solitude time !! Hugs ma girl !!"
#    ]


#    if time_ago_in_minutes >60
#     "more than an hour"
#    elsif time_ago_in_minutes == 60
#     "an hour"
#     elsif time_ago_in_minutes<=1
#         "just a moment ago"
#    else
#     "less than an hour"
#     end

    # if time_ago_in_minutes >= 60
    #     "#{time_ago_in_minutes / 60} hours ago"
    # else
    #     "#{time_ago_in_minutes} minutes ago"
    # end

    #humanized_time_age(time_ago_in_minutes)

   
# end