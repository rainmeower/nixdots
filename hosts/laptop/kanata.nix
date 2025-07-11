{ pkgs, ... }: {
  services.kanata = {
    enable = true;
    package = pkgs.kanata-with-cmd;
    keyboards = {
      lily58 = {
        port = 10000;

        extraDefCfg = ''
          process-unmapped-keys yes
          concurrent-tap-hold yes
          chords-v2-min-idle 40
          danger-enable-cmd yes
        '';
#TODO up = z
        config = /* scheme */ ''
(defsrc)

(deflayermap (base)
 ;; define home row mods (they act as typing-layer triggers, too )
 e (t! homerowmod $tot 110 t lsft)
 o (t! homerowmod $tot 110 a rsft)
 r (t! homerowmod $tot 110 c lctl)
 i (t! homerowmod $tot 110 h rctl)
 q (t! homerowmodfiltered $tot 200 n lsft (n))
 [ (t! homerowmod $tot 150 i rsft)
 w (t! homerowmod $tot 120 s (layer-while-held syms))
 p (t! homerowmod $tot 120 e (layer-while-held syms))
 ;; define each letter as typing-layer trigger
 
 g (multi v @.tp)
 u (multi m @.tp)
 f (multi g @.tp)
 7 (multi ' @.tp)
 8 (multi l @.tp)
 9 (multi o @.tp)
 0 (multi u @.tp)
 c (multi r @.tp)
 ent (multi z @.tp)
 = (multi x @.tp)
 - (multi j @.tp)
 1 (multi b @.tp)
 2 (multi f @.tp)
 3 (multi d @.tp)
 4 (multi w @.tp)
 5 (multi p @.tp)
 t (multi y @.tp)
 d (multi k @.tp)
 s (multi . @.tp)
 a (multi , @.tp)
 j (multi / @.tp)
 k (multi S-- @.tp)
 l (multi S-9 @.tp)
 ; (multi S-0 @.tp)
 ' (multi ; @.tp)
 caps (multi q @.tp)


tab -
` S-;
spc ent
m ent
, spc
. bspc

f3 S-[
f4 S-[
f10 S-]


;; ent @rpeat
x (tap-hold-press 120 120 esc (multi (layer-while-held sup) lmet))
v @magic
] @rpeat

;;, (tap-hold-press 110 110 , lsft)
;;. @per?


)


(deflayermap over


)

(deflayermap syms
esc f1
1 ,
2 .
3 ` 
4 `
8 left
9 down
0 up
- right
q 1
w 2
e 3
r 4
i 7
o 8
p 9
[ 0
ent rpt
a 0
s 9
d 8
f 5
k 6
l 3
; 2
' 1
c @cw

)

(deflayermap sup
;; rsft rsft
;; - lctl
;; b b
;; f f
;; d d
;; w w
;; n n
;; s s
;; t t
;; c c
;; h h
;; a a
;; e e
;; i i


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
 1 (multi (unshift b) (layer-switch base))
 2 (multi (unshift f) (layer-switch base))
 3 (multi (unshift d) (layer-switch base))
 4 (multi (unshift w) (layer-switch base))
 5 (multi (unshift p) (layer-switch base))
 u (multi (unshift m) (layer-switch base))
 i (multi (unshift h) (layer-switch base))
 r (multi (unshift c) (layer-switch base))
 t (multi (unshift y) (layer-switch base))
 k (multi S-- (layer-switch base))
 j (multi / (layer-switch base))
 l (multi S-9 (layer-switch base))
 ; (multi S-0 (layer-switch base))
 ' (multi ; (layer-switch base))
 a (multi (unshift ,) (layer-switch base))
 s (multi (unshift .) (layer-switch base))
 d (multi (unshift k) (layer-switch base))
 f (multi (unshift g) (layer-switch base))
 g (multi (unshift v) (layer-switch base))
 m (multi (unshift ent) (layer-switch base))
 , spc
 . bspc
 ent (multi z (layer-switch base))
 c (multi (unshift r) (layer-switch base))
 caps (multi (unshift q) (layer-switch base))
 spc (unshift ent)

 o (multi (t! homerowmod $tot 110 (unshift a) rsft) (layer-switch base))
 e (multi (t! homerowmod $tot 110 (unshift t) lsft) (layer-switch base))
 w (t! homerowmod $tot 120 (unshift s) (layer-while-held syms))
 p (t! homerowmod $tot 120 (unshift e) (layer-while-held syms))
 [ (multi (t! homerowmod $tot 140 (unshift i) rsft) (layer-switch base))
 q (multi (t! homerowmod $tot 140 (unshift n) lsft) (layer-switch base))


tab -
` S-;

f3 S-[
f4 S-[
9 S-]


;; ent @rpeat
x (tap-hold-press 120 120 esc (multi (layer-while-held sup) lmet))
v @magic
ralt spc
rctl bspc
)






(defchordsv2

  (1 2    ) S-6 15 all-released (typing over sup)
  (  2 3  ) S-7 15 all-released (typing over sup)
  (  2   4) `   15 all-released (typing over sup)
  (    3 4) S-8 15 all-released (typing over sup)

  (8 9    ) S-' 15 all-released (typing over sup)
  (  9 0  ) S-\ 15 all-released (typing over sup)
  (    0 -) S-1 15 all-released (typing over sup)

  (q w    ) S-, 15 all-released (typing over sup)
  (  w e  ) = 15 all-released (typing over sup)
  (  w   r) S-` 15 all-released (typing over sup)
  (    e r) [   15 all-released (typing over sup)

  (i o    ) ]   15 all-released (typing over sup)
  (i   p  ) del 15 all-released (typing over sup)
  (  o p  ) +   15 all-released (typing over sup)
  (    p [) S-. 15 all-released (typing over sup)

  (a s    ) \   15 all-released (typing over sup)
  (  s d  ) S-2 15 all-released (typing over sup)
  (    d f) S-4 15 all-released (typing over sup)

  (k l    ) S-3 15 all-released (typing over sup)
  (k   ;  ) S-5 15 all-released (typing over sup)
  (  l ;  ) S-/ 15 all-released (typing over sup)
  (    ; ') S-2 15 all-released (typing over sup)
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
