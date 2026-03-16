class Medal : Inventory
{
	// https://zdoom.org/w/index.php?title=Actor_flags
	// https://zdoom.org/w/index.php?title=Actor_properties
	// https://zdoom.org/w/index.php?title=Action_specials

	Default
	{
		Radius 1;
		Height 8;

		+COUNTITEM
		+INVENTORY.ALWAYSPICKUP;

		Inventory.Amount 1;
		Inventory.MaxAmount 999;
		Inventory.PickupMessage "Picked up an medal!";
		Inventory.PickupSound "SFX/CoinTemplate";
	}

	States
	{
		Spawn:
			MEDA ABCDEF 4;
			Loop;
	}
}