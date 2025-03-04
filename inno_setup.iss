; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!


#define MyAppName "OpenPype"
#define Build GetEnv("BUILD_DIR")
#define AppVer GetEnv("BUILD_VERSION")


[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B9E9DF6A-5BDA-42DD-9F35-C09D564C4D93}
AppName={#MyAppName}
AppVersion={#AppVer}
AppVerName={#MyAppName} version {#AppVer}
AppPublisher=Orbi Tools s.r.o
AppPublisherURL=http://pype.club
AppSupportURL=http://pype.club
AppUpdatesURL=http://pype.club
DefaultDirName={autopf}\{#MyAppName}\{#AppVer}
UsePreviousAppDir=no
DisableProgramGroupPage=yes
OutputBaseFilename={#MyAppName}-{#AppVer}-install
AllowCancelDuringInstall=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
SetupIconFile=igniter\openpype.ico
OutputDir=build\
Compression=lzma2
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]
; clean everything in previous installation folder
Type: filesandordirs; Name: "{app}\*"


[Files]
Source: "build\{#build}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\openpype_gui.exe"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\openpype_gui.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\openpype_gui.exe"; Description: "{cm:LaunchProgram,OpenPype}"; Flags: nowait postinstall skipifsilent

