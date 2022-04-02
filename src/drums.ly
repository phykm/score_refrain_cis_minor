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