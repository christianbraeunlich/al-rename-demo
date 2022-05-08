codeunit 88000 "Base Install CHB"
{
    Subtype = Install;

    trigger OnInstallAppPerDatabase();
    var
        UpgradeTag: Codeunit "Upgrade Tag";
        myAppInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(myAppInfo);

        if myAppInfo.DataVersion = Version.Create(0, 0, 0, 0) then
            HandleFreshInstall()
        else
            HandleReinstall();

        UpgradeTag.SetAllUpgradeTags();
    end;

    local procedure HandleFreshInstall();
    begin

    end;

    local procedure HandleReinstall();
    begin

    end;
}