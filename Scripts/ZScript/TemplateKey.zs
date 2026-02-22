class TemplateKey : doomkey
{
	Default
	{
		Inventory.Pickupmessage "You got the Template Key!";
		Inventory.Icon "TKEYA0";
	}
	
	States
	{
		Spawn:
			TKEY A 5;
			TKEY A 5 bright;
			loop;
	}
}