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
(defsrc)

(deflayermap (base)
 ;; define home row mods (they act as typing-layer triggers, too )
 t (t! homerowmod $tot 110 t lsft)
 a (t! homerowmod $tot 110 a rsft)
 c (t! homerowmod $tot 110 c lctl)
 h (t! homerowmod $tot 110 h rctl)
 n (t! homerowmodfiltered $tot 200 n lsft (n))
 i (t! homerowmod $tot 150 i rsft)
 s (t! homerowmod $tot 120 s (layer-while-held syms))
 e (t! homerowmod $tot 120 e (layer-while-held syms))
 ;; define each letter as typing-layer trigger
 g (multi g @.tp) r (multi r @.tp) q (multi q @.tp) w (multi w @.tp) j (multi j @.tp) f (multi f @.tp) y (multi y @.tp) u (multi u @.tp) k (multi k @.tp) o (multi o @.tp) p (multi p @.tp)  l (multi l @.tp) z (multi z @.tp) x (multi x @.tp) d (multi d @.tp) v (multi v @.tp) b (multi b @.tp) m (multi m @.tp) 

esc (layer-switch over)
spc (switch
() spc break
)


3 S-[
8 S-]


f18 S-;
lctrl -
bspc @rpeat
f15 S--
f16 S-9
f17 S-0
lmet (tap-hold-press 120 120 esc (multi (layer-while-held sup) lmet))
f19 @magic
rsft bspc
ralt tab
;;, (tap-hold-press 110 110 , lsft)
;;. @per?


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
r @cw

)

(deflayermap sup
rsft rsft
- lctl
b b
f f
d d
w w
n n
s s
t t
c c
h h
a a
e e
i i


)

(deflayermap krita
lsft lsft
lctl lctl
r spc
spc r
)

(defvirtualkeys
  to-base (layer-switch base)
  to-over (layer-switch over)
)



(defvar
  tot 80 ;; tot=timeouttap
)


(deftemplate homerowmod (timeouttap timeouthold keytap keyhold)
	(tap-hold $timeouttap $timeouthold 
		(multi $keytap  @.tp) 
		$keyhold
	)
)

;; homerowmodfiltered: include a way to fix problematic bigrams
(deftemplate homerowmodfiltered (timeouttap timeouthold keytap keyhold typinglist)
  (tap-hold-release-keys $timeouttap $timeouthold
    (multi $keytap  @.tp)
    $keyhold
    $typinglist ;; Activates $keytap early if a key within $typinglist is pressed before hold activates.
  )
)

(defalias
  ;; call @.tp whenever you want to enter typing-layer
  .tp (switch
        ;;(lsft rsft) XX break ;; skip typing-layer activation for upper case keys might this solves some FJ problems
        ()  (multi
              (layer-switch typing)
              (on-idle 1 tap-vkey to-base )
            ) break
      )
  .spc-typing   (multi (layer-switch base) spc) ;; expilcitly leave typing-layer when hitting `space` - this allows experimenting with higher idle timeouts
)



(deflayermap (typing) 
 h (multi (unshift h) (layer-switch base))
 b (multi (unshift b) (layer-switch base))
 d (multi (unshift d) (layer-switch base))
 f (multi (unshift f) (layer-switch base))
 g (multi (unshift g) (layer-switch base))
 j (multi (unshift j) (layer-switch base))
 k (multi (unshift k) (layer-switch base))
 l (multi (unshift l) (layer-switch base))
 m (multi (unshift m) (layer-switch base))
 o (multi (unshift o) (layer-switch base))
 p (multi (unshift p) (layer-switch base))
 q (multi (unshift q) (layer-switch base))
 r (multi (unshift r) (layer-switch base))
 c (multi (unshift c) (layer-switch base))
 u (multi (unshift u) (layer-switch base))
 v (multi (unshift v) (layer-switch base))
 w (multi (unshift w) (layer-switch base))
 x (multi (unshift x) (layer-switch base))
 y (multi (unshift y) (layer-switch base))
 z (multi (unshift z) (layer-switch base))
 ent (unshift ent)

 a (multi (t! homerowmod $tot 110 (unshift a) rsft) (layer-switch base))
 t (multi (t! homerowmod $tot 110 (unshift t) lsft) (layer-switch base))
 s (t! homerowmod $tot 120 (unshift s) (layer-while-held syms))
 e (t! homerowmod $tot 120 (unshift e) (layer-while-held syms))
 i (multi (t! homerowmod $tot 140 (unshift i) rsft) (layer-switch base))
 n (multi (t! homerowmod $tot 140 (unshift n) lsft) (layer-switch base))
f15 S--
f16 S-9
f17 S-0
lmet (multi nop1 (tap-hold-press 120 120 esc lmet))
f19 @magic
rsft bspc
ralt tab
f18 S-;
lctrl -
bspc @rpeat




3 S-[
8 S-]

 ;;caps XX ;; 5. key deactivations of caps, numbers, ... are optional
)






