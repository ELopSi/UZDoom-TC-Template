class TemplateMonster : Actor
{
	// 'user_' prefix can expose the variable in the editor
	// Slade editor add property is required to expose the variable
	bool user_hasTemplateKey;
	
	Default
	{	
		Health 75;
		Radius 20;
		Height 56;
		Speed 10;
		PainChance 220;
		Monster;
		BloodType "BloodSplat";
		DropItem "TemplateShell";
		+FLOORCLIP
		Obituary 	"Template monster killed you!"; 
	}
	
 	States
	{
		Spawn:
			MONS A 0 NoDelay A_IfHasKeyChangeColor();
			MONS AB 10 A_Look;
			Loop;
		See:
			MONS AABBCCDD 4 A_Chase;
			Loop;
		Missile:
			MONS E 10 A_FaceTarget;
			MONS F 8 A_PosAttack;
			MONS E 8;
			Goto See;
		Pain:
			MONS G 3 
			{ 
				A_SprayDecal("CustomGroupBloodSplatterDecal", 
				128, 
				(frandom(0, 64), frandom(0, 64), frandom(0, 64)));
			}
			
			MONS G 3 A_Pain;
			Goto See;
		Death:
			// Execute multiple action functions within a single state 
			// by using an anonymous function
			MONS H 5	
			{
				A_DropMedals();
				A_DropTemplateKey();
			}
			
			MONS I 5 A_Scream;
			MONS J 5 A_NoBlocking;
			MONS K 5;
			MONS L -1;
			Stop;
		XDeath:
			MONS M 5;
			MONS N 5 A_XScream;
			MONS O 5 A_NoBlocking;
			MONS PQRST 5;
			MONS U -1;
			Stop;
		Raise:
			MONS K 5;
			MONS JIH 5;
			Goto See;
	}
	
	void A_DropMedals()
	{
		int max = random(1, 10);
	
		for (int i = 0; i < max; i++)
		{	
			A_SpawnItemEx("Medal", xvel: frandom(-2, 2), yvel: frandom(-2, 2), zvel: frandom(7, 10));
		}
	}
	
	void A_DropTemplateKey()
	{
		if (user_hasTemplateKey)
		{
			A_SpawnItemEx("TemplateKey", zvel:10);
		}
	}
	
	void A_IfHasKeyChangeColor()
	{
		if (user_hasTemplateKey) 
		{
			A_SetTranslation("Green");
		}
	}
}