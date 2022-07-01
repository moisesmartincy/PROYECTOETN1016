function varargout = verificador(varargin)
% VERIFICADOR MATLAB code for verificador.fig
%      VERIFICADOR, by itself, creates a new VERIFICADOR or raises the existing
%      singleton*.
%
%      H = VERIFICADOR returns the handle to a new VERIFICADOR or the handle to
%      the existing singleton*.
%
%      VERIFICADOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VERIFICADOR.M with the given input arguments.
%
%      VERIFICADOR('Property','Value',...) creates a new VERIFICADOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before verificador_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to verificador_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help verificador

% Last Modified by GUIDE v2.5 02-Apr-2018 08:45:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @verificador_OpeningFcn, ...
                   'gui_OutputFcn',  @verificador_OutputFcn, ...
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


% --- Executes just before verificador is made visible.
function verificador_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to verificador (see VARARGIN)

% Choose default command line output for verificador
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
imshow('C:\Users\Administrador\Desktop\proyecto TELE\fondo.jpg')


% UIWAIT makes verificador wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = verificador_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in verificar.
function verificar_Callback(hObject, eventdata, handles)
% hObject    handle to verificar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global abt bbt cbt ttl1 ttl2 ton cap_dis at bt ct asr bsr csr a1 b1 c1 res_ab res_bc res_ac cap_dis2 cap_dis3
set(handles.totalAB,'string',abt)
set(handles.totalBC,'string',bbt)
set(handles.totalAC,'string',cbt)
set(handles.totalAC1,'string',cbt)

ttl1=abt+cbt;
ttl2=bbt+cbt;

if ttl1>63 || ttl2>63
    warndlg({'La capacidad critica supera la maxima.','Por favor ingrese los datos nuevamente'},'ADVERTENCIA')
    return
end
if ttl1>ttl2
    ton=ttl1;
else
    ton=ttl2;
end
cap_dis=63-ton;
cap_dis2=63-ttl1;
cap_dis3=63-ttl2;

asr=(at*30)-a1;
bsr=(bt*30)-b1;
csr=(ct*30)-c1;

res_ab=(cap_dis2*30)+asr;
res_bc=(cap_dis3*30)+bsr;
res_ac=(cap_dis*30)+csr;

if (ttl1>9) & (ttl1<21)
   set(handles.bien,'visible','on')     
end

if (ttl2>9) & (ttl2<21)
   set(handles.bien,'visible','on')     
end

set(handles.ultimo1,'string',ttl1)
set(handles.ultimo2,'string',ttl2)
set(handles.absolutoAB,'visible','on')
set(handles.absolutoBC,'visible','on')
set(handles.absolutoAC,'visible','on')


% --- Executes on button press in volver.
function volver_Callback(hObject, eventdata, handles)
% hObject    handle to volver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(verificador)
datoAB


% --- Executes on button press in absolutoAB.
function absolutoAB_Callback(hObject, eventdata, handles)
% hObject    handle to absolutoAB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(verificador)
resultados


% --- Executes on button press in absolutoBC.
function absolutoBC_Callback(hObject, eventdata, handles)
% hObject    handle to absolutoBC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(verificador)
resultados2


% --- Executes on button press in absolutoAC.
function absolutoAC_Callback(hObject, eventdata, handles)
% hObject    handle to absolutoAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(verificador)
resultados3
