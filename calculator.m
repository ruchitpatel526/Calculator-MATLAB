function varargout = calculator(varargin)
% CALCULATOR MATLAB code for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 12-Feb-2017 14:15:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
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


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no out args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator (see VARARGIN)

% Choose default command line out for calculator
handles.out = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning out args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line out from handles structure
varargout{1} = handles.out;
setGlobalx(0);

% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r = getGlobalx;
t = get(handles.res,'String');

if isempty(t)
     set(handles.res,'String','0+');
else
     z = t(end);
    if z=='-' || z=='*' || z=='/' || z=='+'
        h = t(1:end-1);
        h = [h '+'];
        set(handles.res,'String',h);
    else
        if r>=1
            setGlobalx(1);
            equals_Callback(hObject, eventdata, handles);
        else
            setGlobalx(r+1);
        end
        x1 = get(handles.add,'String');
        t = get(handles.res,'String');
        x = strcat(t,x1);
        set(handles.res,'String',x); 
    end
end



% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.res,'String',0);

% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0'
   set(handles.res,'String','');
end
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end

x1 = get(handles.four,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0' 
   set(handles.res,'String','');
end
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.two,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0'
   set(handles.res,'String','');
end
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.five,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0'
   set(handles.res,'String','');
end  
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.one,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0'
   set(handles.res,'String','');
end
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.six,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r = getGlobalx;
t = get(handles.res,'String');

if isempty(t)
     set(handles.res,'String','0-');
else
     z = t(end);
    if z=='-' || z=='*' || z=='/' || z=='+'
        h = t(1:end-1);
        h = [h '-'];
        set(handles.res,'String',h);
    else
        if r>=1
            setGlobalx(1);
            equals_Callback(hObject, eventdata, handles);
        else
            setGlobalx(r+1);
        end
        x1 = get(handles.minus,'String');
        t = get(handles.res,'String');
        x = strcat(t,x1);
        set(handles.res,'String',x); 
    end
end

% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0'
   set(handles.res,'String','');
end
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.nine,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0'
   set(handles.res,'String','');
end
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.seven,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0'
   set(handles.res,'String','');
end
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.eight,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0'
   set(handles.res,'String','');
end
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.three,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r = getGlobalx;
t = get(handles.res,'String');

if isempty(t)
     set(handles.res,'String','0*');
else
     z = t(end);
    if z=='-' || z=='*' || z=='/' || z=='+'
        h = t(1:end-1);
        h = [h '*'];
        set(handles.res,'String',h);
    else
        if r>=1
            setGlobalx(1);
            equals_Callback(hObject, eventdata, handles);
        else
            setGlobalx(r+1);
        end
        x1 = get(handles.multiply,'String');
        t = get(handles.res,'String');
        x = strcat(t,x1);
        set(handles.res,'String',x); 
    end
end

% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if t=='0'
   set(handles.res,'String','');
end
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.zero,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in decimal.
function decimal_Callback(hObject, eventdata, handles)
% hObject    handle to decimal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
if isnan(str2num(t)) | isinf(str2num(t))
   set(handles.res,'String','');
end
x1 = get(handles.decimal,'String');
t = get(handles.res,'String');
x = strcat(t,x1);
set(handles.res,'String',x);

% --- Executes on button press in equals.
function equals_Callback(hObject, eventdata, handles)
% hObject    handle to equals (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.res,'String');
[ans,status] = str2num(t);
if(status==1)
    set(handles.res,'String',ans);
else
    set(handles.res,'String','0');
end

% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r = getGlobalx;
t = get(handles.res,'String');

if isempty(t)
     set(handles.res,'String','0/');
else
     z = t(end);
    if z=='-' || z=='*' || z=='/' || z=='+'
        h = t(1:end-1);
        h = [h '/'];
        set(handles.res,'String',h);
    else
        if r>=1
            setGlobalx(1);
            equals_Callback(hObject, eventdata, handles);
        else
            setGlobalx(r+1);
        end
        x1 = get(handles.divide,'String');
        t = get(handles.res,'String');
        x = strcat(t,x1);
        set(handles.res,'String',x); 
    end
end
