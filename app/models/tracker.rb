def your_exercise(input) 
    ex = {"yoga" => "https://dailyburn.com/life/fitness/best-yoga-stretches/", 
          "floor" => "https://www.self.com/gallery/essential-stretches-slideshow",
          "pre-running" => "https://www.self.com/gallery/run-warm-up",
          "yoga ball" => "https://www.beachbodyondemand.com/blog/exercise-ball-workouts"
    }
    
    return ex[input]
end

def water_amount(weight)
    min = weight.to_f/2
    max = weight.to_f
    
    return "You should be drinking between #{min} and #{max} ounces of water per day."
end

def your_symptoms(symptoms="Runny Nose", num=0)

    symptom = {
        "Runny Nose" => 
                ["Nasacort Allergy 24 hour", "https://bit.ly/2Oyewxz", 
                    "Flonase", "https://amzn.to/2AA8g5s", 
                    "Eucalyptus Essential Oil", "https://amzn.to/2KkAssJ", 
                    "Neti Pot", "https://amzn.to/2MbnuyV", 
                    "", "https://images-na.ssl-images-amazon.com/images/I/518z6VNx%2BfL._SX355_.jpg", "https://images-na.ssl-images-amazon.com/images/I/514ssozOZlL._SY355_.jpg", "https://bit.ly/2KhR2tb"],
                    
          "Itchy Throat" =>
                 ["Theraflu Multi-Symptom Severe Cold Green Tea & Honey Lemon 12", "", "Cepacol Extra Strength Lozenges Tangerine 16 Ct", "", "H\Natures Answer Sambucus (Nigra) Extract Spray with immune supporting herbs sambucus (black elderberry), 
                 echinacea, propolis and astragalus with the soothing essence of sage and slippery elm in an all natural convenient spray.","", 
                 "Gargle with Salt Water", "", "https://forthemommas.com/wp-content/uploads/2011/09/Theraflu-Coupon-2011-.jpg","https://target.scene7.com/is/image/Target/17444313?wid=488&hei=488&fmt=pjpeg", 
                 "https://i3.pureformulas.net/images/product/large/sambucus-black-elder-berry-extract-spray-2-fl-oz-by-natures-answer.jpg",
                 "https://thehealthorange.com/wp-content/uploads/2017/07/gargle-sm-min.jpg"], 
        "Congestion" => 
                ["Mucinex Sinus-Max Max Strength Day & Night Liquid Gels for Congestion", 
                    "https://www.target.com/p/mucinex-sinus-max-max-strength-day-night-liquid-gels-acetaminophen-24ct/-/A-17444315", 
                    "Benadryl Allergy Plus Congestion Ultratabs Allergy Relief Tablets", 
                    "https://www.target.com/p/benadryl-allergy-plus-congestion-ultratabs-allergy-relief-tablets-diphenhydramine-hci-24ct/-/A-52457054?ref=tgt_adv_XS000000&AFID=google_pla_df&CPNG=PLA_Health+Beauty+Shopping&adgroup=SC_Health+Beauty&LID=700000001170770pgs&network=g&device=c&location=9028276&gclid=CjwKCAjwtIXbBRBhEiwAWV-5nou-mJg4dEJgkmdIJQGyXPKhVBhAbRPV0FEdesRuEhguom3b5WqOWhoCPmoQAvD_BwE&gclsrc=aw.ds", 
                    "Long Hot Showers", "",
                    "Place a Warm Wet Towel on Your face", "",
                    "https://target.scene7.com/is/image/Target/17444315?wid=488&hei=488&fmt=pjpeg", 
                    "https://target.scene7.com/is/image/Target/52457054?wid=488&hei=488&fmt=pjpeg", 
                    " ", 
                    "https://content.artofmanliness.com/uploads/2013/03/face.jpg"],
        "Itchy Eyes" => 
                ["Fexofenadine (Allegra)", 
                    "https://www.target.com/p/allegra-174-24-hour-allergy-relief-tablets-fexofenadine-hydrochloride-15ct/-/A-13263272?ref=tgt_adv_XS000000&AFID=google_pla_df&CPNG=PLA_Health+Beauty+Shopping&adgroup=SC_Health+Beauty&LID=700000001170770pgs&network=g&device=c&location=9028276&gclid=CjwKCAjwtIXbBRBhEiwAWV-5ns-Wi_KPxk4lI545Boj2GpkH_EsYIAYqA6upeRTSJkomuJ9NOOru7hoC1agQAvD_BwE&gclsrc=aw.ds", 
                    "Clear Eyes .5 oz Max Itchy Eye", 
                    "https://www.target.com/p/clear-eyes-5-oz-max-itchy-eye/-/A-14774629?sid=1542S&ref=tgt_adv_XS000000&AFID=google_pla_df&CPNG=PLA_Health+Beauty+Shopping_Local&adgroup=SC_Health+Beauty&LID=700000001170770pgs&network=g&device=c&location=9028276&gclid=CjwKCAjwtIXbBRBhEiwAWV-5nl7nCrG5JuGvLLAPaCPur-RyJKKLktvk7aU2cGFNKm60A49xwo1V6RoCzXoQAvD_BwE&gclsrc=aw.ds", 
                    "Cold Compress ", "",
                    "Rinse Your Face and Stay Indoors", "",
                    "https://pics.drugstore.com/prodimg/322178/900.jpg", 
                    "https://target.scene7.com/is/image/Target/14774629?wid=488&hei=488&fmt=pjpeg", 
                    "https://sc01.alicdn.com/kf/HTB1DbErKVXXXXacXpXXq6xXFXXX6/Hot-Cold-Pack-Cold-Compress-Bag-Microwave.jpg_350x350.jpg", 
                    ""]
        }
        
        return symptom[symptoms][num]
        
end

def sleep_amount(age, units)
    if units == "months"
        if age >= 0 && age <=3 
            return "you are recommended to get 14-17 hours of sleep"
        elsif age>= 4 && age <= 11
            return "You are recommended 12-15 hours of sleep"
        end
    elsif units == "years"
        if age < 1
            return "You are recomended 12-17 hours of sleep"
        elsif age >=1 && age <= 2 
            return "You are recomended 11-14 hours of sleep"
        elsif age >=3 && age <=5
            return "You are recommended 10-13 hours of sleep"
        elsif age >= 6 && age <= 13 
            return "You are recommended 9-11 hours of sleep"
        elsif age >= 14 && age <=17
            return "You are recommended 8-10 hours of sleep"
        elsif age >= 18 && age <= 64
            return "You are recommended 7-9 hours of sleep"
        elsif age > 64
            return "You are recommended 7-8 hours of sleep"
        end
    end
end