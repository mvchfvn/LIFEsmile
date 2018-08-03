
def lettering_style(letter, num = 1)
    lettering = {
        "brush" => ["Pentel Pigment Ink Brush Pen", "https://www.amazon.com/Pentel-Pigment-Ink-Brush-Pen/dp/B002GKCDPW", ], 
        "monoline" => ["Krink Ink Marker", "https://shop.krink.com/products/k-70-permanent-ink-marker-1"],
        "sans-serif" => ["Pilot Parallel Pen", "https://www.amazon.com/Pilot-Parallel-Calligraphy-Cartridges-90050/dp/B002RJNT46"], 
        "italic" => ["Pilot Plumic Fountain Pen", "https://www.jetpens.com/Pilot-Plumix-Fountain-Pen-Black-Body-Medium-Italic-Nib/pd/4564"]
        
    }
    return lettering[letter][num]
end

def journal_type(journalPreference, num = 1)
    journal = {"spiral" => ["Erin Condren Dot Grid Spiral", "https://bit.ly/2Kkc0Yl"], "bound" => ["Leuchtturm1917 Bullet Journal", "https://bit.ly/2M8XeW0"]}
    return journal[journalPreference][num]
end

def productivity_level(level)
    spreads = {
        "high" => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHH8nZby0UBpqQ1YjhRAIq9eAT5uvG9KvhVSq2kFfTI5IXKmmq", 
        "moderate" => "https://static1.squarespace.com/static/58fda4dfe6f2e1ad3fdc2e1b/t/5b460db2352f5340dff114bd/1531317693614/25+weekly+spread+ideas+bujo+7.png", 
        "low" => "https://merakimother.com/wp-content/uploads/2018/05/june-weekly-spread.jpg"
    }
    
    # spreads = {
    #     "high" => "https://i.ytimg.com/vi/kYnx7nPw-xo/maxresdefault.jpg", 
    #     "moderate" => "https://i.ytimg.com/vi/kYnx7nPw-xo/maxresdefault.jpg", 
    #     "low" => "https://i.ytimg.com/vi/kYnx7nPw-xo/maxresdefault.jpg"
    # }
    
    
    
    return spreads[level]
end