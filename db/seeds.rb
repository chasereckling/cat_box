require('./lib/cat')
require('./lib/like')

Cat.create({:name => "Tbone", :wins => 0, :loss => 0, :image => "https://farm9.staticflickr.com/8874/17333120184_80ef0becc7_o.jpg", :bio => "Tbone has the crouch of a lackey. He was brought up to be independent and after leaving school he fell in with a bad crowd. He married badly. When he served time for fraud he took up painting. Now he travel round in a beaten up old Ford van.", :location => "Portland, OR", :relationship => "single", :birthday => "May 8, 2011", :naparea => "sun sun sun!"})

Cat.create({:name => "Freckles", :wins => 0, :loss => 0, :image => "https://farm6.staticflickr.com/5447/17335192393_7985d75909_b.jpg", :bio => "Freckles has a knowing look. Her parents were military personnel. She was brought up on the wrong side of the tracks and bought a boat. She has an oafish air. She found love through internet dating. Now she is plotting revenge on her old enemies.", :location => "New York, NY", :relationship => "from a distance", :birthday => "May 8, 2011", :naparea => "the tiled kitchen floor"})

Cat.create({:name => "Truman", :wins => 0, :loss => 0, :image => "https://farm9.staticflickr.com/8759/17767841258_52611dffd6_o.jpg", :bio => "Truman has a winning smile. The people he lived with were animals. He was brought up in a quiet suburb and started up an internet venture. He has sneering disdain for everyone. He found love through internet dating. Now he has a permanent tan.", :location => "Chicago, IL", :relationship => "single", :birthday => "May 8, 2011", :naparea => "on the book you're reading"})

Cat.create({:name => "Cheester", :wins => 0, :loss => 0, :image => "https://farm8.staticflickr.com/7718/17955673875_34b86404d1_o.jpg", :bio => "Cheester is bright and breezy. He has a lazy attitude. He was brought up by a single mother. When he graduated from junior college, he worked as an artist's model. He married the first person who asked him. When his partner died he had a nervous breakdown.", :location => "London", :relationship => "no way", :birthday => "May 8, 2011", :naparea => "on the book you're reading"})

Cat.create({:name => "Bob", :wins => 0, :loss => 0, :image => "https://farm9.staticflickr.com/8834/17769430749_4a4c4e739f_o.jpg", :bio => "Bob is bright and breezy. He has the classic good looks of a film star. He was a runaway. His parents were kind but misguided. He was educated by a mail order company based in Luxembourg. He married the girl next door. He has a criminal record.", :location => "New Haven, Connecticut", :relationship => "ready to mingle", :birthday => "May 8, 2011", :naparea => "on the book you're reading"})

Cat.create({:name => "Garfield", :wins => 0, :loss => 0, :image => "https://farm6.staticflickr.com/5467/17956369911_152c632f84_o.jpg", :bio => "Garfield is an abrupt and brusque personality. She has a ravaged face. She was educated by overhearing adult conversations in Uruguayan coffe houses. She was constantly in trouble as a child for causing mischief. Her parents were academics. After she got expelled from school she had a kid. Now she eats nothing but fast food.", :location => "LA", :relationship => "single", :birthday => "May 8, 2011", :naparea => "on the book you're reading"})

Cat.create({:name => "Mr.Yam Yam", :wins => 0, :loss => 0, :image => "https://farm6.staticflickr.com/5446/17768091500_6825ac2c60_o.jpg", :bio => "Mr. Yam Yam has the smooth features of an innocent. He was brought up by a single mother and after leaving school he joined a gang. He never married. When disaster struck he turned to amateur sleuthing. Now he spends his time harping back to the good old days.", :location => "Berwick, Maine", :relationship => "you wish", :birthday => "May 8, 2011", :naparea => "on the book you're reading"})

Cat.create({:name => "Spanky", :wins => 0, :loss => 0, :image => "https://farm6.staticflickr.com/5441/17768091290_ac3a42ae2e_o.jpg", :bio => "Spanky has the strutting pose of a model. Her parents were restaurant owners. She was brought up on the wrong side of the tracks and broke her leg in a skiing accident. She has an aloofness. She found love through internet dating. Now she's writing their memoirs.", :location => "Minneapolis, MN", :relationship => "dating Bruce", :birthday => "May 8, 2011", :naparea => "on the book you're reading"})

Cat.create({:name => "Bruce", :wins => 0, :loss => 0, :image => "https://farm8.staticflickr.com/7785/17956370031_428ba98933_o.jpg", :bio => "Bruce has a knowing look. He were brought up as a science experiment and after leaving school he joined the police. He never married. When insurgents staged a coup he took up painting. Now he visits the shrink once a week.", :location => "Your lap", :relationship => "casually dating Spanky", :birthday => "May 8, 2011", :naparea => "on the book you're reading"})

Cat.create({:name => "Shiba", :wins => 0, :loss => 0, :image => "https://farm8.staticflickr.com/7710/17769430669_f8e3aa12ae_b.jpg", :bio => "Shiba is a mess of emotions. She has no moral fibre. She was brought up in the inner-city. When she left to seek her fortune she did voluntary service in Africa. She married her flatmate. When disaster struck she became advisor to a rich Arabian prince.", :location => "Seattle, WA", :relationship => "married to Buster", :birthday => "May 8, 2011", :naparea => "on the book you're reading"})

Cat.create({:name => "Buster", :wins => 0, :loss => 0, :image => "https://farm6.staticflickr.com/5350/17769430559_1c72c1bef7_o.jpg", :bio => "Buster is gloomy and sad. He has a history of cheating on his partners. He was brought up the son of a diplomat. When he got expelled from school he spent a few years as a tour guide. He married the girl next door. When he was exposed by the press he found himself unable to continue.", :location => "Portland, OR", :relationship => "married to Shiba", :birthday => "May 8, 2011", :naparea => "on the book you're reading"})

Like.create({:name => "Meow Mix", :image =>"http://ecx.images-amazon.com/images/I/811r%2BpY-l4L._SL1500_.jpg"})

Like.create({:name => "Friskies", :image =>"http://www.morenormalthannot.com/wp-content/uploads/2014/06/friskies.jpg"})

Like.create({:name => "Fancy Feast", :image =>"http://www.petco.com/assets/product_images/0/050000427949C.jpg"})

Like.create({:name => "Mice", :image =>"http://www.rochesterexterminating.com/content/images/pests/trappingmice0.jpg"})

Like.create({:name => "Water", :image =>"http://www.blastr.com/sites/blastr/files/water_572238684.jpg"})

Like.create({:name => "Laying in Sun", :image =>"http://hellogiggles.com/wp-content/uploads/2014/07/22/cat-in-the-sun.jpg"})

Like.create({:name => "Other Cats", :image =>"http://vignette1.wikia.nocookie.net/houseofnight/images/8/8b/Cats.jpg"})

Like.create({:name => "People", :image =>"http://images.huffingtonpost.com/2014-09-10-teens.jpg"})

Like.create({:name => "Incessant Digging", :image =>"http://www.catster.com/files/cat-litter%20box_0.jpg"})

Like.create({:name => "Ruining Furniture", :image =>"http://www.icatcare.org/sites/default/files/kcfinder/images/images/cat-scratching.jpg"})
