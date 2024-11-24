#import "@preview/hydra:0.5.1": hydra
#import "@preview/weave:0.2.0": compose_ as c

#set text(font: "Literata")
#set par(justify: true)
#set page(
  numbering: "1/1",
  margin: (outside: 1cm, inside: 2cm),
  footer: context {
    let page = counter(page)
    let n = page.get().first()
    stack(
      dir: ltr,
      if calc.rem(n, 3) == 1 {
        text(
          13pt,
          rgb(black).lighten(30%),
        )[This book is under the CC-BY-NC-SA 4.0 License, available
          #link("https://writing.charlotte-thoms.me#awb2024", "here")]
      } else {
        []
      },
      h(1fr),
      [#page.display("1")],
    )
  },
  header: context {
    if calc.odd(here().page()) {
      stack(
        dir: ltr,
        align(left, [_A Witchy Best Friend_]),
      )
    } else {
      align(right, emph(hydra(1)))
    }
  },
)

#let title = [*A Witchy Best Friend (2024)*\ Charlotte O. Thomas
  \ _Last updated #datetime.today().display("[year]-[month]-[day]")_]

#v(1fr)
#set text(size: 24pt)
#set align(center)
#title
#set align(left)
#v(1fr)
#pagebreak(weak: true)

#set text(
  size: 12.5pt,
  hyphenate: false,
  number-type: "old-style",
  number-width: "proportional",
)


#outline(title: "Table of Chapters")

#let middle = c((
  block.with(width: 100%),
  align.with(center),
  strong,
))[$ast.basic$~$ast.basic$~$ast.basic$]


#set heading(numbering: "I. ")
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  pagebreak(to: "odd")
  v(1em)
  set align(center)
  set text(size: 16pt, weight: "bold")
  if counter(heading).get().first() == 3 {[#emph(it.body)]} else {[Chapter
  #counter(heading).display("I. ") \ #emph(it.body)]}
  v(2em)
}

= Coming Out <co>
#[
  Ophelie was walking, nervously, in the direction of the Girls’ Dorm to meet her
  best friend - Clara. They made a point of having a weekly movie night they
  dubbed the _Dumb Film Festival_, they started it two months into their
  first term at Uni.

  It was very effective for them to relax and blow off some steam accumulated
  during the week.

  This time, however, she wasn’t _just_ walking for their weekly movie night, you
  see, Ophelie had a secret, she _was a girl_. Okay, it might sound obvious, but
  for the doctors who assigned her birth gender, it was apparently not!

  A secret she had carried, alone, for far too long, so this time, she was going to
  come out to her best friend, she was queer too - a lesbian, as far as Ophelie
  knew - thus she had high hopes her friend would accept her.

  She smiled as she remembered the memories of growing up together and the long hours
  of mischief they played together. All of this coalesced in a big smile and a
  flutter in Ophelie’s stomach as her crush bubbled to the surface for a minute.

  She gulped, _hard_, she was in front of her door, she just had to knock, come
  out, and kiss, right?

  That wasn’t _so hard_ was it?

  #middle

  After goddess knew how many minutes - or hours? - of silence and anxiety she
  steadied herself and worked up the courage to knock on the door… Just for it
  to open in front of her.

  “Oh, E. You’re here, you’re late you know that?” Clara smirked

  The view of her best friend - and crush - smugly smirking like that _did things
to Ophelie_ but she kept on. “Yes, I’m here, and yes I know that. I _was_ on
  time, I just kept looking at the door too long” she said, her voice barely above
  a whisper, and with a distinctive _female_ quality which betrayed her voice
  training.

  Clara raised an eyebrow and muttered “‘Figures”, and let Ophelie enter the room.

  It was a fairly standard room, in the _Leonard Nimoy_‘s building, which housed
  the long-term dorms, for the girls, here at the Drama University of Northern
  Europe. The walls were far from bare, decorated tastefully with a lot of pride
  flags - so much she couldn’t see the one applying to her friend - and some old
  posters from her favourite shows.

  On the desk proudly stood a part-built model of the _USS Enterprise_, not the A,
  B, C, D, E, F or G. The _original_. Along with many sheets of paper, music,
  drama lessons, and lines to learn.

  “Okay let’s cho-” Clara started when Ophelie stopped her with a noise. More
  arching her eyebrows, Ophelie gulped _again_, it was now or never.

  “I have something to say yo-” Ophelie said as she was stopped when she felt a
  hug by her much taller friend, she was _the_ butch lesbian, as opposed to herself, she was
  small for a boy, about 160cm, which made her in the median height for girls her
  age.

  “Yeah, yeah, you’re trans, you’re a girl, she/her pronouns, the works, no shit
  Sherlock” Clara said, with her signature smug smirk.

  Ophelie was absolutely _stunned_. How? Why? Her mouth was ajar and she failed to
  compute what was happening, she regained her composure when she heard the distinctive sound of an old-school camera taking a photograph of her

  “Hey!” She said, pouting, to her friend.
  “Sorry E-, friend, you’re cute, but you’re oblivious as fuck if you thought we
  were not _know it_. I even think there were some bets on when you would come
  out.” Clara said, smiling softly

  “But I’m proud of you, so how come I don’t know it already?” She finished
  petting Ophelie’s hair.

  “Know what?” the latter said, still pouting.
  “Your name.”
  “Oh! It’s Ophelie, like _Ophelia_ but without the _a_ sound it’s a long _ee_
  sound it originates from-” She said excitedly.

  “Yeah yeah, nerd, so proud of you _Ophelie_” hearing her name said _like that_
  by her crush did a lot to the poor girl, “Let me prepare and I’ll do some shitty
  magic to _correct_ your body okay?” Clara grinned.

  “Thanks” Ophelie pouted, as Clara ruffled her hair.

  #v(1fr)

  “Wait, *_magic_*?”
]


