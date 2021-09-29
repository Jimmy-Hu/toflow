%%  Set output root
output_root = ['.' filesep 'Output'];

%   For Octave
%   pkg install -forge image
%   pkg load image

%%  Visiting each sub-folder
outer_loop_start = 1;
outer_loop_end = 2;
inner_loop_start = 1;
inner_loop_end = 1000;

for outer_loop = outer_loop_start:outer_loop_end
    for inner_loop = inner_loop_start:inner_loop_end
        input_path = [input_root filesep sprintf('%05d', outer_loop) filesep sprintf('%04d', inner_loop)];
        if (~exist(input_path, 'dir'))
            continue;
        end
        output_path = [output_root filesep sprintf('%05d', outer_loop) filesep sprintf('%04d', inner_loop)];
        downsample_input(input_path, output_path);
        fprintf("Processing for folder %s finished!\n", output_path);
    end
end