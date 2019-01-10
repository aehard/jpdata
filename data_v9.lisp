
;;; Early Middle Japanese source data for research project at Dalarna University (Hård
;;; 2019). 
;;;
;;; AUTHOR: A. Hard
;;; DATE:   2018-12-16
;;;
;;; References in page tags are from the following:
;;;
;;; MAKURA NO SOSHI:
;;; Sei Shonagon. 2001. "Makura no Sôshi (Kadokawa Sofia Bunko: Biginaazu Kurashikkusu)."
;;; With translation into modern Japanese by
;;;
;;; TAKETORIMONOGATARI:
;;; Anonymous. 2001. "Taketorimonogatari (Zen) (Kadokawa Sofia Bunko: Beginaazu
;;; Kurashikkusu)." With translation into modern Japanese by Takeda, T.: Kadokawa Shoten.
;;;
;;; GENJIMONOGATARI
;;; Murasaki Shikibu. 1999. "Genji Monogatari." Romanization, translation into modern
;;; Japanese by anonymous. URL: http://jti.lib.virginia.edu/japanese/genji/index.html.
;;; Last accessed 2018-12-04. 


(defstruct dp
  source_text  ;; Source text from which sample was collected.
               ;; tm = taketorimonigatari, g = genjimonogatari, ms0 = makura no sôshi

  page         ;; Page in source text at which sample starts

  form         ;; -ki or -ker-

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  sentence     ;; The actual sample (usually not complete sentences)

  index        ;; (another pointer)
  
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  gramasp      ;; COOCCURRING_SUFFIX. Values: nil (= nothing), tar (= suffixes -tar-, -er-),
               ;; tn (= suffix -t- or -n-), prosp (= VERB-am-u-to s- construction)

  fsubject     ;; FIRST_PERSON_SUBJECT. Values: nil (= false), t (= true)

  persexp      ;; PERSONAL_EXPERIENCE. Values: nil (= false), t (= true)
  
  syntcon      ;; SYNTACTIC_CONTEXT. Values: final, kakari1 (= kakarimusubi 1),
               ;; kakari2 (= kakarimusubi 2), ba = (converb in -ba), do (= converb in -do),
               ;; srel (= subject relativization), orel (= non-subject relativization),
               ;; cljunc (= clausal juncture), nominalization
  
  embedd       ;; EMBEDDING. Values: perception_embedding, cognitive_embedding, other.
  
  assim        ;; IGNORE. NOT USED IN FINAL WORK
  
  lextype      ;; LEXICAL_TYPE. Values adjective, tv (= transitive verb),
               ;; iv (= intransitive verb)
  
  bounded      ;; BOUNDED. Values: bnd (= true), open (= false)
  
  shift        ;; PRESENT REFERENCE. nil (= false), t (= true)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  verb_id      ;; Lexical identity of the verb bearing -ki or -ker-
  )

(setq *datahash* (make-hash-table))
(setq *counter*  0)

(defun setdp (n)
  (setf (gethash *counter* *datahash* nil) n)
  (incf *counter*))

