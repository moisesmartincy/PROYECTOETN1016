function varargout = resultados(varargin)
% RESULTADOS MATLAB code for resultados.fig
%      RESULTADOS, by itself, creates a new RESULTADOS or raises the existing
%      singleton*.
%
%      H = RESULTADOS returns the handle to a new RESULTADOS or the handle to
%      the existing singleton*.
%
%      RESULTADOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTADOS.M with the given input arguments.
%
%      RESULTADOS('Property','Value',...) creates a new RESULTADOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultados_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultados_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultados

% Last Modified by GUIDE v2.5 19-Mar-2018 16:02:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultados_OpeningFcn, ...
                   'gui_OutputFcn',  @resultados_OutputFcn, ...
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


% --- Executes just before resultados is made visible.
function resultados_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultados (see VARARGIN)

global asr cap_dis2 res_ab

%resultado para trama AB
set(handles.oficial1,'string',cap_dis2)

%resultado para trama AB remanencia
set(handles.ABrem,'string',asr)

%resultado para trama AB canales
set(handles.oficial2,'string',res_ab)

% Choose default command line output for resultados
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
imshow('C:\Users\Administrador\Desktop\proyecto TELE\fonted.png')

% UIWAIT makes resultados wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = resultados_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in finalizar.
function finalizar_Callback(hObject, eventdata, handles)
% hObject    handle to finalizar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(resultados)


% --- Executes on button press in volver.
function volver_Callback(hObject, eventdata, handles)
% hObject    handle to volver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(resultados)
verificacion
