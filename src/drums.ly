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
    hh4 hh8 hh8 <hh sn>4 hh8 hh8
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 <hh sn>4 hh8 hh8
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 <hh sn>4 hh8 hh8
    hh4 hh8 hh8 hh4 hh8 hh8
    hh4 hh8 hh8 <hh sn>4 hh8 hh8
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

upper_AA = \drummode {
    \voiceOne
    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>8 hh8 hho8 sn8

    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>8 hh8 hho8 sn8

    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>8 hh8 hho8 sn8

    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>4 hh8 hh8
    hh4 <hh toml>8 hh8 <hh sn>8 hho4 toml8
}

foot_AA = \drummode {
    \voiceTwo
    bd4. bd8 r4. bd8
    bd4. bd8 r4. bd8
    bd4. bd8 r4. bd8
    bd4. bd8 r8 bd8 bd8 r8

    bd4. bd8 r4. bd8
    bd4. bd8 r4. bd8
    bd4. bd8 r4. bd8
    bd4. bd8 r8 bd8 bd8 r8

    bd4. bd8 r4. bd8
    bd4. bd8 r4. bd8
    bd4. bd8 r4. bd8
    bd4. bd8 r8 bd8 bd8 r8

    bd4. bd8 r4. bd8
    bd4. bd8 r4. bd8
    bd4. bd8 r4. bd8
    bd4. bd8 r8 bd8 bd8 r8
}


drums_AA = {
  <<
    \new DrumVoice \upper_AA
    \new DrumVoice \foot_AA
  >>
}


upper_developOne = \drummode {
    \voiceOne
    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 hh8 hh8 <cymc sn>4 hh8 toml16 toml16

    cymc4 hh8 hh8 <cymc sn>4 hh8 hh8
    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 <cymc sn>8 tommh8 tommh8 tomml8 toml8 toml16 toml16

    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 hh8 hh8 <cymc sn>4 hh8 sn16 sn16
    cymc4 hh8 hh8 <cymc sn>4 hh8 toml16 toml16
    cymc8 sn8 hh8 hh8 <cymc sn>4 hh8 sn16 sn16

    <cymc toml>4 <tomml toml>4 4 4 4 4 4 4
    4 8 8 4 8 8
    toml8 sn8 \tuplet 3/2 { sn8 toml8 toml8 r8 sn8 sn8 sn8 toml8 toml8 }
}

foot_developOne = \drummode {
    \voiceTwo
    bd4. 8 r2  bd4. 8 r2  bd4. 8 r2 r4 bd4 r8 bd8 bd4 

    bd8 bd8 r4 r4 bd8 bd8 r4 bd4 r8 bd8 bd4
    bd8 bd8 r4 r4 bd8 bd8 r2. bd4

    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4

    bd4 4 4 4 4 4 4 4
    4 8 8 4 8 8 4 \tuplet 3/2 {r4 bd8} bd4 r4
}

drums_developOne = {
  <<
    \new DrumVoice \upper_developOne
    \new DrumVoice \foot_developOne
  >>
}

upper_developTwo = \drummode {
    \voiceOne
    cymc4 hh8 8 4 8 8 4 8 8 4 8 8
    4 8 8 4 8 8  4 8 8 4 8 8
    4 8 8 4 8 8  4 8 8 4 8 8 
    4 8 8 4 8 8  4 8 8 8 sn8 hh8 8

    cymc4 hh8 hh8 <hh sn>4 hh8 hh8
    hh8 sn8 hh8 hh8 <hh sn>4 hh8 sn16 sn16
    cymc4 hh8 hh8 <hh sn>4 hh8 hh8
    hh8 sn8 hh8 hh8 <hh sn>4 hh8 sn16 sn16

    cymc1 R1 
    r2 hho4 \tuplet 3/2 {tomml8 toml8 sn8}
    \tuplet 3/2 {tomml8 sn8 sn8 sn8 tomml8 tomml8}
    \tuplet 3/2 {hho8 tomml8 tomml8 toml8 toml8 toml8}
}

foot_developTwo = \drummode {
    \voiceTwo
    bd4. 8 r2 R1
    bd4. 8 r2 R1
    bd4. 8 r2 R1
    bd4. 8 r2 r2 bd4 r4

    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4
    bd4 r8 bd8 r2 r4 bd4 r8 bd8 bd4

    bd4 r2. R1 R1 bd4 r4 bd4 bd4 
}

drums_developTwo = {
  <<
    \new DrumVoice \upper_developTwo
    \new DrumVoice \foot_developTwo
  >>
}