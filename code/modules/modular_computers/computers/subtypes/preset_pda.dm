/obj/item/modular_computer/pda
	default_hardware = list(
		/obj/item/stock_parts/computer/network_card,
		/obj/item/stock_parts/computer/hard_drive/small,
		/obj/item/stock_parts/computer/processor_unit/small,
		/obj/item/stock_parts/computer/card_slot/broadcaster,
		/obj/item/stock_parts/computer/charge_stick_slot/broadcaster,
		/obj/item/stock_parts/computer/battery_module,
		/obj/item/stock_parts/computer/tesla_link,
		/obj/item/stock_parts/computer/drive_slot
	)

	default_programs = list(
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/crew_manifest,
		/datum/computer_file/program/wordprocessor,
		/datum/computer_file/program/records
	)

/obj/item/modular_computer/pda/install_default_programs()
	if(prob(50)) //harmless tax software
		default_programs |= /datum/computer_file/program/uplink
	return ..()

/obj/item/modular_computer/pda/mercenary
	color = COLOR_WHITE

/obj/item/modular_computer/pda/ert
	color = COLOR_WHITE

/obj/item/modular_computer/pda/heads
	color = COLOR_WHITE

/obj/item/modular_computer/pda/heads/install_default_programs()
	default_programs |= /datum/computer_file/program/reports
	. = ..()

/obj/item/modular_computer/pda/heads/hop
	color = COLOR_WHITE

/obj/item/modular_computer/pda/heads/hop/install_default_hardware()
	default_hardware |= /obj/item/stock_parts/computer/scanner/paper
	. = ..()

/obj/item/modular_computer/pda/heads/ce
	color = COLOR_WHITE

/obj/item/modular_computer/pda/heads/ce/install_default_hardware()
	default_hardware |= /obj/item/stock_parts/computer/scanner/atmos
	. = ..()

/obj/item/modular_computer/pda/heads/captain
	color = COLOR_WHITE

/obj/item/modular_computer/pda/heads/captain/install_default_hardware()
	default_hardware |= /obj/item/stock_parts/computer/scanner/paper
	. = ..()

/obj/item/modular_computer/pda/science
	color = COLOR_WHITE

/obj/item/modular_computer/pda/science/install_default_hardware()
	default_hardware |= /obj/item/stock_parts/computer/scanner/reagent
	. = ..()

/obj/item/modular_computer/pda/engineering
	color = COLOR_WHITE

/obj/item/modular_computer/pda/engineering/install_default_hardware()
	default_hardware |= /obj/item/stock_parts/computer/scanner/atmos
	. = ..()

/obj/item/modular_computer/pda/medical
	color = COLOR_WHITE

/obj/item/modular_computer/pda/medical/install_default_hardware()
	default_hardware |= /obj/item/stock_parts/computer/scanner/medical
	. = ..()

/obj/item/modular_computer/pda/cargo
	color = COLOR_WHITE

/obj/item/modular_computer/pda/cargo/install_default_programs()
	default_programs |= /datum/computer_file/program/reports
	. = ..()
