function varargout = verif(varargin)
% VERILOG MATLAB code for verilog.fig
%      VERILOG, by itself, creates a new VERILOG or raises the existing
%      singleton*.
%
%      H = VERILOG returns the handle to a new VERILOG or the handle to
%      the existing singleton*.
%
%      VERILOG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VERILOG.M with the given input arguments.
%
%      VERILOG('Property','Value',...) creates a new VERILOG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before verilog_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to verilog_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help verilog

% Last Modified by GUIDE v2.5 18-Mar-2018 23:26:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @verif_OpeningFcn, ...
                   'gui_OutputFcn',  @verif_OutputFcn, ...
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


% --- Executes just before verilog is made visible.
function verif_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to verilog (see VARARGIN)

% Choose default command line output for verilog
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes verilog wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = verif_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in verif.
function verif_Callback(hObject, eventdata, handles)
% hObject    handle to verif (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in continuar.
function continuar_Callback(hObject, eventdata, handles)
% hObject    handle to continuar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in volver.
function volver_Callback(hObject, eventdata, handles)
% hObject    handle to volver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function totalAB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalAB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global abt
set(handles.totalAB,'string',abt)


% --- Executes during object creation, after setting all properties.
function totalBC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalBC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global bbt
set(handles.totalBC,'string',bbt)


% --- Executes during object creation, after setting all properties.
function totalAC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global cbt
set(handles.totalAC,'string',cbt)


% --- Executes during object creation, after setting all properties.
function totalAC2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalAC2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global cbt
set(handles.totalBC,'string',cbt)
