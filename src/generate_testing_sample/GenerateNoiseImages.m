%   For Octave
%   pkg install -forge image
%   pkg load image

%%  Visiting each sub-folder

for outer_loop = 1:1
    for inner_loop = 1:1
        input_path = [input_root filesep sprintf('%05d', outer_loop) filesep sprintf('%04d', inner_loop)];
        if (~exist(input_path, 'dir'))
            continue;
        end
        output_path = ['.' filesep 'Output' filesep sprintf('%05d', outer_loop) filesep sprintf('%04d', inner_loop)];
        add_noise_to_input(input_path, output_path);
        fprintf("Processing for folder %s finished!\n", output_path);
    end
end