(setdp
(make-dp
  :source_text 'tm
  :page 15
  :form 'ker
  
  :sentence "ima-fa mukasi taketori-no okina-to if-u mono ar-i-ker-i"
  :index 0

  :gramasp nil
  :fsubject nil
  :persexp nil
  :assim t
  :syntcon 'final
  :embedd nil
  :lextype 'iv
  :bounded 'open
  :shift nil
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 15
  :form 'ker
  
  :sentence "noyama-ni mazir-i-te take-wo tor-i-tutu yorodu-no koto-ni tukaf-i-ker-i"
  :index 0

  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'habitual
  :shift nil

  :verb_id "tukaf-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 15 
  :form 'ker
  
  :sentence "na-woba sanuki-no-miyatuko-to-namu if-i-ker-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'habitual
  :shift nil

  ;; Lexical information
  :verb_id "if-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 15
  :form 'ker
  
  :sentence "sono take-no naka-ni moto fikar-u take-namu fito-sudi ar-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 21
  :form 'ker
  
  :sentence "faradatasi-ki koto-mo nagusam-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'habitual
  :shift nil

  ;; Lexical information
  :verb_id "nagusam-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 21
  :form 'ker
  
  :sentence "ikifofimau-no mono-ni nar-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 21
  :form 'ker
  
  :sentence "yorodu-no asobi-wo-zo s-i-ker-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "s-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 236
  :form 'ki

  ;; subject is Kaguyahime
  :sentence "ano kak-i-ok-i-si fumi-wo yom-i-te kik-ase-ker-edo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "kak-i-ok-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 236
  :form 'ker
  
  :sentence "ano kak-i-ok-i-si fumi-wo yom-i-te kik-ase-ker-edo"
  :index 1

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "kik-ase-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 236
  :form 'ker
  
  :sentence "firoge-te go-ran-z-i-te ito afare-gar-ase-tamaf-i-te mono-mo kikosimes-azu ofon-asobi-nado-mo na-kar-i-ker-i" 
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'adjective
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "na-kar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 237
  :form 'ker
  
  :sentence "sono yosi-uketamafar-i-te tufamono-domo-mo amata gu-s-i-te yama-fe nobor-i-ker-u-yori-namu sono yama-wo _ fuzi-no yama _-to-fa naduke-ker-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'other
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "nobor-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 237
  :form 'ker

  :sentence "sono yosi-uketamafar-i-te tufamono-domo-mo amata gu-s-i-te yama-fe nobor-i-ker-u-yori-namu sono yama-wo _ fuzi-no yama _-to-fa naduke-ker-u"
  :index 1

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "naduke-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 232
  :form 'ker
  
  :sentence "kono ki-nu ki-t-uru fito-fa monoomofi nakunar-i-n-i-ker-eba kuruma-ni nor-i-te fyaku-nin-bakari tennin gu-s-i-te nobor-i-n-u"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "nakunar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 231
  :form 'ki
  
  :sentence "kokoroduyo-ku uketamafar-azu nar-i-n-i-si koto namage-nar-u mono-ni obosimes-i-todome-rare-n-uru-namu"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject t
  :persexp t
  :syntcon 'adn_orel
  :embedd 'cognitive_embedding
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "uketamafar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 227
  :form 'ker
  
  :sentence "mono fito-koto if-i-ok-ube-ki koto ar-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 216
  :form 'ki
  
  :sentence "sono naka-ni wau-to obos-i-si fito"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "obos-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 217
  :form 'ki
  
  :sentence "katatoki-no fodo-tote kudas-i-si-wo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'wo
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "kudas-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 217
  :form 'ker
  
  :sentence "kaguyafime-fa tumi-wo tukur-i-tamafer-i-ker-eba"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "tukur-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 211
  :form 'ker
  
  :sentence "utito nar-u fito-no kokoro-domo mono-ni osof-ar-uru yau-nite af-i-tatakaf-am-u kokoro-mo na-kar-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'adjective
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "nakar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 207
  :form 'ker
  
  :sentence "imasugar-i-t-uru kokoro-zasi-domo-wo omof-i-mo sir-ade makar-i-n-amuz-uru koto-no kutiwosi-u faber-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "faber-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 207
  :form 'ker
  
  :sentence "nagaki tigiri-no na-kar-i-ker-eba"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'adjective
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "na-kar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 201
  :form 'ker
  
  :sentence "ife-no fitobito ofo-kar-i-ker-u-ni af-ase-te"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'adjective
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "ofo-kar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 196
  :form 'ker
  
  :sentence "kono koto-wo nagek-u-ni fige-mo siro-ku kosi-mo kagamar-i me-mo tadare-n-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "tadare-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 196
  :form 'ker
  
  :sentence "okina kotosi-fa isodi-bakari nar-i-ker-edomo monoomofi-ni-fa katatoki-ni-namu oi-ni nar-i-n-i-ker-u-to mi-yu"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 196
  :form 'ker
  
  :sentence "okina kotosi-fa isodi-bakari nar-i-ker-edomo monoomofi-ni-fa katatoki-ni-namu oi-ni nar-i-n-i-ker-u-to mi-yu"
  :index 1

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd 'perception_embedding
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 191
  :form 'ki
  
  :sentence "sakizaki-mo maus-am-u-to omof-i-sika-domo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift 'present_relevance

  ;; Lexical information
  :verb_id "omof-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 191
  :form 'ker
  
  :sentence "sore-wo-namu mukasi-no tigiri ar-i-ker-u-ni yori-namu kono sekai-ni-fa maude-k-i-tar-i-ker-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'other
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 191
  :form 'ker
  
  :sentence "sore-wo-namu mukasi-no tigiri ar-i-ker-u-ni yori-namu kono sekai-ni-fa maude-k-i-tar-i-ker-u"
  :index 1

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "maude-k-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 191
  :form 'ker
  
  :sentence "ima-fa kafer-ube-ki-ni nar-i-n-i-ker-eba kono tuki-no toti-ni kano moto-no kuni-ori mukafe-ni fitobito maude-ko-muz-u"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 191
  :form 'ki
  
  :sentence "take-no naka-yori mituke-kikoye-tar-i-sika-do natane-no ofoki-sa ofase-si-wo wa-ga take tati-narab-u-made yasinaf-i-tatematur-u waga-ko-wo nanibito-ka mukafe-kikoye-m-u"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject t
  :persexp t
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "mituke-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 191
  :form 'ki
  
  :sentence "take-no naka-yori mituke-kikoye-tar-i-sika-do natane-no ofoki-sa ofase-si-wo wa-ga take tat-i-narab-u-made yasinaf-i-tatematur-u waga-ko-wo nanibito-ka mukafe-kikoye-m-u"
  :index 1

    ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'wo
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "ofase-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 191
  :form 'ki
  
  :sentence "katatoki-no afida-tote kano kuni-yori maude-ko-sika-domo ka-ku kono kuni-ni-fa amata-no tosi-wo fe-n-uru-ni-namu ar-i-ker-u" 
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "maude-k-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 191
  :form 'ker
  
  :sentence "katatoki-no afida-tote kano kuni-yori maude-ko-sika-domo ka-ku kono kuni-ni-fa amata-no tosi-wo fe-n-uru-ni-namu ar-i-ker-u"
  :index 1

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 184
  :form 'ker
  
  :sentence "aru fito-no _ tuki-no kafo mi-ru-fa im-u koto _-to sei-s-i-ker-edomo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "sei-s-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 179
  :form 'ker
  
  :sentence "mikado kaguyafime-wo todome-te kafer-i-tamaf-am-u koto-wo ak-azu kutiwosi-ku obos-i-ker-edo tamasifi-wo todome-tar-u kokoti s-i-te-namu kafer-ase-tamaf-i-ker-u"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "obos-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 179
  :form 'ker
  
  :sentence "mikado kaguyafime-wo todome-te kafer-i-tamaf-am-u koto-wo ak-azu kutiwosi-ku obos-i-ker-edo tamasifi-wo todome-tar-u kokoti s-i-te-namu kafer-ase-tamaf-i-ker-u"
  :index 1

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded "kafer-"
  :shift nil

  ;; Lexical information
  :verb_id "kafer-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 179
  :form 'ker
  
  :sentence "mikokoro-fa sara-ni tat-i-kafer-ube-ku-mo obos-are-zar-i-ker-edo saritote yo-wo akas-i-tamaf-ube-ki-ni ar-an-eba kafer-ase-tamaf-i-n-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "obos-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 179
  :form 'ker
  
  :sentence "tune-ni tukaumatur-u fito-wo mi-tamaf-u-ni kaguyafime-no katafara-ni yor-ube-ku-dani ar-azar-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 179
  :form 'ker

  :sentence "koto fito-yori-fa keura-nar-i-to obos-i-ker-u fito-no kare-ni obos-i-afas-ureba fito-ni-mo ar-azu kaguyafime-nomi mikokoro-ni kakar-i-te tada fitori-zumi s-i-tamaf-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "obos-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 175
  :form 'ker
  
  :sentence "geni tada fito-ni-fa ar-azar-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim nil
  :lextype 'iv
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm 
  :page 132
  :form 'ki
  
  :sentence "tukafas-i-si wotoko-domo mawir-i-te maus-u yau"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "tukafas-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 132
  :form 'ki
  
  :sentence "tatu-no kubi-no tama-wo ye-tor-azar-i-sika-ba-namu tono-fe-mo ye-mawir-azar-i-si"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "ye-tor-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 132
  :form 'ki
  
  :sentence "tatu-no kubi-no tama-wo ye-tor-azar-i-sika-ba-namu tono-fe-mo ye-mawir-azar-i-si"
  :index 1

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open  
  :shift nil

  ;; Lexical information
  :verb_id "ye-mawir-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 132
  :form 'ki
  
  :sentence "tama-no tor-i-gata-kar-i-si koto-wo sir-i-tamafer-eba-namu kandau ar-azi-tote mawir-i-t-uru"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'adn_orel
  :embedd 'cognitive_embedding
  :assim t
  :lextype 'adjective
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "tor-i-gata-kar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 132
  :form 'ker
  
  :sentence "tatu-fa kami-no rui-ni-koso ar-i-ker-e"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_2
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 132
  :form 'ker
  
  :sentence "sore-ga tama-wo tor-am-u-tote sokora-no fitobito-no gai-se-rare-m-u-to s-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp 'prospective
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded "gai-se-rare-"
  :shift t

  ;; Lexical information
  :verb_id "gai-s-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 132
  :form 'ker
  
  :sentence "yo-ku torafe-zu nar-i-n-i-ker-i"
  :index 0

    ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded "torafe-"
  :shift t

  ;; Lexical information
  :verb_id "torafe-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 132
  :form 'ker
  
  :sentence "kaguyafime tefu ofo-nusubito-no yatu-ga fito-wo koros-am-u-to s-uru nar-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp 'prospective
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim nil
  :lextype 'tv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "koros-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 132
  :form 'ker
  
  :sentence "ife-ni sukosi nokor-i-tar-i-ker-u mono-domo-fa tatu-no tama-wo tor-an-u mono-domo-ni tab-i-t-u"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject  nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "nokor-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 133
  :form 'ki
  
  :sentence "kore-wo kik-i-te fanare-tamaf-i-si moto-no ufe-fa fara-wo kir-i-te waraf-i-tamaf-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "fanare-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 133
  :form 'ki
  
  :sentence "ito-wo fuk-ase tukur-i-si ya-fa"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "tukur-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 133
  :form 'ker
  
  :sentence "tobi karasu-no su-ni mina kuf-i-mote-in-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "kuf-i-mote-in-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 47
  :form 'ki
  
  :sentence "ituka wakayaka-nar-u fito-nado sa-fa s-i-tar-i-si"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim nil
  :lextype 'tv
  :bounded 'habitual
  :shift 'present_reference

  ;; Lexical information
  :verb_id "s-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 48
  :form 'ki
  
  :sentence "makoto-ni yo-ki fito-no s-i-tamaf-i-si-wo mi-sika-ba"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'nominalization
  :embedd 'perception_embedding
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "s-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 48
  :form 'ki
  
  :sentence "makoto-ni yo-ki fito-no s-i-tamaf-i-si-wo mi-sika-ba"
  :index 1

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "mi-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 48
  :form 'ki
  
  :sentence "sikibu-no taifu-nado if-i-si-ga se-si nar-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'habitual
  :shift nil

  ;; Lexical information
  :verb_id "if-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 48
  :form 'ki
  
  :sentence "sikibu-no taifu-nado if-i-si-ga se-si nar-i"
  :index 1

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'assertive
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "s-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 52
  :form 'ki

  ;; Sei Shonagon's reminiscences are fairly general in tone. 
  :sentence "sugi-n-i-si kata kofisi-ki mono"
  :index nil

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "sugi-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 52
  :form 'ker
  
  :sentence "futaawi , ebizome-nado-no saide-no osi-fes-are-te sausi-no naka-nado-ni ar-i-ker-u mi-tuke-tar-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'nominalization
  :embedd 'perception_embedding
  :assim nil
  :lextype 'iv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 52
  :form 'ki
  
  :sentence "mata wori-kara afare-nar-i-si fito-no fumi"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 60
  :form 'ker
  
  :sentence "yaukifi-no mikado-no on-tukafi-ni af-i-te nak-i-ker-u kafo-ni nise-te"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "nak-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 73
  :form 'ker
  
  :sentence "oni-no um-i-tar-i-ker-eba"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "um-" 
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 73
  :form 'ker
  
  :sentence "_ to if-i-ok-i-te nige-te in-i-ker-u-mo sir-azu" 
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'nominalization
  :embedd 'cognitive_embedding
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "in-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 104
  :form 'ki
  
  :sentence "fito-yo-fa seme-tate-rare-te suzuro-nar-u tokoro-dokoro-ni-namu wi-te arik-i-tatematur-i-si"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "arik-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 104
  :form 'ki
  
  :sentence "sate nado tomokaku-mo on-gaferi-fa na-kute suzuro-nar-u me-no fasi-woba tutum-i-te tamafer-i-si-zo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "tamafer-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 104
  :form 'ker
  
  :sentence "isasaka kokoro-mo e-zar-i-ker-u-to mi-ru-ga niku-kereba"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd 'perception_embedding
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "e-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 100
  :form 'ker
  
  :sentence "kokoro tokimeki s-i-t-uru sama-ni-mo ar-azar-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim nil
  :lextype 'copula
  :bounded 'open
  :shift 'present_reference ;; fuck CJ

  ;; Lexical information
  :verb_id "-ni ar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 97
  :form 'ker
  
  :sentence "koko-fe-to-simo omof-azar-i-ker-u fito-mo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "omof-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 90
  :form 'ki
  
  :sentence "iroiro-ni midare-sak-i-tar-i-si fana-no kata-mo na-ku tir-i-tar-u-ni"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp t
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "midare-sak-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 87
  :form 'ki
  
  :sentence "afugi , tataugami-nado yobe makuragami-ni ok-i-sika-do onozu-kara fik-are-tir-i-n-i-ker-u-wo motom-uru-ni"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "ok-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 87
  :form 'ki
  
  :sentence "afugi , tataugami-nado yobe makuragami-ni ok-i-sika-do onodu-kara fik-are-tir-i-n-i-ker-u-wo motom-uru-ni"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "fik-are-tir-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 223
  :form 'ki
  
  :sentence "yo-u kakus-i-ok-i-tar-i-to omof-i-si-wo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'wo
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "omof-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 223
  :form 'ker
  
  :sentence "kokoro-yori hoka-ni-koso mori-ide-n-i-ker-e"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_2 
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "mori-ide-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 223
  :form 'ker
  
  :sentence "miya-no omafe-ni uti-no otodo-no tatematur-i-tamafer-i-ker-u-wo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'wo
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "tatematur-"
  )
)

