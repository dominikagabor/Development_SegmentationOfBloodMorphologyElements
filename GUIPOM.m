function varargout = GUIPOM(varargin)
% GUIPOM MATLAB code for GUIPOM.fig
%      GUIPOM, by itself, creates a new GUIPOM or raises the existing
%      singleton*.
%
%      H = GUIPOM returns the handle to a new GUIPOM or the handle to
%      the existing singleton*.
%
%      GUIPOM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIPOM.M with the given input arguments.
%
%      GUIPOM('Property','Value',...) creates a new GUIPOM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIPOM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIPOM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIPOM

% Last Modified by GUIDE v2.5 13-Mar-2018 19:50:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIPOM_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIPOM_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUIPOM is made visible.
function GUIPOM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIPOM (see VARARGIN)

% Choose default command line output for GUIPOM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIPOM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIPOM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in wgrajobraz.
function wgrajobraz_Callback(hObject, eventdata, handles)
% hObject    handle to wgrajobraz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



[filename1,filepath1]=uigetfile({'*.*','All Files'},'Select Data File 1');
 cd(filepath1);
 imread([filepath1 filename1]);
 guidata(hObject, handles);
 
axes(handles.obraz1);
global matlabImage;
matlabImage = imread(filename1);
imshow(matlabImage);
axis off;
axis image;


% --- Executes on button press in Auto1.
function Auto1_Callback(hObject, eventdata, handles)
% hObject    handle to Auto1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Auto1



% --- Executes on button press in Rec1.
function Rec1_Callback(hObject, eventdata, handles)
% hObject    handle to Rec1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Rec1


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


sliderValue = floor(get(handles.slider1,'Value'));
set(handles.su,'String',num2str(sliderValue));

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
sliderValue1 = floor(get(handles.slider2,'Value'));
set(handles.su1,'String',num2str(sliderValue1));



% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderValue1 = floor(get(handles.slider2,'Value'));
set(handles.su1,'String',num2str(sliderValue1));



% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pa.
function pa_Callback(hObject, eventdata, handles)
% hObject    handle to pa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pa
global matlabImage;
global number;

if(get(handles.pa, 'Value')==1)
  set(handles.g1,'Visible','off')
end
set(handles.pr,'value',0)
% konwersja obrazu kolorowego na obraz monochromatyczny
o1=rgb2gray(matlabImage);

% automatycznie 
level = multithresh(o1) % oblicza globalny próg

% stworzenie zerowej macierzy o takim samym rozmiarze jak obraz monochromatyczny
o2=zeros(size(o1));

% zamieñ wszystkie elementy w zerowej macierzy obrazu monochromatycznego, 
% które s¹ wiêksze od progu na jedynki 

o2(o1>level)=1;

% negatyw
o2=~o2;

% usuwanie struktur brze¿nych 
marker = false(size(o2));
marker(1,:)=true;
marker(:,1)=true;
marker(:,end)=true;
marker(end,:)=true;
    
R = imreconstruct(marker,o2,8);
o2 = o2-R;

%rozdzielanie obiektów
el=[0 0 1 0 0; 0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0;0 0 1 0 0];
o2=imopen(o2,el);

% zwrócenie informacji o po³¹czonych elementach znalezionych w obraziebinarnym
cc = bwconncomp(o2,4);

% wyœwietlenie informacji o obrazie
number  = cc.NumObjects;
set(handles.ilewszy, 'String', number);

guidata(hObject, handles);
axes(handles.obraz2);
imshow(o2);
axis off;
axis image;


% --- Executes on button press in pr.
function pr_Callback(hObject, eventdata, handles)
% hObject    handle to pr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pr

global matlabImage;
sliderValue = get(handles.slider1,'Value');
if(get(handles.pr, 'Value')==1)
  set(handles.g1,'Visible','on')
end

set(handles.pa,'value',0)
% konwersja obrazu kolorowego na obraz monochromatyczny
o1=rgb2gray(matlabImage);

% stworzenie zerowej macierzy o takim samym rozmiarze jak obraz monochromatyczny
o2=zeros(size(o1));

% zamieñ wszystkie elementy w zerowej macierzy obrazu monochromatycznego, które s¹ wiêksze od progu na jedynki 

o2(o1>sliderValue)=1;

% negatyw
o2=~o2;

% usuwanie struktur brze¿nych 
marker = false(size(o2));
marker(1,:)=true;
marker(:,1)=true;
marker(:,end)=true;
marker(end,:)=true;
    
