class TemplateShotgun : Weapon
{
	Default
	{
		+NODAMAGETHRUST
		
		Weapon.SelectionOrder 1300;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "TemplateShell";
		decal "CustomDecal2";
		Inventory.PickupMessage "You Got the Template Shotgun";
		Obituary "Killed by the Template Shotgun!";
	}
	
	States
	{
		Ready:
			SHTG F 1 A_WeaponReady;
			Loop;
		Deselect:
			SHTG F 1 A_Lower;
			Loop;
		Select:
			SHTG F 1 A_Raise;
			Loop;
		Fire:
			SHTG A 3;
			SHTG B 3;
			SHTG B 2 A_FireBullets (10.0, 8.0, 20, 2, "BulletSmoke", range: 700);
			SHTG C 5;
			SHTG DEC 4;
			SHTG F 3;
			SHTG F 4 A_ReFire;
			Goto Ready;
		Spawn:
			SHTG F -1;
			Stop;
	}
}