(setdp
 (make-dp
  ;; ASSUMING SEI SHONAGON WAS PRESENT
  :source_text 'ms0 
  :page 223
  :form 'ki
  
  :sentence "_-nado notamaf-ase-si-wo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'wo
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "notamaf-"
  )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 223
  :form 'ki
  
  :sentence "_-to maus-i-sika-ba"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "maus-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 223
  :form 'ki
  
  :sentence "_-tote tamaf-ase-tar-i-si-wo"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp t
  :syntcon 'wo
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "tamaf-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 223
  :form 'ki
  
  :sentence "tuki se-zu ofo-kar-u kami-wo kak-i-tukus-am-u-to se-si-ni"
  :index 0

  ;; Variables for regression
  :gramasp 'prospective
  :fsubject t
  :persexp t
  :syntcon 'ni
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "kak-i-tukus-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 223
  :form 'ki
  
  :sentence "fito naminami nar-ube-ki mimi-wo-mo kik-ube-ki mono-ka-fa-to omof-i-si-ni"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'ni
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "omof-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 224
  :form 'ki
  
  :sentence "satyuuzyau , mada ise-no kami-to kikoye-si toki"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'auxnoun
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "kikoye-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 224
  :form 'ki
  
  :sentence "sato-ni ofas-i-tar-i-si-ni"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp t
  :syntcon 'ni
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "ofas-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 224
  :form 'ki
  
  :sentence "fasi-no kata nar-i-si tatami-wo sas-i-ide-si mono-fa"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 224
  :form 'ker
  
  :sentence "kono sausi , nor-i-te ide-n-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "ide-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 224
  :form 'ki
  
  :sentence "madof-i-tor-i-ire-sika-do" 
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "madof-i-tor-i-ire-"
  )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 224
  :form 'ki
  
  :sentence "ito fisasi-ku ar-i-te-zo kafer-i-tar-i-si"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp t
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "kafer-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 205
  :form 'ki
  
  :sentence "ito fakana-ki ife-ni tomar-i-tar-i-si-ni"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject t
  :persexp t
  :syntcon 'ni
  :embedd nil
  :assim t
  :lextype 'iv 
  :bounded 'open
  :shift nil ;; useless shit

  ;; Lexical information
  :verb_id "tomar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 205
  :form 'ki
  
  :sentence "tuki-no mado-yori mor-i-tar-i-si-ni"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp t
  :syntcon 'ni
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "mor-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 205
  :form 'ki
  
  :sentence "fito-no fus-i-tar-i-si-domo-ga kinu-no ufe-ni"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp t
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "fus-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 205
  :form 'ki
  
  :sentence "siro-ute utur-i nado s-i-tar-i-si-koso"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp t
  :syntcon 'nominalization
  :embedd 'perception_embedding
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "utur-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 205
  :form 'ki
  
  :sentence "imizi-u afare-to oboye-sika"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'kakari_2
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "oboye-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 204
  :form 'ki
  
  :sentence "yomugi-no , kuruma-ni os-i-fisig-are-tar-i-ker-u-ga"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp t
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "os-i-fisig-are-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 201
  :form 'ker
  
  :sentence "yoru-fa kaze-no sawagi-ni ne-rare-zar-i-ker-eba"
  :index 0

    ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "ne-rare-"
 )
)

