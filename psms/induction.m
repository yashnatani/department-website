function varargout = induction(varargin)
% INDUCTION M-file for induction.fig
%      INDUCTION, by itself, creates a new INDUCTION or raises the existing
%      singleton*.
%
%      H = INDUCTION returns the handle to a new INDUCTION or the handle to
%      the existing singleton*.
%
%      INDUCTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDUCTION.M with the given input arguments.
%
%      INDUCTION('Property','Value',...) creates a new INDUCTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before induction_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to induction_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help induction

% Last Modified by GUIDE v2.5 20-May-2016 17:02:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @induction_OpeningFcn, ...
                   'gui_OutputFcn',  @induction_OutputFcn, ...
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


% --- Executes just before induction is made visible.
function induction_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to induction (see VARARGIN)

% Choose default command line output for induction
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes induction wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = induction_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input1_editText_Callback(hObject, eventdata, handles)
% hObject    handle to input1_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input1_editText as text
%        str2double(get(hObject,'String')) returns contents of input1_editText as a double
input=str2num(get(hObject,'String'));
if(isempty(input))
    set(hObject,String','0')
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function input1_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input1_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input2_editText_Callback(hObject, eventdata, handles)
% hObject    handle to input2_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input2_editText as text
%        str2double(get(hObject,'String')) returns contents of input2_editText as a double
input=str2num(get(hObject,'String'));
if(isempty(input))
    set(hObject,String','0')
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function input2_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input2_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input3_editText_Callback(hObject, eventdata, handles)
% hObject    handle to input3_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input3_editText as text
%        str2double(get(hObject,'String')) returns contents of input3_editText as a double
input=str2num(get(hObject,'String'));
if(isempty(input))
    set(hObject,String','0')
end
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function input3_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input3_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input4_editText_Callback(hObject, eventdata, handles)
% hObject    handle to input4_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input4_editText as text
%        str2double(get(hObject,'String')) returns contents of input4_editText as a double
input=str2num(get(hObject,'String'));
if(isempty(input))
    set(hObject,String','0')
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function input4_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input4_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input5_editText_Callback(hObject, eventdata, handles)
% hObject    handle to input5_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input5_editText as text
%        str2double(get(hObject,'String')) returns contents of input5_editText as a double
input=str2num(get(hObject,'String'));
if(isempty(input))
    set(hObject,String','0')
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function input5_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input5_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.input1_editText,'String');
b=get(handles.input2_editText,'String');
c=get(handles.input3_editText,'String');
d=get(handles.input4_editText,'String');
e=get(handles.input5_editText,'String');
r1=str2num(a);
x1=str2num(b);
r2=str2num(c);
x2=str2num(d);
xm=str2num(e);
set(handles.answer1_staticText,'String',num2str(r1));
set(handles.answer2_staticText,'String',num2str(x1));
set(handles.answer3_staticText,'String',num2str(r2));
set(handles.answer4_staticText,'String',num2str(x2));
set(handles.answer5_staticText,'String',num2str(xm));
guidata(hObject,handles);
v_phase=460/sqrt(3);
n_sync=1800;
w_sync=188.5;
v_th=v_phase*(xm/sqrt(r1^2+(x1+xm)^2));
z_th=((j*xm)*(r1+j*x1))/(r1+j*(x1+xm));
r_th=real(z_th);
x_th=imag(z_th);
s=(0:1:50)/50;
s(1)=0.001;
nm=(1-s)*n_sync;
for ii=1:51
    t_ind1(ii)=(3*v_th^2*r2/s(ii))/...
        (w_sync*((r_th+r2/s(ii))^2+(x_th+x2)^2));
end
plot(nm,t_ind1,'color','k','linewidth',2);
xlabel('speed');
ylabel('torque');
title('induction motor torque speed characteristic');



