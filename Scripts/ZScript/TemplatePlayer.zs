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
		Player.StartItem "Shell", 12;
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
}