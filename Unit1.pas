unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DFUnRar, ComCtrls, ExtCtrls, DBCtrls, FileCtrl, Math;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    Button2: TButton;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    Button3: TButton;
    OpenDialog2: TOpenDialog;
    DFUnRar1: TDFUnRar;
    Timer1: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Timer2: TTimer;
    Button4: TButton;
    Label7: TLabel;
    Button5: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Button6: TButton;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pathfile: string;
  extractpath : string;
  i:integer;
  sec: integer;
  count: integer;
  ext: extended;
  stop: boolean;
  chosenDirectory : string;
implementation



{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
openDialog2.Options := [ofFileMustExist];
openDialog2.Filter :=
    'rar files|*.rar';
if opendialog2.Execute then
begin

pathfile:=opendialog2.FileName;
end
else
begin
showmessage('Выбор файла прерван!');
end
end;

procedure TForm1.Button2Click(Sender: TObject);
var
path: string;
begin
memo1.Clear;
openDialog1.Options := [ofFileMustExist];
openDialog1.Filter :=
    'txt files|*.txt';
if opendialog1.Execute then
begin

path:=opendialog1.FileName;
Memo1.Lines.loadfromfile(path);
label1.caption:=inttostr(memo1.Lines.Count);
end
else
begin
showmessage('Выбор словаря прерван!');
end
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if SelectDirectory('Выберите каталог', 'C:\', chosenDirectory)
  then ShowMessage('Выбранный каталог: '+chosenDirectory)
  else ShowMessage('Выбор каталога прерван!');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
stop:=false;
count:=0;
sec:=0;
Count:=memo1.Lines.count;
dfunrar1.FileName:=pathfile;
dfunrar1.Directory:=chosenDirectory;
progressbar1.Min:=0;
progressbar1.Max:=Count;
if (pathfile='') or (memo1.lines.count<1) or (chosenDirectory='') then
begin
showmessage('Выберите архив, словарь и каталог!');
exit;
end
else
begin
timer1.Enabled:=true;
for i := 0 to memo1.Lines.count-1 do
begin
progressbar1.Position:=i;
dfunrar1.Password:=memo1.Lines[i];
dfunrar1.Extract;
Application.ProcessMessages();
if stop=true then
begin
timer1.Enabled:=false;
timer2.Enabled:=false;
sec:=0;
exit;
end;
if FileExists(chosenDirectory+'\*.doc') then
begin
timer1.enabled:=false;
ext:=i div sec;
ShowMessage('Пароль: '+memo1.Lines[i]+' Подобран за(сек): '+FloatToStr(sec)+' Скорость перебора(паролей/сек): '+FloatToStr(ext));
exit;
end
else
begin
continue
end
end;
timer1.enabled:=false;
ext:=i div sec;
showmessage('Пароль не найден! Прошло времени(сек): ' +FloatToStr(sec)+' Скорость перебора(паролей/сек): '+FloatToStr(ext));
end;

end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
sec:=sec+1;
ext:=i div sec;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
label1.Caption:=inttostr(memo1.Lines.count);
label3.Caption:=FloatToStr(ext);
Label5.caption:=inttostr(i);
label9.caption:=memo1.lines[i];
label11.Caption:=inttostr(sec);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
stop:=true;
end;



procedure TForm1.Button6Click(Sender: TObject);
var
ep : integer;
int : integer;
ot: integer;
dot: integer;
max: integer;
begin
memo1.clear;
ot:=strtoint(edit1.text);
dot:=strtoint(edit2.text);
max:=strtoint(edit3.text);
if (ot=0) or (dot=0) or (max=0) then
begin
showmessage('Введите ненулевые значения!');
end
else
begin
for ep := 1 to max do
  begin
    memo1.Lines.Add(inttostr(randomrange(ot,dot)));
    application.ProcessMessages;
  end;
  end;
end;

end.
