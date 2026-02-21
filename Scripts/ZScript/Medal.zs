class Medal : Inventory
{
	default
	{
		+COUNTITEM
		+INVENTORY.ALWAYSPICKUP;
		
		Inventory.Amount 1;
		Inventory.MaxAmount 999;
		Inventory.PickupMessage "Picked up a medal!";
	}
	
	States
	{
		Spawn:
			MEDA ABCDEF 6;
			Loop;
	}
}