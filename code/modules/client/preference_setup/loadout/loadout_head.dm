/datum/gear/head
	display_name = "bandana, pirate-red"
	path = /obj/item/clothing/head/bandana
	slot = slot_head
	sort_category = "Hats and Headwear"

/datum/gear/head/bandana_green
	display_name = "bandana, green"
	path = /obj/item/clothing/head/greenbandana

/datum/gear/head/bandana_orange
	display_name = "bandana, orange"
	path = /obj/item/clothing/head/orangebandana

/datum/gear/head/beret
	display_name = "beret, red"
	path = /obj/item/clothing/head/beret

/datum/gear/head/beret/bsec
	display_name = "beret, navy (officer)"
	path = /obj/item/clothing/head/beret/sec/navy/officer
	allowed_roles = list("Security Officer","Head of Security","Warden")

/datum/gear/head/beret/bsec_warden
	display_name = "beret, navy (warden)"
	path = /obj/item/clothing/head/beret/sec/navy/warden
	allowed_roles = list("Head of Security","Warden")

/datum/gear/head/beret/bsec_hos
	display_name = "beret, navy (hos)"
	path = /obj/item/clothing/head/beret/sec/navy/hos
	allowed_roles = list("Head of Security")

/datum/gear/head/beret/csec
	display_name = "beret, corporate (officer)"
	path = /obj/item/clothing/head/beret/sec/corporate/officer
	allowed_roles = list("Security Officer","Head of Security","Warden")

/datum/gear/head/beret/csec_warden
	display_name = "beret, corporate (warden)"
	path = /obj/item/clothing/head/beret/sec/corporate/warden
	allowed_roles = list("Head of Security","Warden")

/datum/gear/head/beret/csec_hos
	display_name = "beret, corporate (hos)"
	path = /obj/item/clothing/head/beret/sec/corporate/hos
	allowed_roles = list("Head of Security")

/datum/gear/head/beret/eng
	display_name = "beret, engie-orange"
	path = /obj/item/clothing/head/beret/engineering

/datum/gear/head/beret/purp
	display_name = "beret, purple"
	path = /obj/item/clothing/head/beret/purple

/datum/gear/head/beret/sec
	display_name = "beret, red (security)"
	path = /obj/item/clothing/head/beret/sec
	allowed_roles = list("Security Officer","Head of Security","Warden")

/datum/gear/head/cap
	display_name = "cap, black"
	path = /obj/item/clothing/head/soft/black

/datum/gear/head/cap/blue
	display_name = "cap, blue"
	path = /obj/item/clothing/head/soft/blue

/datum/gear/head/cap/mailman
	display_name = "cap, blue station"
	path = /obj/item/clothing/head/mailman

/datum/gear/head/cap/flat
	display_name = "cap, brown-flat"
	path = /obj/item/clothing/head/flatcap

/datum/gear/head/cap/corp
	display_name = "cap, corporate (Security)"
	path = /obj/item/clothing/head/soft/sec/corp
	allowed_roles = list("Security Officer","Head of Security","Warden", "Detective")

/datum/gear/head/cap/green
	display_name = "cap, green"
	path = /obj/item/clothing/head/soft/green

/datum/gear/head/cap/grey
	display_name = "cap, grey"
	path = /obj/item/clothing/head/soft/grey

/datum/gear/head/cap/orange
	display_name = "cap, orange"
	path = /obj/item/clothing/head/soft/orange

/datum/gear/head/cap/purple
	display_name = "cap, purple"
	path = /obj/item/clothing/head/soft/purple

/datum/gear/head/cap/rainbow
	display_name = "cap, rainbow"
	path = /obj/item/clothing/head/soft/rainbow

/datum/gear/head/cap/red
	display_name = "cap, red"
	path = /obj/item/clothing/head/soft/red

/datum/gear/head/cap/sec
	display_name = "cap, security (Security)"
	path = /obj/item/clothing/head/soft/sec
	allowed_roles = list("Security Officer","Head of Security","Warden", "Detective")