(setdp
 (make-dp
  ;; I DO NOT TRUST THE QUALITY OF THIS!
  :source_text 'ms0
  :page 201
  :form 'ker
  
  :sentence "suwe-mo wobana-no-yau-nite , take-bakari nar-i-ker-eba"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 191
  :form 'ker
  
  :sentence "kakar-u fito-koso-fa yo-ni ofasimas-i-ker-e-to , odorok-ar-uru-made-zo"
  :index 0

  ;; Variables for regression
  :gramasp nil 
  :fsubject nil
  :persexp t
  :syntcon 'kakari_2
  :embedd 'cognitive_embedding
  :assim nil
  :lextype 'iv
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "ofasimas-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 191
  :form 'ker
  
  :sentence "wizar-i-kakur-uru-ya oso-ki-to age-tiras-i-tar-u-ni , yuki fur-i-n-i-ker-i"
  :index 0

    ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim nil
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "fur-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 174
  :form 'ker
  
  :sentence "ito tisa-ki tiri-no ar-i-ker-u-wo mezato-ni mituke-te"  
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'nominalization
  :embedd 'perception_embedding
  :assim nil
  :lextype 'iv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 159
  :form 'ker
  
  :sentence "tou-no ben-no , siki-ni mawir-i-tamaf-i-te monogatari-nado s-i-tamaf-i-si-ni"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t ;;assumption
  :syntcon 'ni
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "s-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 160
  :form 'ki
  
  :sentence "yo-wo tofos-i-te mukasimonogatari-mo kikoye-akas-am-u-to se-si-wo"
  :index 0

  ;; Variables for regression
  :gramasp 'prospective
  :fsubject t
  :persexp t
  :syntcon 'wo
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "kikoye-"
 )
)

