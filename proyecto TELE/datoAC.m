function varargout = datoAC(varargin)
% DATOAC MATLAB code for datoAC.fig
%      DATOAC, by itself, creates a new DATOAC or raises the existing
%      singleton*.
%
%      H = DATOAC returns the handle to a new DATOAC or the handle to
%      the existing singleton*.
%
%      DATOAC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATOAC.M with the given input arguments.
%
%      DATOAC('Property','Value',...) creates a new DATOAC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before datoAC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to datoAC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help datoAC

% Last Modified by GUIDE v2.5 19-Mar-2018 22:14:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @datoAC_OpeningFcn, ...
                   'gui_OutputFcn',  @datoAC_OutputFcn, ...
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


% --- Executes just before datoAC is made visible.
function datoAC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to datoAC (see VARARGIN)

% Choose default command line output for datoAC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
imshow('C:\Users\Administrador\Desktop\proyecto TELE\datosAC.png')

% UIWAIT makes datoAC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = datoAC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function chanelAC_Callback(hObject, eventdata, handles)
% hObject    handle to chanelAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of chanelAC as text
%        str2double(get(hObject,'String')) returns contents of chanelAC as a double


% --- Executes during object creation, after setting all properties.
function chanelAC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chanelAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function codecAC_Callback(hObject, eventdata, handles)
% hObject    handle to codecAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of codecAC as text
%        str2double(get(hObject,'String')) returns contents of codecAC as a double


% --- Executes during object creation, after setting all properties.
function codecAC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to codecAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tributarioAC_Callback(hObject, eventdata, handles)
% hObject    handle to tributarioAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tributarioAC as text
%        str2double(get(hObject,'String')) returns contents of tributarioAC as a double


% --- Executes during object creation, after setting all properties.
function tributarioAC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tributarioAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in probe.
function probe_Callback(hObject, eventdata, handles)
% hObject    handle to probe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c1 c2 c3 cc ct ctt cbt

c1=get(handles.chanelAC,'string');
c1=str2double(c1);
ct=str2double(ct);
if  isnan(c1) || not(c1-floor(c1))==0
    errordlg({'Valor incorrecto:', 'Ingrese valores numerales enteros solamente', 'o no la deje vacia'},'ERROR Canales de TV')
    return
end
if  c1>1890 || c1<0
    warndlg({'Valor limite excedido:', 'El maximo que puede llegar en CHANNELs es 1890'},'ADVERTENCIA Canales de TV')
    return
end

cc=c1 / 30;

if (cc-fix(cc)==0)
        ct=cc;
else
        ct=fix(cc)+1;
end

set(handles.prueba1,'string',ct);
%--------------------------------------------------------------------------
c2=get(handles.tributarioAC,'string');
c2=str2double(c2);
if  isnan(c2) || not(c2-floor(c2))==0
    errordlg({'Valor incorrecto:', 'Ingrese valores numerales enteros solamente', 'o no la deje vacia'},'ERROR Tributarios SDH')
    return
end
if  c2>63 || c2<0
    warndlg({'Valor limite excedido:', 'El maximo que puede llegar en TRIBUTARIOS es 63'},'ADVERTENCIA Tributarios SDH')
    return
end

set(handles.prueba2,'string',c2);

%--------------------------------------------------------------------------
c3=get(handles.codecAC,'string');
c3=str2double(c3);
if  isnan(c3) || not(c3-floor(c3))==0
    errordlg({'Valor incorrecto:', 'Ingrese valores numerales enteros solamente', 'o no la deje vacia'},'ERROR CODECS')
    return
end
if  c3>3 || c3<0
    warndlg({'Valor limite excedido:', 'El maximo que puede llegar en CODECS es 3'},'ADVERTENCIA CODECS')
    return
end
ctt=c3*21;
set(handles.prueba3,'string',ctt);

cbt=ct+c2+ctt;
if  cbt>63
    warndlg({'Valor limite total excedido:', 'El maximo que puede llegar en A-C es 63 E1','Por favor revise los datos ingresados'},'ADVERTENCIA TOTAL')
    return
end
%set(handles.total,'string',cbt);
set(handles.continuar,'visible','on')


% --- Executes on button press in continuar.
function continuar_Callback(hObject, eventdata, handles)
% hObject    handle to continuar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(datoAC)
verificador
