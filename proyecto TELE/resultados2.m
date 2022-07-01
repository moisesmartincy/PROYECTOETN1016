function varargout = resultados2(varargin)
% RESULTADOS2 MATLAB code for resultados2.fig
%      RESULTADOS2, by itself, creates a new RESULTADOS2 or raises the existing
%      singleton*.
%
%      H = RESULTADOS2 returns the handle to a new RESULTADOS2 or the handle to
%      the existing singleton*.
%
%      RESULTADOS2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTADOS2.M with the given input arguments.
%
%      RESULTADOS2('Property','Value',...) creates a new RESULTADOS2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultados2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultados2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultados2

% Last Modified by GUIDE v2.5 19-Mar-2018 15:50:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultados2_OpeningFcn, ...
                   'gui_OutputFcn',  @resultados2_OutputFcn, ...
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


% --- Executes just before resultados2 is made visible.
function resultados2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultados2 (see VARARGIN)

% Choose default command line output for resultados2
global cap_dis3 bsr res_bc
set(handles.restrib,'string',cap_dis3)
set(handles.remBC,'string',bsr)
set(handles.reschanel,'string',res_bc)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
imshow('C:\Users\Administrador\Desktop\proyecto TELE\fonted.png')

% UIWAIT makes resultados2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = resultados2_OutputFcn(hObject, eventdata, handles) 
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
close(resultados2)


% --- Executes on button press in retornar.
function retornar_Callback(hObject, eventdata, handles)
% hObject    handle to retornar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(resultados2)
verificacion
