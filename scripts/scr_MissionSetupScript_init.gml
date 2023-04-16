///scr_MissionSetupScript_init()
enum MissionID{
    Tutorial1=1,
    Tutorial2,
    VaultOfGlass,
    MAX
}

var CurID=MissionID.Tutorial1
global.MissionDat_Name[CurID]="Tutorial 1: The Basics"
global.MissionDat_Script[CurID]=scr_MissionScript_Tutorial1
global.MissionDat_MissionUnlocks[CurID,0]=MissionID.Tutorial2
global.MissionDat_MissionUnlocks[CurID,1]=MissionID.VaultOfGlass

var CurID=MissionID.Tutorial2
global.MissionDat_Name[CurID]="Tutorial 2: BA and SP Attacks"
global.MissionDat_Script[CurID]=scr_MissionScript_Tutorial2
global.MissionDat_MissionUnlocks[CurID,0]=MissionID.Tutorial2

var CurID=MissionID.VaultOfGlass
global.MissionDat_Name[CurID]="Vault of Glass"
global.MissionDat_Script[CurID]=scr_MissionScript_VaultOfGlass
global.MissionDat_MissionUnlocks[CurID,0]=0
