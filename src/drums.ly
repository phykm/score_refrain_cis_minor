% crashcymbal cymc
% ridecymbal cymr
% hihat hh
% closedhihat hhc
% openhihat hho
% halfopenhihat hhho
% hightom tomh
% himidtom tommh
% snare sn
% lowmidtom tomml
% lowtom toml
% bassdrum bd

% Aメロ一回目
upper_A = \drummode {
    \voiceOne %これはスラーなどの描画の向きを分けるための宣言のようだ。
    r2 sn4 r4
    R1 
    r2 sn4 r4 
    r4 toml4 tomml8 toml8 r4
    r2 sn4 r4
    R1 
    r2 sn4 r4 
    r4 toml4 tomml8 toml8 r4
    r2 sn4 r4
    R1 
    r2 sn4 r4 
    r4 toml4 tomml8 toml8 r4
    r2 sn4 r4
    R1 
    r2 sn4 r4 
    r2 sn8 hho4 toml8
}
foot_A = \drummode {
    \voiceTwo
    bd8 bd8 r2.
    r4 bd4 bd8 bd8 r4
    bd8 bd8 r2.
    R1
    bd8 bd8 r2.
    r4 bd4 bd8 bd8 r4
    bd8 bd8 r2.
    R1
    bd8 bd8 r2.
    r4 bd4 bd8 bd8 r4
    bd8 bd8 r2.
    R1
    bd8 bd8 r2.
    r4 bd4 bd8 bd8 r4
    bd8 bd8 r2.
    bd4 r8 bd8 r8 bd8 r4
}

drums_A = {
  <<
    \new DrumVoice \upper_A
    \new DrumVoice \foot_A
  >>
}

%% Bメロ
upper_B = \drummode {
    \voiceOne
    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4

    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4

    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4

    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    hh8 hh8 hho4 <hh sn>8 hh8 hho4
    <hh sn>8 hh8 r8 sn8 hh8 sn8 toml8 toml8
}

foot_B = \drummode {
    \voiceTwo
    bd8 bd8 r4 r4 bd8 bd8
    r4 bd4 r8 bd8 r4
    bd8 bd8 r4 r4 bd8 bd8
    r4 bd4 r8 bd8 r4

    bd8 bd8 r4 r4 bd8 bd8
    r4 bd4 r8 bd8 r4
    bd8 bd8 r4 r4 bd8 bd8
    r4 bd4 r8 bd8 r4

    bd8 bd8 r4 r4 bd8 bd8
    r4 bd4 r8 bd8 r4
    bd8 bd8 r4 r4 bd8 bd8
    r4 bd4 r8 bd8 r4

    bd8 bd8 r4 r4 bd8 bd8
    r4 bd4 r8 bd8 r4
    bd8 bd8 r4 r4 bd8 bd8
    r8 bd8 bd8 r8 bd4 bd4
}

drums_B = {
  <<
    \new DrumVoice \upper_B
    \new DrumVoice \foot_B
  >>
}

upper_hook = \drummode {
    \voiceOne
    %
    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 hh8 hh8 <cymc sn>4 hh8 sn16 sn16

    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 hh8 hh8 <cymc sn>4 hh8 sn16 sn16

    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 hh8 hh8 <cymc sn>4 hh8 sn16 sn16

    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 <cymc sn>8 tommh8 tommh8 tomml8 toml8 toml16 toml16
    
    %
    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 hh8 hh8 <cymc sn>4 hh8 sn16 sn16

    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 hh8 hh8 <cymc sn>4 hh8 sn16 sn16

    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 hh8 hh8 <cymc sn>4 hh8 sn16 sn16

    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 <cymc sn>8 tommh8 tommh8 sn8 hho8 toml16 toml16
    % 
    cymc4 hho4 <hh sn>8 hh8 hho4
    hh8 hh8  hho4 <hh sn>8 hh8 hho4
    hh8 hh8  hho4 <hh sn>8 hh8 hho4
    hh8 hh8  hho4 <hh sn>8 hh8 hho8 sn8
}

foot_hook = \drummode {
    \voiceTwo
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4
    bd4 r8 bd8 r2 bd4 r2 bd4
    %
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4
    bd4 r8 bd8 r2 bd4 r2 bd4
    %
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 r4
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4
}

drums_hook = {
  <<
    \new DrumVoice \upper_hook
    \new DrumVoice \foot_hook
  >>
}

upper_inter = \drummode {
    \voiceOne
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 toml4 toml8 toml8
}
foot_inter = \drummode {
    \voiceTwo
    bd8 bd8 r2. r2 bd8 bd8 r4
    bd8 bd8 r2. r2 bd8 bd8 r4
    bd8 bd8 r2. r2 bd8 bd8 r4
    bd8 bd8 r2. r2 bd8 bd8 r4
}

drums_inter = {
  <<
    \new DrumVoice \upper_inter
    \new DrumVoice \foot_inter
  >>
}