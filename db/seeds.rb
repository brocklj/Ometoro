# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pages = Page.create([{ title: 'Kurzy1', text: "Kurz (z lat. cursus, běh) je ucelený soubor přednášek,
seminářů, cvičení atd., spojený společným tématem a obvykle také osobou (týmem)
vyučujících. Účastníci se do kurzu přihlašují (zapisují) a na závěr se často
 podrobují zkoušce a mohou získat nějaké osvědčení. Kurzy mohou být prezenční,
kde se předpokládá pravidelná účast posluchačů, anebo dálkové či e-learningové, kde
účastníci dostávají různé studijní materiály a úkoly, studují doma ve volném čase, konzultují písemně a nakonec případně skládají zkoušku. zdroj wikipedia" }, { title: 'Kurzy2' }])
courses = Course.create([{ id: 1, Name: 'Zaklady1', page_id: 1 }, { id: 2, Name: 'Zaklady2', page_id: 2 },{ id: 3, name: 'Zaklady3', page_id: 1 },{id: 3, name: 'Zaklady4', page_id: 1 }])