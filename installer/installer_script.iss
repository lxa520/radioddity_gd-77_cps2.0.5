; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Radioddity GD-77 CPS 3.0.6 - Community Edition"
#define MyAppVersion "3.0.6.0"
#define MyAppURL "https://github.com/rogerclarkmelbourne/radioddity_gd-77_cps2.0.5"
#define MyAppExeName "GD77CPS306.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{68542C1D-33BC-4EE4-80E0-D40A1A1486D3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\RadioddityGD77CPS306CommunityEdition
CreateAppDir=yes
;DefaultDirName={sd}\RadioddityGD77CPS2.0.5CommunityEdition
DisableProgramGroupPage=yes
OutputDir=..\installer
OutputBaseFilename=RadioddityGD77CPS306CommunityEditionInstaller
Compression=lzma
SolidCompression=yes  
UsePreviousAppDir=no
UsePreviousSetupType=no

[Types]
Name: "normal"; Description: "Normal installation"
Name: "portable"; Description: "Portable installation"

; Components are used inside the script and can be composed of a set of 'Types'
[Components]
Name: "normal";     Description: "Normal installation.";   Types: normal
Name: "portable";   Description: "Portable installation. This will run from a memory stick and uses an ini file to store defaults etc";   Types: portable

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\bin\Release\GD77CPS306.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\Default.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\DockPanel.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\help.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Setup.ini"; DestDir: "{app}";  Components: portable; Flags: ignoreversion
Source: "..\bin\Release\Tone.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\WeifenLuo.WinFormsUI.Docking.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\Data\Default.dat"; DestDir: "{app}\Data"; Components: portable; Flags: ignoreversion
Source: "..\bin\Release\Language\English.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\bin\Release\Language\English.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\bin\Release\Language\German.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\bin\Release\Language\German.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\bin\Release\Language\Polski.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\bin\Release\Language\Polski.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\bin\Release\Language\Spanish.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\bin\Release\Language\Spanish.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent