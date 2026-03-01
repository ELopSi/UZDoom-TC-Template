class TemplateMonster : Actor
{
	Default
	{
		Health 35;
		Radius 20;
		Height 56;
		Speed 10;
		PainChance 200;
		Monster;
		BloodType "BloodSplat";
		+FLOORCLIP
		SeeSound 	"grunt/sight";
		AttackSound "grunt/attack";
		PainSound 	"grunt/pain";
		DeathSound 	"grunt/death";
		ActiveSound "grunt/active";
		Obituary 	"Template monster killed you!";
	}
	
 	States
	{
		Spawn:
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
			MONS G 3;
			MONS G 3 A_Pain;
			Goto See;
		Death:
			MONS H 5 A_DropMedals;
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
}