R = imreconstruct(marker,o2,8);
o2 = o2-R;

%rozdzielanie obiektów
el=[0 0 1 0 0; 0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0;0 0 1 0 0];
o2=imopen(o2,el);

% zwrócenie informacji o po³¹czonych elementach znalezionych w obraziebinarnym
cc = bwconncomp(o2,4);

% wyœwietlenie informacji o obrazie
number  = cc.NumObjects;
set(handles.ilewszy, 'String', number);

guidata(hObject, handles);
axes(handles.obraz2);
imshow(o2);
axis off;
axis image;


% --- Executes on button press in pa1.
function pa1_Callback(hObject, eventdata, handles)
% hObject    handle to pa1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pa1


% --- Executes on button press in pr1.
function pr1_Callback(hObject, eventdata, handles)
% hObject    handle to pr1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pr1


% --- Executes on button press in dalej.
function dalej_Callback(hObject, eventdata, handles)
% hObject    handle to dalej (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in g1.
function g1_Callback(hObject, eventdata, handles)
% hObject    handle to g1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global matlabImage;
sliderValue = get(handles.slider1,'Value');

% konwersja obrazu kolorowego na obraz monochromatyczny
o1=rgb2gray(matlabImage);

% stworzenie zerowej macierzy o takim samym rozmiarze jak obraz monochromatyczny
o2=zeros(size(o1));

% zamieñ wszystkie elementy w zerowej macierzy obrazu monochromatycznego, które s¹ wiêksze od progu na jedynki 

o2(o1>sliderValue)=1;

% negatyw
o2=~o2;

% usuwanie struktur brze¿nych 
marker = false(size(o2));
marker(1,:)=true;
marker(:,1)=true;
marker(:,end)=true;
marker(end,:)=true;
    
R = imreconstruct(marker,o2,8);
o2 = o2-R;

%rozdzielanie obiektów
el=[0 0 1 0 0; 0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0;0 0 1 0 0];
o2=imopen(o2,el);

% zwrócenie informacji o po³¹czonych elementach znalezionych w obraziebinarnym
cc = bwconncomp(o2,4);

% wyœwietlenie informacji o obrazie
number  = cc.NumObjects;
set(handles.ilewszy, 'String', number);

guidata(hObject, handles);
axes(handles.obraz2);
imshow(o2);
axis off;
axis image;



% --- Executes on button press in g2.
function g2_Callback(hObject, eventdata, handles)
% hObject    handle to g2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global matlabImage;

if(get(handles.pr, 'Value')==1)
sv = get(handles.slider2,'Value');
% konwersja obrazu kolorowego na obraz monochromatyczny
o1=rgb2gray(matlabImage);

sliderValue = get(handles.slider1,'Value');

% stworzenie zerowej macierzy o takim samym rozmiarze jak obraz monochromatyczny
o2=zeros(size(o1));

% zamieñ wszystkie elementy w zerowej macierzy obrazu monochromatycznego, które s¹ wiêksze od progu na jedynki 

o2(o1>sliderValue)=1;

% negatyw
o2=~o2;

% usuwanie struktur brze¿nych 
marker = false(size(o2));
marker(1,:)=true;
marker(:,1)=true;
marker(:,end)=true;
marker(end,:)=true;
    
R = imreconstruct(marker,o2,8);
o2 = o2-R;

%rozdzielanie obiektów
el=[0 0 1 0 0; 0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0;0 0 1 0 0];
o2=imopen(o2,el);


 BW = bwmorph(o2,'skel',sv);


%zalewanie otworów
R = imreconstruct(marker,~BW,4);
O = ~BW-R;
BW = O+BW;

se = strel('disk',1);

% erodedI = imerode(BW,se);

 p = floor(get(handles.slider4,'Value'))
 d = floor(get(handles.slider5,'Value'))



se1 = strel(ones(p,d));
marker = imerode(BW,se1);
he = imreconstruct(marker,BW);

% zwrócenie informacji o po³¹czonych elementach znalezionych w obraziebinarnym
cc = bwconncomp(he,4);

% wyœwietlenie informacji o obrazie
number1  = cc.NumObjects;
set(handles.t1, 'String', number1);

% zwrócenie informacji o po³¹czonych elementach znalezionych w obraziebinarnym
cc1 = bwconncomp(o2,4);

% wyœwietlenie informacji o obrazie
number  = cc1.NumObjects;
er = number - number1;
set(handles.t2, 'String', er);



guidata(hObject, handles);
axes(handles.help);
imshow(BW);
axis off;
axis image;


guidata(hObject, handles);
axes(handles.obraz3);
imshow(he);
axis off;
axis image;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if(get(handles.pa, 'Value')==1)
sv = get(handles.slider2,'Value');

% konwersja obrazu kolorowego na obraz monochromatyczny
o1=rgb2gray(matlabImage);

% automatycznie 
level = multithresh(o1); % oblicza globalny próg

% stworzenie zerowej macierzy o takim samym rozmiarze jak obraz monochromatyczny
o2=zeros(size(o1));

% zamieñ wszystkie elementy w zerowej macierzy obrazu monochromatycznego, które s¹ wiêksze od progu na jedynki 

o2(o1>level)=1;

% negatyw
o2=~o2;

% usuwanie struktur brze¿nych 
marker = false(size(o2));
marker(1,:)=true;
marker(:,1)=true;
marker(:,end)=true;
marker(end,:)=true;
    
R = imreconstruct(marker,o2,8);
o2 = o2-R;

%rozdzielanie obiektów
el=[0 0 1 0 0; 0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0;0 0 1 0 0];
o2=imopen(o2,el);


 BW = bwmorph(o2,'skel',sv);


%zalewanie otworów
R = imreconstruct(marker,~BW,4);
O = ~BW-R;
BW = O+BW;

se = strel('disk',1);

% erodedI = imerode(BW,se);

 p = floor(get(handles.slider4,'Value'))
 d = floor(get(handles.slider5,'Value'))



se1 = strel(ones(p,d));
marker = imerode(BW,se1);
he = imreconstruct(marker,BW);

% zwrócenie informacji o po³¹czonych elementach znalezionych w obraziebinarnym
cc = bwconncomp(he,4);

% wyœwietlenie informacji o obrazie
number1  = cc.NumObjects;
set(handles.t1, 'String', number1);

% zwrócenie informacji o po³¹czonych elementach znalezionych w obraziebinarnym
cc1 = bwconncomp(o2,4);

% wyœwietlenie informacji o obrazie
number  = cc1.NumObjects;
er = number - number1;
set(handles.t2, 'String', er);

guidata(hObject, handles);
axes(handles.help);
imshow(BW);
axis off;
axis image;


guidata(hObject, handles);
axes(handles.obraz3);
imshow(he);
axis off;
axis image;

end
% --- Executes on button press in komkom.
function komkom_Callback(hObject, eventdata, handles)
% hObject    handle to komkom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

wszy = get(handles.ilewszy, 'String')
er = get(handles.t2, 'String')
leu = wszy - er;

 if(leu < 0)
set(handles.kom, 'String', 'Liczba leukocytów jest ujemna. Dokonaj prawid³owej segmentacji.');
 elseif (er < 0)
   set(handles.kom, 'String', 'Liczba erytrocytów jest ujemna. Dokonaj prawid³owej segmentacji.');  
 else
    wynik = er/wszy;
wynik1 = 100 - wynik;

if(wynik1 >= 99.85)
     set(handles.kom, 'String', 'Za ma³a liczba leukocytów we krwi');
elseif (wynik1 <= 85)
    set(handles.kom, 'String', 'Za du¿a liczba leukocytów we krwi');
else
    set(handles.kom, 'String', 'Liczba leukocytów w normie');
end
 end



function et_Callback(hObject, eventdata, handles)
% hObject    handle to et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et as text
%        str2double(get(hObject,'String')) returns contents of et as a double


% --- Executes during object creation, after setting all properties.
function et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et1_Callback(hObject, eventdata, handles)
% hObject    handle to et1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et1 as text
%        str2double(get(hObject,'String')) returns contents of et1 as a double


% --- Executes during object creation, after setting all properties.
function et1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

p = floor(get(handles.slider4,'Value'));
set(handles.we1,'String',num2str(p));

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

p = floor(get(handles.slider4,'Value'));
set(handles.we1,'String',num2str(p));


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

d = floor(get(handles.slider5,'Value'));
set(handles.we2,'String',num2str(d));

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

d = floor(get(handles.slider5,'Value'));
set(handles.we2,'String',num2str(d));


% --- Executes on button press in g3.
function g3_Callback(hObject, eventdata, handles)
% hObject    handle to g3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
