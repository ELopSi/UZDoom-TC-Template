class TemplatePlayer : PlayerPawn
{	
	Default
	{		
		Health 100;
		Radius 16;
		Height 56;
		Mass 100;
		Painchance 255;
		Speed 1;
		Bloodtype "BloodSplat";
		+SOLID
		+SHOOTABLE
		+DROPOFF
		+PICKUP
		+NOTDMATCH
		+FRIENDLY
		+SLIDESONWALLS
		+CANPASS
		+CANPUSHWALLS
		+FLOORCLIP
		+WINDTHRUST
		+TELESTOMP
		+NOBLOCKMONST
		Player.DisplayName "Template Player";
		Player.CrouchSprite "PLYC";
		Player.StartItem "TemplateShotgun";
		Player.StartItem "TemplateShell", 12;
		Player.WeaponSlot 1, "Shotgun";
		Player.WeaponSlot 2, "";
		Player.WeaponSlot 3, "";
		Player.WeaponSlot 4, "";
		Player.WeaponSlot 5, "";
		Player.WeaponSlot 6, "";
		Player.WeaponSlot 7, "";
		Player.AttackZOffset 8;
		Player.JumpZ 8;
		Player.GruntSpeed 12;
		Player.FallingScreamSpeed 35,40;
		Player.ViewHeight 41;
		Player.UseRange 64;
		Player.ForwardMove 1,1;
		Player.SideMove 1,1;
		Player.ColorRange 0,0;
		Player.SoundClass "player";
		Player.DamageScreenColor "ff 00 00";
		Player.AirCapacity 1;
		Player.FlyBob 1;
		Player.ViewBob 1;
		Player.ViewBobSpeed 40;
		Player.WaterClimbSpeed 3.5;
		Player.TeleportFreezeTime 18;
		Obituary "Template Player killed you!";
	}
	
	States
	{
		Spawn:
			PLAY A -1;
			Loop;
		See:
			PLAY ABCD 4;
			Loop;
		Missile:
			PLAY E 12;
			Goto Spawn;
		Melee:
			PLAY F 6 BRIGHT;
			Goto Missile;
		Pain:
			PLAY G 4;
			PLAY G 4 A_Pain;
			Goto Spawn;
		Death:
			PLAY H 0 A_PlayerSkinCheck("AltSkinDeath");
		Death1:
			PLAY H 10;
			PLAY I 10 A_PlayerScream;
			PLAY J 10 A_NoBlocking;
			PLAY KLM 10;
			PLAY N -1;
			Stop;
		XDeath:
			PLAY O 0 A_PlayerSkinCheck("AltSkinXDeath");
		XDeath1:
			PLAY O 5;
			PLAY P 5 A_XScream;
			PLAY Q 5 A_NoBlocking;
			PLAY RSTUV 5;
			PLAY W -1;
			Stop;
		AltSkinDeath:
			PLAY H 6;
			PLAY I 6 A_PlayerScream;
			PLAY JK 6;
			PLAY L 6 A_NoBlocking;
			PLAY MNO 6;
			PLAY P -1;
			Stop;
		AltSkinXDeath:
			PLAY Q 5 A_PlayerScream;
			PLAY R 0 A_NoBlocking;
			PLAY R 5 A_SkullPop;
			PLAY STUVWX 5;
			PLAY Y -1;
			Stop;
	}
}