# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
firstPost = Post.create(title: 'On Vanity and Pride', body: '“Vanity and pride are different things, though the words are often used synonymously. A person may be proud without being vain. Pride relates more to our opinion of ourselves, vanity to what we would have others think of us.” ― Jane Austen, Pride and Prejudice')
secondPost = Post.create(title: 'On Courage', body: '“There is a stubbornness about me that never can bear to be frightened at the will of others. My courage always rises at every attempt to intimidate me.” ― Jane Austen, Pride and Prejudice')
thirdPost = Post.create(title: 'On Temper', body: '“I have faults enough, but they are not, I hope, of understanding. My temper I dare not vouch for. It is, I believe, too little yielding— certainly too little for the convenience of the world. I cannot forget the follies and vices of other so soon as I ought, nor their offenses against myself. My feelings are not puffed about with every attempt to move them. My temper would perhaps be called resentful. My good opinion once lost, is lost forever.” ― Jane Austen, Pride and Prejudice')

firstPost.comments.create(author: 'Mr. Darcy', body: '"You must allow me to tell you how ardently I admire and love you."')
secondPost.comments.create(author: 'Mr. Darcy', body: '"My affections and wishes are unchanged; but one word from you will silence me on this subject for ever.”')