(setdp
 (make-dp
  ;; THOROUGHLY SUSPECT
  :source_text 'ms0
  :page 160
  :form 'ker
  
  :sentence "ito yobuka-ku faber-i-ker-u tori-no kowe-fa"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "faber-"
 )
)

(setdp
 (make-dp
  ;; I ONCE AGAIN HAVE NO IDEA
  :source_text 'ms0
  :page 160
  :form 'ki
  
  :sentence "_-to ar-i-si fumi-domo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 166
  :form 'ker
  
  :sentence "kono wori-fa samo if-i-t-ube-kar-i-ker-i-to-namu omof-u-wo" 
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd 'cognitive_embedding
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift 'present_reference

  ;; Lexical information
  :verb_id "if-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 160
  :form 'ki
  
  :sentence "imizi-u nuka-wo safe tuk-i-te tor-i-tamaf-i-te-ki" 
  :index 0
 
  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "tor-"
 )
)

(setdp
 (make-dp
  ;; SEEN BY SEI SHONAGON?
  :source_text 'ms0
  :page 133
  :form 'ker
  
  :sentence "sebasi-tote , kata-fe-fa on-okuri s-i-te mina kafer-i-n-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "kafer-"
 )
 )

(setdp
(make-dp
  :source_text 'ms0
  :page 127
  :form 'ki
  
  :sentence "saredo , uta yom-u-to if-are-si suwezuwe-fa"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'adn_srel ;; based on mj transl
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "if-are-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 118
  :form 'ki
  
  :sentence "tokorose-ku-ya ar-am-u-to omof-i-si-ni"
  :index 0
  
    ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'ni
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "omof-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 118
  :form 'ker
  
  :sentence "isasaka uti-wasure-te ne-ir-i-n-i-ker-u-ni"
  :index 0
 
  ;; Variables for regression
  :gramasp 'tn
  :fsubject t
  :persexp t
  :syntcon 'ni 
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "ne-ir-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 118
  :form 'ker
  
  :sentence "uti-mi-age-tar-eba , firu-ni nar-i-n-i-ker-u , imizi-u asamasi"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'nominalization
  :embedd 'cognitive_embedding ;; maybe
  :assim nil
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 116
  :form 'ker
  
  :sentence "kik-i-wi-tar-i-ker-u-wo sir-ade , fito-no ufe if-i-tar-u"
  :index 0
  
  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp nil
  :syntcon 'nominalization
  :embedd  'cognitive_embedding
  :assim nil
  :lextype 'tv
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "kik-i-wi-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 113
  :form 'ki
  
  :sentence "monouge-ni tor-i-yose-te nuf-i-tamaf-i-si-wo" 
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'nominalization
  :embedd 'perception_embedding
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "nuf-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 113
  :form 'ki
  
  :sentence "mi-yar-i-te wi-tar-i-si-koso"
  :index 0

  ;; Variables for regression
  :gramasp 'tar
  :fsubject t
  :persexp t
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open 
  :shift nil

  ;; Lexical information
  :verb_id "mi-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 113
  :form 'ki
  
  :sentence "wokasi-kar-i-sika"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'kakari_2
  :embedd nil
  :assim t
  :lextype 'adjective
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "wokasi-kar-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 109
  :form 'si
  
  :sentence "notamaf-ase-tar-u-fa , nafo ito medeta-si-to-koso oboye-sika"
  :index 0
  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'kakari_2
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "oboye-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 109
  :form 'ki
  
  :sentence "kotono-no e-sase-tamafer-i-si"
  :index 0
  
    ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'final 
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "e-sase-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 109
  :form 'ker
  
  :sentence "kono on-fue-no na-wo , soudu-no kimi-mo e-sir-i-tamaf-azar-i-ker-eba"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "e-sir-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 109
  :form 'ki
  
  :sentence "kore-fa , siki-no mizausi-ni ofasima-i-si fodo-no koto na-mer-i"
  :index 0
 
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "ofasimas-" ;; + onbin
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 109
  :form 'ki
  
  :sentence "suirou , kosuirou , uda-no fofusi , kugiuti , fa-futatu , nanikure-nado ofo-ku kik-i-sika-do"
  :index 0
 
  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "kik-"
 )
)

