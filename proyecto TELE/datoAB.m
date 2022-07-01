function varargout = datoAB(varargin)
% DATOAB MATLAB code for datoAB.fig
%      DATOAB, by itself, creates a new DATOAB or raises the existing
%      singleton*.
%
%      H = DATOAB returns the handle to a new DATOAB or the handle to
%      the existing singleton*.
%
%      DATOAB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATOAB.M with the given input arguments.
%
%      DATOAB('Property','Value',...) creates a new DATOAB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before datoAB_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to datoAB_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help datoAB

% Last Modified by GUIDE v2.5 18-Mar-2018 17:32:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @datoAB_OpeningFcn, ...
                   'gui_OutputFcn',  @datoAB_OutputFcn, ...
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


% --- Executes just before datoAB is made visible.
function datoAB_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to datoAB (see VARARGIN)

% Choose default command line output for datoAB
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
imshow('C:\Users\Administrador\Desktop\proyecto TELE\datosAB.png')

% UIWAIT makes datoAB wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = datoAB_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ABchanel_Callback(hObject, eventdata, handles)
% hObject    handle to ABchanel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ABchanel as text
%        str2double(get(hObject,'String')) returns contents of ABchanel as a double


% --- Executes during object creation, after setting all properties.
function ABchanel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ABchanel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ABcodec_Callback(hObject, eventdata, handles)
% hObject    handle to ABcodec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ABcodec as text
%        str2double(get(hObject,'String')) returns contents of ABcodec as a double


% --- Executes during object creation, after setting all properties.
function ABcodec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ABcodec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ABtributario_Callback(hObject, eventdata, handles)
% hObject    handle to ABtributario (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ABtributario as text
%        str2double(get(hObject,'String')) returns contents of ABtributario as a double


% --- Executes during object creation, after setting all properties.
function ABtributario_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ABtributario (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in comprobar.
function comprobar_Callback(hObject, eventdata, handles)
% hObject    handle to comprobar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a1 a2 a3 ac at att abt

a1=get(handles.ABchanel,'string');
a1=str2double(a1);
at=str2double(at);
if  isnan(a1) || not(a1-floor(a1))==0
    errordlg({'Valor incorrecto:', 'Ingrese valores numerales enteros solamente', 'o no la deje vacia'},'ERROR Canales de TV')
    return
end
if  a1>1890 || a1<0
    warndlg({'Valor limite excedido:', 'El maximo que puede llegar en CHANNELs es 1890'},'ADVERTENCIA Canales de TV')
    return
end

ac=a1 / 30;

if (ac-fix(ac)==0)
        at=ac;
else
        at=fix(ac)+1;
end

set(handles.probador,'string',at);
%--------------------------------------------------------------------------
a2=get(handles.ABtributario,'string');
a2=str2double(a2);
if  isnan(a2) || not(a2-floor(a2))==0
    errordlg({'Valor incorrecto:', 'Ingrese valores numerales enteros solamente', 'o no la deje vacia'},'ERROR Tributarios SDH')
    return
end
if  a2>63 || a2<0
    warndlg({'Valor limite excedido:', 'El maximo que puede llegar en TRIBUTARIOS es 63'},'ADVERTENCIA Tributarios SDH')
    return
end

set(handles.probe2,'string',a2);

%--------------------------------------------------------------------------
a3=get(handles.ABcodec,'string');
a3=str2double(a3);
if  isnan(a3) || not(a3-floor(a3))==0
    errordlg({'Valor incorrecto:', 'Ingrese valores numerales enteros solamente', 'o no la deje vacia'},'ERROR CODECS')
    return
end
if  a3>3 || a3<0
    warndlg({'Valor limite excedido:', 'El maximo que puede llegar en CODECS es 3'},'ADVERTENCIA CODECS')
    return
end
att=a3*21;
set(handles.probe3,'string',att);

abt=at+a2+att;
if  abt>63
    warndlg({'Valor limite total excedido:', 'El maximo que puede llegar en A-B es 63','Por favor revise los datos ingresados'},'ADVERTENCIA TOTAL')
    return
end
%set(handles.total,'string',abt);
set(handles.continuar,'visible','on')



% --- Executes on button press in continuar.
function continuar_Callback(hObject, eventdata, handles)
% hObject    handle to continuar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(datoAB)
datoBC