(defchordsv2

  (b f    ) S-6 15 all-released (typing over sup)
  (  f d  ) S-7 15 all-released (typing over sup)
  (  f   w) `   15 all-released (typing over sup)
  (    d w) S-8 15 all-released (typing over sup)

  (l o    ) S-' 15 all-released (typing over sup)
  (  o u  ) S-\ 15 all-released (typing over sup)
  (    u j) S-1 15 all-released (typing over sup)

  (n s    ) S-, 15 all-released (typing over sup)
  (  s t  ) = 15 all-released (typing over sup)
  (  s   c) S-` 15 all-released (typing over sup)
  (    t c) [   15 all-released (typing over sup)

  (h a    ) ]   15 all-released (typing over sup)
  (h   e  ) del 15 all-released (typing over sup)
  (  a e  ) +   15 all-released (typing over sup)
  (    e i) S-. 15 all-released (typing over sup)

  (, .    ) \   15 all-released (typing over sup)
  (  . k  ) S-2 15 all-released (typing over sup)
  (    k g) S-4 15 all-released (typing over sup)

  (f15 f16      ) S-3 15 all-released (typing over sup)
  (f15     f17  ) S-5 15 all-released (typing over sup)
  (    f16 f17  ) S-/ 15 all-released (typing over sup)
  (        f17 ;) S-2 15 all-released (typing over sup)
)



(defalias
  ;;sym (tap-hold-press 120 120 enter (layer-toggle syms))
  ;;wi (tap-hold-press 120 120 enter (layer-toggle win))
  lc (tap-hold-press 120 120 - lctl)
  lm (tap-hold-press 120 120 esc lmet)
  rs (tap-hold-press 120 120 bspc lsft)
  ;;col (tap-hold-press 120 120 S-; lctl)

  ;;dr (dynamic-macro-record 0)
  ;;dp (dynamic-macro-play 0)
  ;;ds dynamic-macro-record-stop
  ;;dst (dynamic-macro-record-stop-truncate 1)


  cw (caps-word-custom 1000
    (q b f d w p l o u j x n s t c y m h a e i k g v)
    (lsft -)
  )



  ;; easier (); roll
  semi? (switch
    ((and
      (or
      (key-history ] 1)
      (key-history . 1) 
      (key-history 0 1)) 
    (key-timing 1 less-than 120))) _ break
    () (tap-hold-press 110 110 ; rsft) break)


  ;; easier ); roll
   close (switch
     (rctl) (macro S-((unmod (rctl) 0)) (unmod (rctl) ;)) break
     () @semi? break
   )


  rp? (switch
    ((and
    (key-history 9 1) 
    (key-timing 1 less-than 120))) (macro S-0) break
    () (tap-hold-press 110 110 S-0 rctl) break
  )

  per? (switch
    ((key-timing 1 less-than 120)) _ break ()
    (tap-hold-press 110 110 . lctl) break
  )


  ;; easier `, `
  sc (switch
    (lsft) (multi (release-key lsft) (macro , spc)) break
    () spc break
  )









  ;; magic keys:
  ;; a -> o
  ;; o -> a
  ;; e -> u
  ;; u -> e
  ;; i -> x
  ;;
  ;; c -> y
  ;; p -> y

  ;; ( -> "
  ;; ! -> [
  ;; = -> >
  ;; - -> >
  ;; { -> };
  ;; < -> =
  ;; > -> >
  ;; # -> include
  ;; \ -> n

  ;; TODO: 
  ;; us -> e
  ;; st -> d
  ;;  ! -> =
  ;; degrees -> sym
  ;; euro -> sym
  ;; pound -> sym



  magic (switch

  ;; // query
    ((key-history q 1)) (macro u) break

  ;; // #include
    ((key-history 3 1)) (macro i n c l u d e) break

  ;; // sfb
    ((key-history o 1)) (macro a) break
    ((key-history a 1)) (macro o) break
    ((key-history u 1)) (macro e) break
    ((key-history e 1)) (macro u) break
    ((key-history i 1)) (macro x) break

  ;; // sfs
    ;;((and(key-history e 2) (key-history s 1))) (macro e) break
    ((and(key-history e 2) (key-history y 1))) (macro e) break
    ((and(key-history e 2) (key-history v 1))) (macro e) break

    ((and(key-history n 2) (key-history i 1))) (macro x) break
  ;; // sfb
    ((key-history w 1)) (macro y) break
    ((key-history c 1)) (macro y) break
    ((key-history p 1)) (macro y) break

    ((key-history j 1)) (macro u s t) break

    ((key-history \ 1)) (macro n) break


    ;; non-sfb for !=
    ;;((and(key-history spc 2) (key-history 1 1))) (macro =) break

    ;; non-sfb for vec![]
    ;;((and(key-history c 2) (key-history 1 1))) (macro [) break

    ((key-history 1 1)) (macro [) break

  ;; // non-sfb for >>
    ((key-history . 1)) (macro S-.) break
  ;; // non-sfb for <=
    ((key-history , 1)) (macro =) break
  ;; // non-sfb ; for ]
    ((key-history ] 1)) (macro ;) break
  ;; // auto ; for {}
    ((key-history { 1)) (macro S-] ; left left) break


    ((key-history x 1)) (macro p k g s) break


    ((key-history 7 1)) (macro S-7) break
    ((key-history ; 1)) (macro S-;) break
    ((key-history = 1)) (macro S-.) break
    ((key-history - 1)) (macro S-.) break
    ((key-history 9 1)) (macro S-') break
    ((key-history 0 1)) (macro S-0) break
    () rpt break
  )

  ;; // normal rpt except for syms
  rpeat (switch
  ;; TODO tr -> ue
    ((key-history , 1)) (macro S-,) break
    ((key-history \ 1)) (macro S-\) break
    ((key-history ; 1)) (macro S-;) break
    ((key-history 7 1)) (macro S-7) break
    ((key-history 9 1)) (macro S-9) break
    ((key-history 0 1)) (macro S-0) break
    () rpt break
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