(setdp
(make-dp
  :source_text 'ms0
  :page 109
  :form 'ker
  
  :sentence "wasure-n-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject t
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "wasure-"
 )
)

(setdp
(make-dp
  :source_text'tm
  :page 104
  :form 'ker 

  ;; I assume Old Man believes the skin is real
  :sentence "kono kafa-fa , morokosi-ni-mo na-kar-i-ker-u-wo"
  :index 0 
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'adjective
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "na-kar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 105
  :form 'ker
  
  :sentence "sareba-koso kotomono-no kafa nar-i-ker-e"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'kakari_2
  :embedd nil
  :assim nil
  :lextype 'copula
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 105
  :form 'ker
  
  :sentence "kano yom-i-tamaf-i-ker-u uta-no kafesi , foko-ni ire-te kafes-u"
  :index 0
 
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "yom-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 105
  :form 'ker
  
  :sentence "_-to-zo ar-i-ker-u" 
  :index 0
 
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "-to ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 105
  :form 'ker
  
  :sentence "sareba kafer-i-imas-i-n-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "kafer-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 105
  :form 'ki
  
  :sentence "kafa-fa fi-ni kube-te yak-i-tar-i-sika-ba"
  :index 0
  
  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp t
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "yak-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 105
  :form 'ki
  
  :sentence "meramera-to yake-n-i-sika-ba"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "yake-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 105
  :form 'ker
  
  :sentence "toge na-ki mono-woba _ afenasi _-to if-i-ker-u"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'habitual
  :shift 'present_reference

  ;; Lexical information
  :verb_id "if-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 95
  :form 'ker
  
  :sentence "ube , kaguyafime , konomasi-gar-i-tamaf-u-ni-koso ar-i-ker-e"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil 
  :syntcon 'kakari_2
  :embedd nil
  :assim nil
  :lextype 'iv
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 90
  :form 'ker
  
  :sentence "kano morokosibune k-i-ker-i"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "k-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 90
  :form 'ker
  
  :sentence "kono kafa-fa , tayasu-ku na-ki mono nar-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil 
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "nar-"
  )
)

