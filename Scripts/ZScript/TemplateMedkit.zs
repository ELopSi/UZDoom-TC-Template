class TemplateMedkit : Health
{
	Default
	{
		Inventory.Amount 15;
		Inventory.MaxAmount 100;
		Inventory.PickupMessage "You picked up the Template Medkit.";
	}

	States
	{
		Spawn:
			MEDK A 20;
			MEDK A 20 Bright;
			loop;
	}
}