unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, Spin, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SaveDialog1: TSaveDialog;
    Shape1: TShape;
    Shape10: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;




    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);

    procedure Panel4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);


    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Panel4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);



  private

  public

  end;

var
  Form1: TForm1;
  malovanie : boolean = false;

implementation

{$R *.lfm}

{ TForm1 }








procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  application.terminate;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  panel3.visible:=true;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  shape1.visible:=false;
  button1.visible:=true;
  shape4.visible:=false;
  label1.Visible:=false;
  shape6.visible:=false;
  panel3.visible:=false;
  shape8.visible:=false;
  shape9.visible:=false;
  shape10.visible:=false;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  savedialog1.execute;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  label1.visible:=true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  shape1.visible:=true;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  shape1.brush.color:=clgreen;
   shape4.brush.color:=clgreen ;
    shape6.brush.color:=clgreen ;
end;

procedure TForm1.Button11Click(Sender: TObject);
var x,y:integer; textx:string;
begin
    x:=strtoint(edit1.text);
    y:=strtoint(edit2.text);
    textx:=edit3.text;
    panel4.canvas.font.color:=clblue;
    panel4.canvas.font.size:=20;
    panel4.canvas.textout(x,y,textx);


end;

procedure TForm1.Button12Click(Sender: TObject);
begin
   shape8.visible:=true;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
   shape9.visible:=true;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
   shape10.visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  shape1.visible:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  shape4.visible:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  shape4.visible:=false;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  shape6.visible:=true;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  shape6.visible:=false;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  shape1.brush.color:=clyellow;
   shape4.brush.color:=clyellow;
    shape6.brush.color:=clyellow;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
    shape1.brush.color:=clred;
   shape4.brush.color:=clred;
    shape6.brush.color:=clred;

end;



procedure TForm1.Panel4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  checkbox1.checked:=true;
  checkbox2.checked:=true;
  checkbox3.checked:=true;
end;





procedure TForm1.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var xpos, ypos:integer;
begin
  xpos:=X;
  ypos:=Y;
 if checkbox1.checked=true then begin  panel4.canvas.pen.color:=clyellow;
  panel4.canvas.brush.color:= clyellow;
  panel4.canvas.rectangle(xpos,ypos, xpos+20,ypos+20);
 end;
 if checkbox2.checked=true then begin  panel4.canvas.pen.color:=clred;
  panel4.canvas.brush.color:= clred;
  panel4.canvas.rectangle(xpos,ypos, xpos+20,ypos+20);
 end;
 if checkbox3.checked=true then begin  panel4.canvas.pen.color:=clgreen ;
  panel4.canvas.brush.color:= clred;
  panel4.canvas.rectangle(xpos,ypos, xpos+20,ypos+20);
 end;
 if checkbox4.checked=true then begin  panel4.canvas.pen.color:=clred ;
  panel4.canvas.brush.color:= clred;
  panel4.canvas.rectangle(xpos,ypos, xpos+20,ypos+20);
 end;
 if checkbox5.checked=true then begin  panel4.canvas.pen.color:=clred ;
  panel4.canvas.brush.color:= clred;
  panel4.canvas.rectangle(xpos,ypos, xpos+10,ypos+10);
 end;
 if checkbox6.checked=true then begin  panel4.canvas.pen.color:=clred ;
  panel4.canvas.brush.color:= clred;
  panel4.canvas.rectangle(xpos,ypos, xpos+5,ypos+5);
 end;
 if checkbox7.checked=true then begin  panel4.canvas.pen.color:=clblack ;
  panel4.canvas.brush.color:= clblack;
  panel4.canvas.rectangle(xpos,ypos, xpos+40,ypos+40);
 end;
end;


procedure TForm1.Panel4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  checkbox1.checked:=false;
  checkbox2.checked:=true;
  checkbox3.checked:=true;
end;







end.

