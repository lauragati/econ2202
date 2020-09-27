% Code for publishing your problem set code as a pdf.
% Laura Gati
% 3 August 2020


current_directory = pwd;
publish_folder = [pwd, '/published'];
options = struct('format','pdf','outputDir',publish_folder);



% Enter the name of the code you want to publish here:
codename = 'ps2_extra_credit';




publish(codename,options)

close all