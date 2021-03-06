/datum/faction/pmc
	name = "Private Military Company"
	faction_tag = FACTION_PMC

/datum/faction/pmc/modify_hud_holder(var/image/holder, var/mob/living/carbon/human/H)
	var/hud_icon_state
	var/obj/item/card/id/ID = H.get_idcard()
	var/_role
	if(H.mind)
		_role = H.job
	else if(ID)
		_role = ID.rank
	switch(_role)
		if(JOB_PMC_DIRECTOR)
			hud_icon_state = "sd"
		if(JOB_PMC_LEADER)
			hud_icon_state = "ld"
		if(JOB_PMC_DOCTOR)
			hud_icon_state = "td"
		if(JOB_PMC_ENGINEER)
			hud_icon_state = "ct"
		if(JOB_PMC_MEDIC)
			hud_icon_state = "md"
	if(hud_icon_state)
		holder.icon_state = "pmc_[hud_icon_state]"