= Magic <magic>

#[

  “Yeah, magic, I’m a Witch, why?” Clara said nonchalantly.
  Ophelie was *livid* and _flabbergasted_ (she didn’t think of this word,
  often but such a situation warranted it). Her friend, Clara, had said _magic?_.
  She knew the world had magical users, of course, it was common knowledge after
  all but it was _rare_.

  Few people could wield magical energies to their will, and most of them were
  weak, some telekinesis at best, maybe a fire starter, nothing more. Those
  born with _magical talent_ were rare, and usually picked up at sixteen years
  old to train in magical theory, in case you _were_ strong enough the State (or
  worse, the world) needed you.

  But she was twenty, and she assumed so, her friend was as well, what the hell
  was she doing at a _Drama University_ when she potentially had enough power to
  bend the rules of society in her favour. Ophelie calmed herself, Clara was her
  friend, she _wouldn’t_ use her or use magic on her without her consent she was
  _safe_.

  Clara saw how Ophelie reacted and cringed “I’m sorry Ophelie, I swear it’s
  nothing too important, yeah it’s _magic_ and yeah I have… more power than
  everyone would think I would but it’s _okay_, I will protect you really,
  believe me” She smiled softly and side-hugged her friend, who started crying
  softly.

  #middle

  After ten minutes - or maybe an hour - Ophelie stopped weeping and fell on
  her crush’s lap. She sighed “You really can wield magic? And what were you
  talking about with my body, you can _alter_ other people’s bodies? It’s a
  little… dangerous” Ophelie wimpered.

  “Yup, and well, it’s _more complicated than that_. I can alter other people’s
  bodies sure, but only with their conscious and unconscious consent, and then I
  can only make modifications which don’t contradict their internal image.” She
  explained, deep into magitheory.

  Ophelie stopped her “_Internal Image?_,” she asked, she had _no idea_ what her
  friend was talking about. An _internal image_, magic, consent, it ringed up in
  her ears as she tried to parse and understand, but her mind was throwing
  parsing errors after parsing errors.

  Clara smiled softly “Yeah the _Internal Image_ of a person is their… well
  it’s how their mind, which is an abstract simplification of reality, trust me consciousness and being sentient is weird in magitheory.” she
  stopped herself rambling, “Sorry I’m rambling, what I’m saying is, _you_, your
  _mind_, your _consciousness_, whatever you want, contains an _image_ a map of
  your ideal body, influencing all your choices.
  If your body isn’t synchronised
  with your internal image then it causes the _magical internal-external body
  desynchronisation syndrome_ better known as _Gender Dysphoria_ or _Body
  Dysmorphia_.”

  Ophelie needed a minute, or ten, to comprehend what Clara just _dumped_ on
  her. _Body maps_. _Internal images_. _Gender Dysphoria_ and _Body Dysmorphia_
  she was utterly lost and her head was spinning faster than the Earth.

  Clara just _picked_ her friend up and hugged her completely and petted her,
  until she calmed down. It took a few more minutes before the witch continued
  “Sorry for dumping all of this information on you, the bottom line is, I get it,
  I saw my parents help a lot of trans folx too, so I can help you.

  #middle

  They started their movie night, to make some time for Ophelie to make up her
  mind. They were on their second movie, the _2034_ remake of a
  sappy sapphic film, they were both transfixed as the love interest and the
  main character were approaching each other.

  Ophelie lay entirely on Clara’s body, not that the weight was a problem for
  Clara - she was pretty light and small. They were both eating some popcorn
  and unbeknown to them they both _really_ wanted to kiss the other. But for now,
  they were cuddling and munching some popcorn.

  Clara giggled suddenly, “What?” Ophelie said, waking up from a light slumber,
  her friend was _comfortable_.

  Clara smirked “Nothing ba- Ophelie, you’re really cute. I was lightly
  monitoring your stress levels with you know _magic_ and I see they are much
  better now. Are you ready to decide?” She finished smiling at her small
  friend.

  Ophelie blushed, “Will-” she tried, “Will you see my, well, my _internal
  image_?” she finished, her face a deep crimson.

  Clara laughed out loud, like, really she laughed like her life depended on it.
  “Honey, _I_ am the one making the spell, if I can’t see your internal image
  how would I be able to pull it?” she smirked, sending flutters in Clara’s
  stomach.

  With a tiny, high, voice the latter consented to the spell. Clara looked
  deeply in Ophelie’s eyes, conveying _raw feelings_ over a non-existing link
  but somehow she understood and nodded.

  #v(1fr)

  _The spell finished with Clara kissing her._
]


