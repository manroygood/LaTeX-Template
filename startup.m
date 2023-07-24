% MATLAB startup items

% Increase the default font size in figures
set(groot,'DefaultAxesFontSize',14)
set(groot,'DefaultLineLineWidth',2)
set(groot,'DefaultFunctionLineLineWidth',2)
set(groot,'DefaultFunctionContourLineWidth',2)

set(groot,'DefaultParameterizedFunctionLineLineWidth',2)
set(groot,'DefaultContourLineWidth',1.5)
set(groot,'DefaultTextInterpreter','latex')
set(groot,'DefaultAxesTickLabelInterpreter','latex')
set(groot,'DefaultLegendInterpreter','latex');
set(groot,'DefaultColorbarTickLabelInterpreter','latex')
set(groot,'DefaultTextFontSize',20)

% Disable data tips
if ~verLessThan('MATLAB','9.12')
    set(groot, 'defaultAxesCreateFcn', @(ax,~) disableDefaultInteractivity(ax))
end

%set(groot,'DefaultFigureRenderer', 'painters')

% Add additional directories to the path
path1 = getenv('PATH');
path1 = [path1 ':/usr/local/bin:/Library/TeX/texbin:/usr/X11/bin:/sw/bin:/Users/roy/bin'];
setenv('PATH', path1);
clear path1;
setenv('BASH_ENV','.bash_profile');

cd ~/Numerics