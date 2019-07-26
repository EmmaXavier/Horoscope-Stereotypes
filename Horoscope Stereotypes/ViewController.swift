//
//  ViewController.swift
//  Horoscope Stereotypes
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    


    @IBAction func showMessage(sender: UIButton) {
        
        let emojis = ["♈️" : "Aries",  "♉️" : "Taurus", "♊️" : "Gemini", "♋️" : "Cancer", "♌️" : "Leo", "♍️" : "Virgo", "♎️" : "Libra", "♏️" : "Scorpio", "♐️" : "Sagittarius", "♑️" : "Capricorn", "♒️" : "Aquarius", "♓️" : "Pisces"]
        let customMessage = ["Aries": ["People think those who are aries have a short fuse, but people just can't comprehend their passion!", "The small minded will say aries represents the confrontational, but really, they just know what they want.", "People must be confused, they think the aries leave things unfinished, yet they have unrivaled passion?Uh... okay."], "Taurus": ["People frame the stubborness of the taurus as negative, but they just won't stop until they reah their goals.", "They say taurus houses the idle and lazy, but have they seen The Rock? That's one jacked taurus!", "People think taurus is the sign for the selfish, yet also the generous? Maybe taurus are just capable of selflessness *and* self love!"], "Gemini": ["Geminis are often considered anxious, shifty people, but that's due to the stress they put on themselves to please people.", "Geminis can be indecisive because they'll often want to do so much in so little time, but that just proves their desire for experiences and knowledge!", "People say that Gemini houses the superficial and shallow, but Serena Williams is by no means superficial, is she?"], "Cancer": ["Pessimist or realist? Most will say cancer is full of pessimists, but they're just jealous that cancer can see things the way they are, for real!", "'Cancers are clingy!' You're just afraid of commitment.", "People believe cancers are overemotional and moody, yet also preach the importance to mental health of keeping in touch with your emotions?! Okay dude..."], "Leo" : ["Leos are considered egoistic, but in other signs it is seen as confidence? Thanks to society for double standards...", "People consider Leo's natural born leadership to be controlling, but someone has to take charge and I don't see any of them volunteering!", "Leos are impatient, but at least they do something to get stuff done instead of sitting on their hands through their impatience and complaining about it!"], "Virgo": ["People will say that virgos are harsh, but in all honesty they don't mince words and don't see the point of white lies, which is something we could all do well to learn from!", "Virgos are said to be judgemental because they lack a filter, but their judgements are usually said with good intentions.", "Virgos are tough nuts to crack, and so many consider them hard to work with, but really, virgos just know when to comprimise and when not to, and they believe the time to comprimise comes very rarely."], "Libra": ["Those who don't have much experience with libras will tell you that they are unreliable, being easily swayed by other people, but those people don't understand taht libras are fiercely loving and loyal, and are always reliable and steadfast to the ones whom they place their trust in.","People interpret libras'  need to please in all situations as detached, a very unempathetic interpretation, libras are allowed to be introverted, yet society frowns upon introverts and thus, libras force themselves to be extroverted!","Libras are often laid back people, which others call idleness or laziness, but in reality libras understand the need to enjoy life and take some time to relax when they need it, a much more healthy way to deal with stress than some others."], "Scorpio":  ["People believe scorpios to be secretive due to their value of privacy. Sorry that they don't overshare like everyone else...?", "Scorpios are a touch sensitive, and when people insult something they feel pride towards they will act in a way which they think is appropriate. It's not resentful as most would assume, but taking karma into their own hands!", "The less empathetic members of the populace will tell you that scorpios are jealous individuals, but honestly, they're just protective of who they care about, and those who take it out of proportion ruin the image of the other members of the scorpio sign."], "Sagittarius": ["People think sagittarius signs are careless and take unnecessary risks, but in reality they're the ones who take the risks needed to get the job done!", "Saggitarius signs are self-assured and know they are capable of great things, but others are intimidated by such confidence, choosing to call them egotists!", "Inconsistency is associated with sagittarius signs because their interests vary and they can easily flit from thing to thing, but what people don't  consider is that they're just well rounded..."], "Capricorn": ["Capricorns are considered timid, but that judgement is given by people who don't understand the need for caution around new people.", "People interpret them to be pessimistic due to their tendency to analyze the situation and prepare properly. But capricorns saying 'it won't work' really means 'we need more time', or 'work on it more'.", "Capriocorns often are able to predict the end product of a decision or event, and when they believe something will go poorly, they will not join. Due to this they are said to be self-centered."], "Aquarius": ["The aquarius sign is often critisized for being unpredictable, but really, they understand the need for spontaneity in life, not everything can be rigidly scheduled!", "Who said aquarius signs are detached?! Have they heard of the social butterfly Justin Timberlake?! Some people... jeez...", "Aquarius signs are stubborn, wanting things to go their way, but they turn it into a positive trait by proving why things should go their way, and conversing maturely."], "Pisces": ["Pisces signs are said to be idealistic, with their head in the clouds, and yes they dream big, but they also do everything they can to achieve those dreams!", "People may say that pisces is the sign for the over-sensitive, but in truth they're secure and in touch with their feelings, and have no problems showing them.", "'Pisces signs are lazy!', says who?! Apparently to not be lazy you have to hate fun and be all work all the time? No thanks, pisces signs will focus on the important part of life: actually living!"]]

        
        let randomize = Int.random(in: 0 ..< 3)
        let selectedSign = sender.titleLabel?.text
        let emojiMessage = customMessage[emojis[selectedSign!]!]?[randomize]
        
        let alertController = UIAlertController(title: emojis[selectedSign!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Bet", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }


}