/datum/gear/head/cap/yellow
	display_name = "cap, yellow"
	path = /obj/item/clothing/head/soft/yellow

/datum/gear/head/cap/white
	display_name = "cap (colorable)"
	path = /obj/item/clothing/head/soft/mime

/datum/gear/head/cap/white/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/cap/mbill
	display_name = "cap, bill"
	path = /obj/item/clothing/head/soft/mbill

/*/datum/gear/head/cap/sol
	display_name = "cap, sol"
	path = /obj/item/clothing/head/soft/sol

/datum/gear/head/cap/expdition
	display_name = "cap, expedition"
	path = /obj/item/clothing/head/soft/sol/expedition

/datum/gear/head/cap/fleet
	display_name = "cap, fleet"
	path = /obj/item/clothing/head/soft/sol/fleet*/ // Vorestation removal

/datum/gear/head/cowboy
	display_name = "cowboy, rodeo"
	path = /obj/item/clothing/head/cowboy_hat

/datum/gear/head/cowboy/black
	display_name = "cowboy, black"
	path = /obj/item/clothing/head/cowboy_hat/black

/datum/gear/head/cowboy/wide
	display_name = "cowboy, wide"
	path = /obj/item/clothing/head/cowboy_hat/wide

/datum/gear/head/fedora
	display_name = "fedora, brown"
	path = /obj/item/clothing/head/fedora/brown

/datum/gear/head/fedora/grey
	display_name = "fedora, grey"
	path = /obj/item/clothing/head/fedora/grey

/datum/gear/head/hairflower
	display_name = "hair flower pin (colorable)"
	path = /obj/item/clothing/head/pin/flower/white

/datum/gear/head/hairflower/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/pin
	display_name = "pin selection"
	path = /obj/item/clothing/head/pin

/datum/gear/head/pin/New()
	..()
	var/list/pins = list()
	for(var/pin in typesof(/obj/item/clothing/head/pin))
		var/obj/item/clothing/head/pin/pin_type = pin
		pins[initial(pin_type.name)] = pin_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(pins))

/datum/gear/head/hardhat
	display_name = "hardhat selection"
	path = /obj/item/clothing/head/hardhat
	cost = 2

/datum/gear/head/hardhat/New()
	..()
	var/list/hardhats = list()
	for(var/hardhat in typesof(/obj/item/clothing/head/hardhat))
		var/obj/item/clothing/head/hardhat/hardhat_type = hardhat
		hardhats[initial(hardhat_type.name)] = hardhat_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(hardhats))

/datum/gear/head/boater
	display_name = "hat, boatsman"
	path = /obj/item/clothing/head/boaterhat

/datum/gear/head/bowler
	display_name = "hat, bowler"
	path = /obj/item/clothing/head/bowler

/datum/gear/head/fez
	display_name = "hat, fez"
	path = /obj/item/clothing/head/fez

/datum/gear/head/tophat
	display_name = "hat, tophat"
	path = /obj/item/clothing/head/that

/datum/gear/head/wig/philosopher
	display_name = "natural philosopher's wig"
	path = /obj/item/clothing/head/philosopher_wig

/datum/gear/head/wig
	display_name = "powdered wig"
	path = /obj/item/clothing/head/powdered_wig

/datum/gear/head/ushanka
	display_name = "ushanka"
	path = /obj/item/clothing/head/ushanka

/datum/gear/head/santahat
	display_name = "santa hat"
	path = /obj/item/clothing/head/santa
	cost = 2

/datum/gear/head/santahat/New()
	..()
	var/list/santahats = list()
	for(var/santahat in typesof(/obj/item/clothing/head/santa))
		var/obj/item/clothing/head/santa/santahat_type = santahat
		santahats[initial(santahat_type.name)] = santahat_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(santahats))

/datum/gear/head/hijab
	display_name = "hijab"
	path = /obj/item/clothing/head/hijab

/datum/gear/head/hijab/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/kippa
	display_name = "kippa"
	path = /obj/item/clothing/head/kippa

