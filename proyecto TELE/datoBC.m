function varargout = datoBC(varargin)
% DATOBC MATLAB code for datoBC.fig
%      DATOBC, by itself, creates a new DATOBC or raises the existing
%      singleton*.
%
%      H = DATOBC returns the handle to a new DATOBC or the handle to
%      the existing singleton*.
%
%      DATOBC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATOBC.M with the given input arguments.
%
%      DATOBC('Property','Value',...) creates a new DATOBC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before datoBC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to datoBC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help datoBC

% Last Modified by GUIDE v2.5 18-Mar-2018 18:56:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @datoBC_OpeningFcn, ...
                   'gui_OutputFcn',  @datoBC_OutputFcn, ...
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


% --- Executes just before datoBC is made visible.
function datoBC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to datoBC (see VARARGIN)

% Choose default command line output for datoBC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
imshow('C:\Users\Administrador\Desktop\proyecto TELE\datosBC.png')

% UIWAIT makes datoBC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = datoBC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function chanelBC_Callback(hObject, eventdata, handles)
% hObject    handle to chanelBC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of chanelBC as text
%        str2double(get(hObject,'String')) returns contents of chanelBC as a double


% --- Executes during object creation, after setting all properties.
function chanelBC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chanelBC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function codecBC_Callback(hObject, eventdata, handles)
% hObject    handle to codecBC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of codecBC as text
%        str2double(get(hObject,'String')) returns contents of codecBC as a double


% --- Executes during object creation, after setting all properties.
function codecBC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to codecBC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tributarioBC_Callback(hObject, eventdata, handles)
% hObject    handle to tributarioBC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tributarioBC as text
%        str2double(get(hObject,'String')) returns contents of tributarioBC as a double


% --- Executes during object creation, after setting all properties.
function tributarioBC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tributarioBC (see GCBO)
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
global b1 b2 b3 bc bt btt bbt

b1=get(handles.chanelBC,'string');
b1=str2double(b1);
bt=str2double(bt);
if  isnan(b1) || not(b1-floor(b1))==0
    errordlg({'Valor incorrecto:', 'Ingrese valores numerales enteros solamente', 'o no la deje vacia'},'ERROR Canales de TV')
    return
end
if  b1>1890 || b1<0
    warndlg({'Valor limite excedido:', 'El maximo que puede llegar en CHANNELs es 1890'},'ADVERTENCIA Canales de TV')
    return
end

bc=b1 / 30;

if (bc-fix(bc)==0)
        bt=bc;
else
        bt=fix(bc)+1;
end

set(handles.canales,'string',bt);
%--------------------------------------------------------------------------
b2=get(handles.tributarioBC,'string');
b2=str2double(b2);
if  isnan(b2) || not(b2-floor(b2))==0
    errordlg({'Valor incorrecto:', 'Ingrese valores numerales enteros solamente', 'o no la deje vacia'},'ERROR Tributarios SDH')
    return
end
if  b2>63 || b2<0
    warndlg({'Valor limite excedido:', 'El maximo que puede llegar en TRIBUTARIOS es 63'},'ADVERTENCIA Tributarios SDH')
    return
end

set(handles.trib,'string',b2);

%--------------------------------------------------------------------------
b3=get(handles.codecBC,'string');
b3=str2double(b3);
if  isnan(b3) || not(b3-floor(b3))==0
    errordlg({'Valor incorrecto:', 'Ingrese valores numerales enteros solamente', 'o no la deje vacia'},'ERROR CODECS')
    return
end
if  b3>3 || b3<0
    warndlg({'Valor limite excedido:', 'El maximo que puede llegar en CODECS es 3'},'ADVERTENCIA CODECS')
    return
end
btt=b3*21;
set(handles.codecc,'string',btt);

bbt=bt+b2+btt;
if  bbt>63
    warndlg({'Valor limite total excedido:', 'El maximo que puede llegar en B-C es 63','Por favor revise los datos ingresados'},'ADVERTENCIA TOTAL')
    return
end
%set(handles.total,'string',bbt);
set(handles.continuar,'visible','on')


% --- Executes on button press in continuar.
function continuar_Callback(hObject, eventdata, handles)
% hObject    handle to continuar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(datoBC)
datoAC
