{ pkgs, ... }: {
  services.kanata = {
    enable = true;
    package = pkgs.kanata-with-cmd;
    keyboards = {
      lily58 = {
        port = 10000;
        devices = [
          "/dev/input/by-id/usb-liliums_Lily58-event-kbd"
          "/dev/input/by-id/usb-liliums_Lily58-event-if02"
        ];

        extraDefCfg = ''
          process-unmapped-keys yes
          concurrent-tap-hold yes
          chords-v2-min-idle 40
          danger-enable-cmd yes
        '';

        config = /* scheme */ ''

(defsrc
)

(defvar
  tot 150  ;; tot=time out tap
)

(defvirtualkeys typingmode nop1)

(defalias
 .tp (hold-for-duration  150 typingmode)

  magic (switch
  ;; query
    ((and (input-history nop1 2) (input-history q 3))) (macro u) break
    ((input-history q 2)) (macro u) break

  ;; #include
    ((input-history 3 2)) (macro i n c l u d e) break

  ;; sfb
    ((and (input-history nop1 2) (input-history o 3))) (macro a) break
    ((and (input-history nop1 2) (input-history a 3))) (macro o) break
    ((and (input-history nop1 2) (input-history u 3))) (macro e) break
    ((and (input-history nop1 2) (input-history e 3))) (macro u) break
    ((and (input-history nop1 2) (input-history i 3))) (macro x) break
    ((input-history o 2)) (macro a) break
    ((input-history a 2)) (macro o) break
    ((input-history u 2)) (macro e) break
    ((input-history e 2)) (macro u) break
    ((input-history i 2)) (macro x) break

  ;; sfs
    ;;((and(input-history e 2) (input-history s 1))) (macro e) break
    ((and(input-history e 3) (input-history y 2))) (macro e) break
    ((and(input-history e 3) (input-history v 2))) (macro e) break
    ((and(input-history e 3) (input-history y 2))) (macro e) break
    ((and(input-history e 3) (input-history v 2))) (macro e) break

    ((and(input-history n 3) (input-history i 2))) (macro x) break
    ((and(input-history n 3) (input-history i 2))) (macro x) break
  ;; sfb
    ((and (input-history nop1 2) (input-history w 3))) (macro y) break
    ((and (input-history nop1 2) (input-history c 3))) (macro y) break
    ((and (input-history nop1 2) (input-history p 3))) (macro y) break
    ((input-history w 2)) (macro y) break
    ((input-history c 2)) (macro y) break
    ((input-history p 2)) (macro y) break


    ((and (input-history nop1 2) (input-history j 3))) (macro u s t) break
    ((input-history j 2)) (macro u s t) break

    ((and (input-history nop1 2) (input-history \ 3))) (macro n) break
    ((input-history \ 2)) (macro n) break


    ((and (input-history nop1 2) (input-history 1 3))) (macro [) break
    ((input-history 1 2)) (macro [) break

  ;; non-sfb for >>
    ((and (input-history nop1 2) (input-history . 3))) (macro S-.) break
    ((input-history . 2)) (macro S-.) break
  ;; non-sfb for <=
    ((and (input-history nop1 2) (input-history , 3))) (macro =) break
    ((input-history , 2)) (macro =) break
  ;; non-sfb ; for ]
    ((and (input-history nop1 2) (input-history ] 3))) (macro ;) break
    ((input-history ] 2)) (macro ;) break
  ;; auto ; for {}
    ((and (input-history nop1 2) (input-history { 3))) (macro S-] ; left left) break
    ((input-history { 2)) (macro S-] ; left left) break



    ((and (input-history nop1 2) (input-history x 3))) (macro p k g s) break
    ((input-history x 2)) (macro p k g s) break


    ((and (input-history nop1 2) (input-history 7 3))) (macro S-7) break
    ((and (input-history nop1 2) (input-history ; 3))) (macro S-;) break
    ((and (input-history nop1 2) (input-history = 3))) (macro S-.) break
    ((and (input-history nop1 2) (input-history - 3))) (macro S-.) break
    ((and (input-history nop1 2) (input-history 9 3))) (macro S-') break
    ((and (input-history nop1 2) (input-history 0 3))) (macro S-0) break
    ((input-history 7 2)) (macro S-7) break
    ((input-history ; 2)) (macro S-;) break
    ((input-history = 2)) (macro S-.) break
    ((input-history - 2)) (macro S-.) break
    ((input-history 9 2)) (macro S-') break
    ((input-history 0 2)) (macro S-0) break











    () rpt break
  )

  ;; normal rpt except for syms
  rpeat (switch
  ;; TODO tr -> ue
    ((key-history , 1)) (macro S-,) break
    ;;((and (key-history nop1 1) (key-history , 1))) (macro S-,) break
    ((key-history \ 1)) (macro S-\) break
    ;;((and (key-history nop1 1) (key-history \ 1))) (macro S-\) break
    ((key-history ; 1)) (macro S-;) break
    ;;((and (key-history nop1 1) (key-history ; 1))) (macro S-;) break
    ((key-history 7 1)) (macro S-7) break
    ;;((and (key-history nop1 1) (key-history 7 1))) (macro S-7) break
    ((key-history 9 1)) (macro S-9) break
    ;;((and (key-history nop1 1) (key-history 9 1))) (macro S-9) break
    ((key-history 0 1)) (macro S-0) break
    ;;((and (key-history nop1 1) (key-history 0 1))) (macro S-0) break


    () rpt break
  )
)

(deflayermap (base)
 ;; define home row mods (they act as typing-layer triggers, too )
 t (t! homerowmod $tot 110 t lsft)
 a (t! homerowmod $tot 110 a rsft)
 c (t! homerowmod $tot 110 c lctl)
 h (t! homerowmod $tot 110 h rctl)
 n (t! homerowmod $tot 150 n lsft)
 i (t! homerowmod $tot 150 i rsft)
 s (t! homerowmod $tot 120 s (layer-while-held syms))
 e (t! homerowmod $tot 120 e (layer-while-held syms))
 ;; define each letter as typing-layer trigger
 q ( t! letter 200 200 q)
 w ( t! letter 200 200 w)
 f ( t! letter 200 200 f)
 l ( t! letter 200 200 l)
 j ( t! letter 200 200 j)
 y ( t! letter 200 200 y)
 u ( t! letter 200 200 u)
 d ( t! letter 200 200 d)
 o ( t! letter 200 200 o)
 p ( t! letter 200 200 p)
 g ( t! letter 200 200 g)
 ; ( t! letter 200 200 ;)
 z ( t! letter 200 200 z)
 x ( t! letter 200 200 x)
 v ( t! letter 200 200 v)
 b ( t! letter 200 200 b)
 k ( t! letter 200 200 k)
 m ( t! letter 200 200 m)
 
f15 S--
f16 S-9
f17 S-0
lmet (multi (tap-hold-press 120 120 esc lmet) (layer-while-held sup))
f19 @magic
rsft bspc
ralt tab
f18 S-;
lctrl -
bspc @rpeat



3 S-[
8 S-]


)
(deflayermap krita
lsft lsft
lctl lctl
r spc
spc r
)

(deflayermap over


f18 tab
f15 8
f16 9
f17 0
f19 lsft

b (multi b (layer-switch over))
f (multi f (layer-switch over))
d (multi d (layer-switch over))
w (multi w (layer-switch over))
p (multi p (layer-switch over))
n (multi n (layer-switch over))
s (multi s (layer-switch over))
t (multi t (layer-switch over))
c (multi c (layer-switch over))
y (multi y (layer-switch over))
, (multi , (layer-switch over))
. (multi . (layer-switch over))
k (multi k (layer-switch over))
g (multi g (layer-switch over))
v (multi v (layer-switch over))
' (multi ' (layer-switch over))
l (multi l (layer-switch over))
o (multi o (layer-switch over))
u (multi u (layer-switch over))
j (multi j (layer-switch over))
x (multi x (layer-switch over))
m (multi m (layer-switch over))
h (multi h (layer-switch over))
a (multi a (layer-switch over))
e (multi e (layer-switch over))
i (multi i (layer-switch over))
)

(deflayermap sup


f18 tab
f15 S--
f16 S-9
f17 S-0
f19 lsft

b b
f f
d d
w w
p p
n n
s s
t t
c c
y y
, ,
. .
k k
g g
v v
' '
l l
o o
u u
j j
x x
m m
h h
a a
e e
i i

)
(deflayermap syms
esc f1
1 f2
2 f3
3 f4
4 f5
5 f6
6 f7
7 home
8 pgdn
9 pgup
0 end
b ,
f .
d ` 
w `
l left
o down
u up
j right
n 1
s 2
t 3
c 4
h 7
a 8
e 9
i 0
bspc rpt
, 0
. 9
k 8
g 5
f15 6
f16 3
f17 2
; 1

)


(defchordsv2

  (b f    ) S-6 15 all-released (over sup)
  (  f d  ) S-7 15 all-released (over sup)
  (  f   w) `   15 all-released (over sup)
  (    d w) S-8 15 all-released (over sup)
  
  (l o    ) S-' 15 all-released (over sup)
  (  o u  ) S-\ 15 all-released (over sup)
  (    u j) S-1 15 all-released (over sup)

  (n s    ) S-, 15 all-released (over sup)
  (  s t  ) = 15 all-released (over sup)
  (  s   c) S-` 15 all-released (over sup)
  (    t c) [   15 all-released (over sup)

  (h a    ) ]   15 all-released (over sup)
  (h   e  ) del 15 all-released (over sup)
  (  a e  ) +   15 all-released (over sup)
  (    e i) S-. 15 all-released (over sup)

  (, .    ) \   15 all-released (over sup)
  (  . k  ) S-\ 15 all-released (over sup)
  (    k g) S-4 15 all-released (over sup)

  (f15 f16      ) S-3 15 all-released (over sup)
  (f15     f17  ) S-5 15 all-released (over sup)
  (    f16 f17  ) S-/ 15 all-released (over sup)
  (        f17 ;) S-2 15 all-released (over sup)
)



(deftemplate homerowmod (timeouttap timeouthold keytap keyhold)
   (switch
   (nop1) $keytap break ;;check for typing mode
  () (tap-hold $timeouttap $timeouthold
      (multi $keytap  @.tp)
      $keyhold
  ) break
))

(deftemplate letter (timeouttap timeouthold keytap)
      (switch 
            (nop1) (multi (unmod $keytap)  @.tp) break  ;;check for typing mode
            () (multi                $keytap  @.tp) break
    )
)
        '';
      };

    };
  };

  boot.kernelModules = [ "uinput" ];
  hardware.uinput.enable = true;

  # Set up udev rules for uinput
  services.udev.extraRules = ''
    KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
  '';

  # Ensure the uinput group exists
  users.groups.uinput = { };

  systemd.services.kanata-lily58.serviceConfig = {
    # User = "root";
    SupplementaryGroups = [
      "input"
      "uinput"
    ];
  };
}
