% Problem Set 2, Question 5
% Laura Gati 
% 2 August 2020

% Evaluate the code: Editor > Run.
% If you get an error saying
% 'some action' requires Some Toolbox
% then go to Home > Add-Ons > Get Add-Ons. Then the Add-On Explorer will
% open up. In it, search for the toolbox, and install it.

% If you want to play around with the code, use '%' to comment out things.

% ----
clearvars
clc
fs=20; % fontsize

this_code = mfilename;


% Load in data
url = 'https://fred.stlouisfed.org/';
c = fred(url);

series = 'UNRATE';
metadata = fetch(c,series);
time  = metadata.Data(:,1);
u = metadata.Data(:,2);

mean_u = mean(u);

% Plot unemployment rate
figure
set(gcf,'color','w'); % sets white background color
set(gcf, 'Position', get(0, 'Screensize')); % sets the figure fullscreen
plot(time,u, 'linewidth',2); hold on
plot(time, mean_u*ones(size(u)),'linewidth',2)
ax = gca; % current axes
ax.FontSize = fs;
grid on
grid minor
legend({'Unemployment rate','Average u-rate'}, 'location', 'southeast')
datetick('x','yyyy-mm', 'keeplimits')
title('Unemployment rate, percent, monthly')

% Redefine the variable your_name
your_name = 'Laura Gati' % don't put a semicolon - that suppresses output
pwd
datestr(today,'dd-mm-yyyy')

close(c)

% As a last step, run publish_your_code.m to save this as a pdf.

