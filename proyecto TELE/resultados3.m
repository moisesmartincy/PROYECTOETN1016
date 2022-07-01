function varargout = resultados3(varargin)
% RESULTADOS3 MATLAB code for resultados3.fig
%      RESULTADOS3, by itself, creates a new RESULTADOS3 or raises the existing
%      singleton*.
%
%      H = RESULTADOS3 returns the handle to a new RESULTADOS3 or the handle to
%      the existing singleton*.
%
%      RESULTADOS3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTADOS3.M with the given input arguments.
%
%      RESULTADOS3('Property','Value',...) creates a new RESULTADOS3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultados3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultados3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultados3

% Last Modified by GUIDE v2.5 19-Mar-2018 21:58:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultados3_OpeningFcn, ...
                   'gui_OutputFcn',  @resultados3_OutputFcn, ...
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


% --- Executes just before resultados3 is made visible.
function resultados3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultados3 (see VARARGIN)

global cap_dis csr res_ac
set(handles.restrib,'string',cap_dis)
set(handles.remAC,'string',csr)
set(handles.reschanel,'string',res_ac)
% Choose default command line output for resultados3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
imshow('C:\Users\Administrador\Desktop\proyecto TELE\fonted.png')

% UIWAIT makes resultados3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = resultados3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in closer.
function closer_Callback(hObject, eventdata, handles)
% hObject    handle to closer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(resultados3)


% --- Executes on button press in volver.
function volver_Callback(hObject, eventdata, handles)
% hObject    handle to volver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(resultados3)
verificacion
