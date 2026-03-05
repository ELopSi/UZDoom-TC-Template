class TemplateShell : Ammo
{
	default
	{
		+COUNTITEM
		+INVENTORY.ALWAYSPICKUP;
		
		Inventory.Amount 8;
		Inventory.MaxAmount 250;
		Inventory.PickupMessage "Picked up an Template Shell";
	}
	
	States
	{
		Spawn:
			SHEL A -1;
			stop;
	}
}