(setdp
(make-dp
  :source_text 'tm
  :page 90
  :form 'ker
  
  :sentence "mukasi , kasiko-ki tendiku-no fiziri , kono kuni-ni mote-watar-i-te faber-i-ker-u"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "mote-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 90
  :form 'ki
  
  :sentence "atafi-no kane sukuna-si-to , kokusi , tukafi-ni maus-i-sika-ba"
  :index 0
 
    ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "maus-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 87
  :form 'ker
  
  :sentence "udaizin abe-no miusi-fa , takarayutaka-ni ife firo-ki fito-nite ofas-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "-nite ofas-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 87
  :form 'ker
  
  :sentence "sono tosi k-i-tar-i-ker-u morokosibune-no waukei-to if-u fito-no moto-ni"
  :index 0
  
  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "k-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 81
  :form 'ker
  
  :sentence "mina tor-i-sute-tamaf-i-te-ker-eba"
  :index 0

  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "tor-i-sute-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 81
  :form 'ker
  
  :sentence "nige-use-n-i-ker-i"
  :index nil
  
  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "nige-use-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 82
  :form 'ker

  ;; Only do final!
  :sentence "tosigoro miye-tamaf-azar-i-ker-u nar-i-ker-i"
  :index 1
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 82
  :form 'ker
  
  :sentence "kore-wo-namu , _ tamasakaru _-to-fa if-i-hazime-ker-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'habitual
  :shift nil

  ;; Lexical information
  :verb_id "if-i-hazime-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 76
  :form 'ki
  
  :sentence "takumidukasa-no takumi ayabe-no utimaro maus-aku tama-no ki-wo tukaumatur-i-si koto"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "tukaumatur-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 77
  :form 'ker
  
  :sentence "_-to if-i-te mi-reba , fumi-ni maus-i-ker-u-yau"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'auxnoun
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "maus-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 77
  :form 'ki
  
  :sentence "tukasa-mo tamaf-am-u-to ofose-tamaf-i-ki"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype t
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "ofose-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 77
  :form 'ker
  
  :sentence "ofon-tukafi-to ofasimas-ube-ki kaguyafime-no eu-z-i-tamaf-ube-ki nar-i-ker-i-to uketamafar-i-te"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil 
  :persexp nil
  :syntcon 'final
  :embedd 'cognitive_embedding
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 77
  :form 'ker
  
  :sentence "ka-ku asamasi-ki soragoto-nite ar-i-ker-eba , faya kafes-i-tamaf-e"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'ba
  :embedd nil
  :assim nil
  :lextype 'copula
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "-nite ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 72
  :form 'ki
  
  :sentence "sono naka-ni , kono tor-i-te mot-i-te maude-k-i-tar-i-si-fa"
  :index 0
 
  ;; Variables for regression
  :gramasp 'tar
  :fsubject t 
  :persexp t
  :syntcon 'adn_orel 
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "maude-k-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 72
  :form 'ki
  
  :sentence "ito waro-kar-i-sika-do"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'adjective
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "waro-kar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 72
  :form 'ki
  
  :sentence "notamaf-i-si-ni tagaf-amasika-ba-to"
  :index 0
    
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "notamaf-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 72
  :form 'ki
  
  :sentence "yo-ni tatof-ube-ki-ni ar-azar-i-sika-do"
  :index 0
 
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "-ni ar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 72
  :form 'ki
  
  :sentence "si-fyaku-yo-ni-namu maude-k-i-n-i-si"
  :index 0
  
  ;; Variables for regression
  :gramasp 'tn
  :fsubject t
  :persexp t
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "maude-k-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 65
  :form 'ki
  
  :sentence "yuk-am-u kata-mo sir-azu oboye-sika-do"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "oboye-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 65
  :form 'ki
  
  :sentence "omof-u koto nar-ade yo-no naka-ni iki-te nanika se-mu-to omof-i-sika-ba"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "omof-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 65
  :form 'ki
  
  :sentence "waga kuni-no uti-wo fanare-te arik-i-makar-i-si-ni"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'ni
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "arik-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 66
  :form 'ki
  
  :sentence "oni-no yau nar-u mono ide-k-ite koros-am-u-to s-i-ki"
  :index 0
  
  ;; Variables for regression
  :gramasp 'prospective
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "koros-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 66
  :form 'ki
  
  :sentence "ar-u toki-ni-fa k-i-si kata yuk-u suwe-mo sir-azu"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "k-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 66
  :form 'ki
  
  :sentence "umi-ni magire-m-u-to s-i-ki"
  :index 0
    
  ;; Variables for regression
  :gramasp 'prospective
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "magire-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 66
  :form 'ki
  
  :sentence "kusa-no ne-wo kuf-i-mono-to s-i-ki"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject t
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "s-"
  )
)

(setdp
(make-dp
  :source_text 'tm
  :page 66
  :form 'ki
  
  :sentence "kuf-i-kakar-am-u-to s-i-ki"
  :index 0
    
  ;; Variables for regression
  :gramasp 'prospective
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "s-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 60
  :form 'ker
  
  :sentence "kono tama-no yeda-ni fumi-zo tuke-tar-i-ker-u"
  :index 0
  
  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "tuke-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 60
  :form 'ki
  
  :sentence "kono miko-ni maus-i-tamaf-i-si fourai-no tama-no eda-wo"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t 
  :syntcon 'adn_orel
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd 
  :shift t

  ;; Lexical information
  :verb_id "maus-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 54
  :form 'ker
  
  :sentence "mina nanifa-made miokuri s-i-ker-u"
  :index 0
   
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final 
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd 
  :shift "s-"

  ;; Lexical information
  :verb_id nil
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 54
  :form 'ker
  
  :sentence "kanete koto mina ofose-tar-i-ker-eba" 
  :index 0
  
  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp nil 
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "ofose-"
  )
)

(setdp
(make-dp
  :source_text 'tm
  :page 54
  :form 'ker
  
  :sentence "sono toki fito-tu-no takara nar-i-ker-u kaditakumi"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'iv
  :shift nil

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 55
  :form 'ker

  ;; GREAT EXAMPLE OF WHY THIS IS PROBLEMATIC
  :sentence "fune-ni nor-i-te k-i-n-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp 'tn
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "k-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 55
  :form 'ker
  
  :sentence "_-to nonosir-i-ker-i"
  :index 0
    
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'vt
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "nonosir-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 55
  :form 'ker
  
  :sentence "_-to , mune tubure-te omof-i-ker-i"
  :index 0
    
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "omof-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 48
  :form 'ker
  
  :sentence "nafo , kono wonna mi-de-fa , yo-ni ar-umazi-ki kokoti-no s-i-ker-eba"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'habitual
  :shift nil

  ;; Lexical information
  :verb_id "s-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 48
  :form 'ker
  
  :sentence "kaguyafime-no ife-ni mote-k-i-te mise-ker-eba"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil 
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "mise-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 49
  :form 'ker
  
  :sentence "mimi-ni-mo kik-i-ire-zar-i-ker-eba"
  :index 0
    
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'habitual ;; orly?
  :shift nil

  ;; Lexical information
  :verb_id "kik-i-ire-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 49
  :form 'ker
  
  :sentence "kano hati-wo sute-te , mata if-i-ker-u-yori-zo"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp  nil
  :syntcon 'other
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "if-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 49
  :form 'ker
  
  :sentence "_-to-fa if-i-ker-u"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "if-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 31
  :form 'ker
  
  :sentence "sono naka-ni nafo if-i-ker-u-fa"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'nominalization
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "if-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 31
  :form 'ker
  
  :sentence "kono fitobito nar-i-ker-i"
  :index 0
    
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 31
  :form 'ker
  
  :sentence "omof-i-yam-u toki na-ku , yoru firu k-i-tar-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp 'tar
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "k-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 31
  :form 'ker
  
  :sentence "tatazum-i-arik-i-ker-edo"
  :index nil
    
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'habitual
  :shift nil

  ;; Lexical information
  :verb_id "tatazum-i-arik-"
 )
)

