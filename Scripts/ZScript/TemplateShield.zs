class TemplateShield : BasicArmorBonus
{
	Default
	{
		Armor.SaveAmount 5;
		Armor.SavePercent 50;
		Armor.MaxSaveAmount 250;
		Inventory.Pickupmessage "You got Template Shield";
	}

	States
	{
		Spawn:
			SHIE A 20;
			SHIE A 20 Bright;
			loop;
	}
}