= Epilogue : Love <love>
- "Ophelie! Faster you incompetent lesbian! We must be at Violet’s in half an hour!" Clara yelled through the door

It’s been almost year since that day, and every one of them was a blessing, I love my body sure, and dysphoria mostly disappeared, it was a blessing in itself I was finally able to do well in class and in life. I had more friends now – Violet was one of them – and I was valedictorian of the engineering class of Nimoy’s University.

Well I have to get moving or Clara will magically open this door…

I opened the door to see Clara mostly patiently waiting beside it, we moved
into an apartment at the end of our semester, so we moved together. She, and I, living together in an apartment and some non-school days were like heaven.

This apartment has a distinct property that Clara specially searched when she found the apartment on the online website, #emph[There was only one bedroom.]

- "How do I look" I weakly said, trying to calm my anxiety and the torrent of feeling I was experiencing

- "Oh my god Ophelie this dress is so cute on you" said Clara, her face lit up like a Christmas tree when she saw me

She moved toward me, leveled up my chin before gently kissing me and hugging me as the same time, I hugged her back tightening the embrace as an effort to close the small but terrible gap between our bodies, I completely melted in her hug and marveled as the feeling of this hug and kiss, I could never get enough hugs hers were so good.

- "We have to go baby" she said grinning at my inability to talk or even move as I felt the last remnant of her warmth on my body, she took my hand, and we began walking towards the campus.

#middle

- "Ophelie! Clara! Always so beautiful you two" Violet grinned as we entered
into her dorm room for our weekly film meetup. Jim and his partner were on a
date, so there were only the three of us.

- "Hello Violet" we both said, hugging her, Violet was another trans girl in my
class, she also benefited for the help of my girlfriend, well to be honest, I
begged Clara to help her, and she finally agreed, not without kissing me and
doubling her cuddling requests as reward, not that I was complaining I loved
cuddling with her.

- "Hey, I see you two "only housemate" are closer now huh-uh" she said with a knowing grin, we were not officially dating, that is we were not out in the university, and were more of a private item, but my friendship with Violet started when she connected the dot between who I was and who I am, she also figured out my relationship with Clara a few weeks into our friendship. The housemate thing was an inside lesbian joke apparently, I was not really into internet but Clara and Violet were.

Jim and his partner were originally Clara’s friend from high school, but they attend another close university and live not so far away, she also "helped" Jim’s partner Alex.

In and all we were a knit-close group of friends bonded by mundane university and less-mundane magic.

We chose a film and settled down on the couch, I, the smallest individual of this group, was in the middle while Clara was cuddled at my right and Violet was cuddled at my left, cuddling is nice, so I said nothing as I basked into the feeling of friends, of my girlfriend, cuddles, snacks and watching a silly comedy film from a few years ago. I think its name was "The Super-revenge of the jedi-mummies versus the mighty gender-bent avengers in the new matrix" apparently it was intended to be a big film consisting of a crossover between four huge licenses of the time.

But it had failed and was now considered a useless comical film for nights like these.

#middle

A few days later I was at University thinking what I could buy for Clara for Valentine day, when I also remembered that Valentine day would be the first anniversary of this body, and the first anniversary of our relationship, I decided to buy a nice necklace, I could wait next year for the proposal.

#middle

But apparently Clara thought otherwise,

- "Ophelie, I love you and the past year have been a blessing" I nodded, but she motioned that she hadn’t finished yet "and I want to spend the remainder of my life on this planet with you, I can’t imagine a world where we’re not together, what I’m trying to say is Ophelie, will you marry me?"

My heart stopped, and I began crying, Clara wanted to marry me??

- "Of course Clara I love and ever will love you’re my life my sun my…" but Clara stopped me by kissing me.

I was in heaven, I am officially Clara’s fiancée ? And she is my fiancée ? I never thought it would be possible !

#middle

The wedding was small, but it was on purpose, our families were there, looking
proud of us, our friends, Violet and her boyfriend, Jim and his now married
partner, Valentina and her polycule (a boyfriend, two girlfriends and one
enby-friend as they called themselves) and of course my sister were all there
too looking proud of us. My sister was my witness while Clara’s brother was her
man of honor, it’s funny considering our usual roles, but what’s a better time
than our lesbian wedding to annoy normativity?

The day has been exhausting but here we were, as newly married wives, cuddled in our bed waiting for sleep to take us.

Just before I fell asleep though, one thought came to me, do Clara love me ?