/datum/gear/head/kippa/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/turban
	display_name = "turban"
	path = /obj/item/clothing/head/turban

/datum/gear/head/turban/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/taqiyah
	display_name = "taqiyah"
	path = /obj/item/clothing/head/taqiyah

/datum/gear/head/taqiyah/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/kitty
	display_name = "kitty ears"
	path = /obj/item/clothing/head/kitty

/datum/gear/head/rabbit
	display_name = "rabbit ears"
	path = /obj/item/clothing/head/rabbitears

//CHOMPStation Addition Start - TFF 17/10/19 - Add Nurse Hat for one point, no job lock
/datum/gear/head/nurse_hat
	display_name = "hat, nurse"
	path = /obj/item/clothing/head/nursehat
//CHOMPStation Addition End

/datum/gear/head/beanie
	display_name = "beanie"
	path = /obj/item/clothing/head/beanie

/datum/gear/head/beanie/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/loose_beanie
	display_name = "loose beanie"
	path = /obj/item/clothing/head/beanie_loose

/datum/gear/head/loose_beanie/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/beretg
	display_name = "beret"
	path = /obj/item/clothing/head/beretg

/datum/gear/head/beretg/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/sombrero
	display_name = "sombrero"
	path = /obj/item/clothing/head/sombrero

/datum/gear/head/flatcapg
	display_name = "flat cap"
	path = /obj/item/clothing/head/flatcap/grey

/datum/gear/head/flatcapg/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/bow/small
	display_name = "hair bow, small (colorable)"
	path = /obj/item/clothing/head/pin/bow

/datum/gear/head/bow/small/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/head/welding/
	display_name = "welding, normal (engineering/robotics)"
	path = /obj/item/clothing/head/welding
	cost = 2
	allowed_roles = list("Chief Engineer","Station Engineer","Atmospheric Technician","Research Director","Roboticist")

/datum/gear/head/welding/demon
	display_name = "welding, demon (engineering/robotics)"
	path = /obj/item/clothing/head/welding/demon
	allowed_roles = list("Chief Engineer","Station Engineer","Atmospheric Technician","Research Director","Roboticist")

/datum/gear/head/welding/knight
	display_name = "welding, knight (engineering/robotics)"
	path = /obj/item/clothing/head/welding/knight
	allowed_roles = list("Chief Engineer","Station Engineer","Atmospheric Technician","Research Director","Roboticist")

/datum/gear/head/welding/fancy
	display_name = "welding, fancy (engineering/robotics)"
	path = /obj/item/clothing/head/welding/fancy
	allowed_roles = list("Chief Engineer","Station Engineer","Atmospheric Technician","Research Director","Roboticist")

/datum/gear/head/welding/engie
	display_name = "welding, engie (engineering/robotics)"
	path = /obj/item/clothing/head/welding/engie
	allowed_roles = list("Chief Engineer","Station Engineer","Atmospheric Technician","Research Director","Roboticist")

/*/datum/gear/head/beret/sol
	display_name = "beret sol, selection"
	path = /obj/item/clothing/head/beret/sol

/datum/gear/head/beret/sol/New()
	..()
	var/list/sols = list()
	for(var/sol_style in typesof(/obj/item/clothing/head/beret/sol))
		var/obj/item/clothing/head/beret/sol/sol = sol_style
		sols[initial(sol.name)] = sol
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(sols))*/ // Vorestation removal.

/datum/gear/head/surgical/black
	display_name = "surgical cap, black"
	path = /obj/item/clothing/head/surgery/black

/datum/gear/head/surgical/blue
	display_name = "surgical cap, blue"
	path = /obj/item/clothing/head/surgery/blue

/datum/gear/head/surgical/green
	display_name = "surgical cap, green"
	path = /obj/item/clothing/head/surgery/green

/datum/gear/head/surgical/navyblue
	display_name = "surgical cap, navy blue"
	path = /obj/item/clothing/head/surgery/navyblue

/datum/gear/head/surgical/purple
	display_name = "surgical cap, purple"
	path = /obj/item/clothing/head/surgery/purple