(setdp
(make-dp
  :source_text 'tm
  :page 31
  :form 'ker
  
  :sentence "mi-mafosi-u s-uru fitodomo nar-i-ker-eba"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil 
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'g 
  :page 'g1_1
  :form 'ker
  
  :sentence "idure-no ohon-toki-ni-ka , nyougo , kaui amata saburaf-i-tamaf-i-ker-u naka-ni"
  :index 0
    
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "saburaf-"
  )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g1_1
  :form 'ker
  
  :sentence "ito yamugoto na-ki kifa-ni ar-an-u-ga , sugure-te tokimek-i-tamaf-u ar-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g1_3
  :form 'ker
  
  :sentence "kakar-u fito-mo yo-ni ide-ofas-uru mono nar-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift 'present_reference

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g1_1
  :form 'ker
  
  :sentence "morokosi-ni-mo , kakar-u koto-no okori-ni-koso , yo-mo midare , asi-kar-i-ker-e"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_2
  :embedd nil
  :assim t
  :lextype 'adjective
  :bounded 'open
  :shift t

  ;; Lexical information
  :verb_id "asi-kar-"
 )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g1_2
  :form 'ker
  
  :sentence "kono ofon-nifofi-ni-fa narab-i-tamaf-ube-ku-mo ar-azar-i-ker-eba"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'ba
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "ar-"
 )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g1_2
  :form 'ker
  
  :sentence "nafo wadurafasi-u kokoro-gurusi-u omof-i-kikoye-sase-tamaf-i-ker-u"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "omof-"
 )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g1_4
  :form 'ker
  
  :sentence "kagiri ar-am-u miti-ni-mo , okure-sakidat-azi-to tigir-ase-tamaf-i-ker-u-wo"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp t
  :syntcon 'wo
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'bnd
  :shift t

  ;; Lexical information
  :verb_id "tigir-"
 )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g1_5
  :form 'ker
  
  :sentence "tyokusi k-i-te sono senmyau yom-u-namu , kanasi-ki koto nar-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp  nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g1_5
  :form 'ker
  
  :sentence "ima fito kizami-no kurawi-wo-dani-to , okur-ase-tamaf-u nar-i-ker-i"
  :index 0
  
  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'assertive
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded 'bnd
  :shift nil

  ;; Lexical information
  :verb_id "nar-"
 )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g2_2
  :form 'ki
  
  :sentence "kauyau-no wori-fa , ofon-asobi-nado se-sase-tamaf-i-si-ni"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'ni
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'habitual
  :shift nil

  ;; Lexical information
  :verb_id "s-"
 )
)

(setdp
(make-dp
  :source_text 'g
  :page 'g2_2
  :form 'ki
  
  :sentence "fito-yori-fa kotonar-i-si kefafi katati-no , omokage-ni tuto sitaf-i-te obos-ar-uru-ni-mo"
  :index 0

  ;; Variables for regression
  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'open 
  :shift nil

  ;; Lexical information
  :verb_id "kotonar-"
 )
)

(setdp
 (make-dp
  :source_text 'g
  :page 'g1_1
  :form 'ker

  :sentence "nanigoto-no gisiki-mo motenas-i-tamaf-i-ker-edo"
  :index 0

  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'do
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'open
  :shift nil

  ;; Lexical information
  :verb_id "motenas-"
  )
 )

(setdp
 (make-dp
  :source_text 'g
  :page 'g2_1
  :form 'ker

  :sentence "na-ki ato-made , fito-no mune ak-umazi-kar-i-ker-u fito-no ofon-oboye kana"
  :index 0

  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'adn_srel
  :embedd nil
  :assim nil
  :lextype 'tv ;; I assume
  :bounded 'habitual
  :shift nil

  :verb_id "ake-"))

(setdp
 (make-dp
  :source_text 'g
  :page 'g2_1
  :form 'ker

  :sentence "koukiden-nado-ni-fa nafo yurusi na-ku notamaf-i-ker-u"
  :index 0

  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'kakari_1
  :embedd nil
  :assim t
  :lextype 'tv
  :bounded 'habitual
  :shift nil

  :verb_id "notamaf-"))

(setdp
 (make-dp
  :source_text 'g
  :page 'g2_2
  :form 'ker

  :sentence "_ yami-no ututu _-ni-fa nafo otor-i-ker-i"
  :index 0

  :gramasp nil
  :fsubject nil
  :persexp nil
  :syntcon 'final
  :embedd nil
  :assim t
  :lextype 'iv
  :bounded 'habitual
  :shift nil

  :verb_id "otor-"))

(setdp
 (make-dp
  :source_text 'g
  :page 'g2_2
  :form 'ker

  :sentence "geni-koso ito sinob-i-gata-u faber-i-ker-e"
  :index 0

  :gramasp 0
  :fsubject nil
  :persexp t
  :syntcon 'kakari_2
  :embedd nil
  :assim t
  :lextype 'copula
  :bounded nil
  :shift 'present_reference ;; fuck this

  :verb_id "faber-"))
  
  





