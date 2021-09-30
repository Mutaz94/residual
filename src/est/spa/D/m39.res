Wed Sep 29 20:00:34 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	Two-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/7/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/spa/D/dat39.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK
ET1 = EXP(ETA(1)*THETA(6))
ET2 = EXP(ETA(2)*THETA(7))
ET3 = EXP(ETA(3)*THETA(8))
ET4 = EXP(ETA(4)*THETA(9))
ET5 = EXP(ETA(5)*THETA(10))

CL = 5.0 * THETA(1) * ET1
V2 = 35  * THETA(2) * ET2
Q  = 50  * THETA(3) * ET3
V3 = 50  * THETA(4) * ET4
KA = 0.7 * THETA(5) * ET5
SC = V2
$ERROR
CVERR = 0.05
W = THETA(11)*F*CVERR

Y 	= F + W*ERR(1)

$THETA
(0,1) ; CL
(0,1) ; V2
(0,1) ; Q
(0,1) ; V3
(0,1) ; KA
(0,1) ; IIVCL
(0,1) ; IIVV2
(0,1) ; IIVQ
(0,1) ; IIVV3
(0,1) ; IIVKA
(0,1) ; CVPropErr

$OMEGA  (0.09 FIX)x5
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.5.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 template control stream
0DATA CHECKOUT RUN:              NO
 DATA SET LOCATED ON UNIT NO.:    2
 THIS UNIT TO BE REWOUND:        NO
 NO. OF DATA RECS IN DATA SET:      500
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      400
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:  11
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   5
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 TWO COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN4)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   5
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   BASIC PK PARAMETER NO.  1: ELIMINATION RATE (K)
   BASIC PK PARAMETER NO.  2: CENTRAL-TO-PERIPH. RATE (K23)
   BASIC PK PARAMETER NO.  3: PERIPH.-TO-CENTRAL RATE (K32)
   BASIC PK PARAMETER NO.  5: ABSORPTION RATE (KA)
 TRANSLATOR WILL CONVERT PARAMETERS
 CL, V2, Q, V3 TO K, K23, K32 (TRANS4)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         PERIPH.      ON         NO         YES        NO         NO
    4         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            6           *           *           *           *
    3            *           *           *           *           *
    4            *           -           -           -           -
             - PARAMETER IS NOT ALLOWED FOR THIS MODEL
             * PARAMETER IS NOT SUPPLIED BY PK SUBROUTINE;
               WILL DEFAULT TO ONE IF APPLICABLE
0DATA ITEM INDICES USED BY PRED ARE:
   EVENT ID DATA ITEM IS DATA ITEM NO.:      6
   TIME DATA ITEM IS DATA ITEM NO.:          2
   DOSE AMOUNT DATA ITEM IS DATA ITEM NO.:   4

0PK SUBROUTINE CALLED WITH EVERY EVENT RECORD.
 PK SUBROUTINE NOT CALLED AT NONEVENT (ADDITIONAL OR LAGGED) DOSE TIMES.
0ERROR SUBROUTINE CALLED WITH EVERY EVENT RECORD.
1


 #TBLN:      1
 #METH: First Order Conditional Estimation with Interaction

 ESTIMATION STEP OMITTED:                 NO
 ANALYSIS TYPE:                           POPULATION
 NUMBER OF SADDLE POINT RESET ITERATIONS:      0
 GRADIENT METHOD USED:               NOSLOW
 CONDITIONAL ESTIMATES USED:              YES
 CENTERED ETA:                            NO
 EPS-ETA INTERACTION:                     YES
 LAPLACIAN OBJ. FUNC.:                    NO
 NO. OF FUNCT. EVALS. ALLOWED:            10000
 NO. OF SIG. FIGURES REQUIRED:            2
 INTERMEDIATE PRINTOUT:                   YES
 ESTIMATE OUTPUT TO MSF:                  NO
 ABORT WITH PRED EXIT CODE 1:             NO
 IND. OBJ. FUNC. VALUES SORTED:           NO
 NUMERICAL DERIVATIVE
       FILE REQUEST (NUMDER):               NONE
 MAP (ETAHAT) ESTIMATION METHOD (OPTMAP):   0
 ETA HESSIAN EVALUATION METHOD (ETADER):    0
 INITIAL ETA FOR MAP ESTIMATION (MCETA):    0
 SIGDIGITS FOR MAP ESTIMATION (SIGLO):      100
 GRADIENT SIGDIGITS OF
       FIXED EFFECTS PARAMETERS (SIGL):     100
 NOPRIOR SETTING (NOPRIOR):                 0
 NOCOV SETTING (NOCOV):                     OFF
 DERCONT SETTING (DERCONT):                 OFF
 FINAL ETA RE-EVALUATION (FNLETA):          1
 EXCLUDE NON-INFLUENTIAL (NON-INFL.) ETAS
       IN SHRINKAGE (ETASTYPE):             NO
 NON-INFL. ETA CORRECTION (NONINFETA):      0
 RAW OUTPUT FILE (FILE): m39.ext
 EXCLUDE TITLE (NOTITLE):                   NO
 EXCLUDE COLUMN LABELS (NOLABEL):           NO
 FORMAT FOR ADDITIONAL FILES (FORMAT):      S1PE12.5
 PARAMETER ORDER FOR OUTPUTS (ORDER):       TSOL
 KNUTHSUMOFF:                               0
 INCLUDE LNTWOPI:                           NO
 INCLUDE CONSTANT TERM TO PRIOR (PRIORC):   NO
 INCLUDE CONSTANT TERM TO OMEGA (ETA) (OLNTWOPI):NO
 ADDITIONAL CONVERGENCE TEST (CTYPE=4)?:    NO
 EM OR BAYESIAN METHOD USED:                 NONE


 THE FOLLOWING LABELS ARE EQUIVALENT
 PRED=PREDI
 RES=RESI
 WRES=WRESI
 IWRS=IWRESI
 IPRD=IPREDI
 IRS=IRESI

 MONITORING OF SEARCH:


0ITERATION NO.:    0    OBJECTIVE VALUE:   13912.9340413007        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.8110E+02  2.6088E+02 -2.0892E+01  1.3662E+02  4.4153E+01 -1.4355E+03 -5.9148E+02 -2.6209E+01 -1.0427E+03 -3.8106E+02
            -2.7343E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -608.952071581238        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.3254E+00  1.2001E+00  9.2265E-01  1.6755E+00  1.2242E+00  1.8708E+00  1.1115E+00  9.8114E-01  1.0945E+00  9.8374E-01
             1.4754E+01
 PARAMETER:  3.8170E-01  2.8240E-01  1.9498E-02  6.1611E-01  3.0232E-01  7.2636E-01  2.0575E-01  8.0956E-02  1.9028E-01  8.3603E-02
             2.7915E+00
 GRADIENT:  -1.0801E+01  3.1594E+01 -8.3124E-01  5.7996E+01 -9.2376E+00  4.0689E+01  5.1524E-01  4.4562E+00  9.4342E+00  2.4380E+00
             1.4249E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -627.067794130461        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.2594E+00  7.2341E-01  1.3158E+00  1.8257E+00  1.6053E+00  1.5907E+00  3.0319E+00  3.7290E-01  7.2583E-01  1.6671E+00
             1.4058E+01
 PARAMETER:  3.3061E-01 -2.2378E-01  3.7445E-01  7.0196E-01  5.7334E-01  5.6417E-01  1.2092E+00 -8.8645E-01 -2.2045E-01  6.1109E-01
             2.7432E+00
 GRADIENT:  -1.9013E+01  2.6534E+01  1.0716E+01  5.1619E+01 -1.0064E+01  5.6488E+00  1.0681E+01  3.7380E-01  5.0023E+00  7.1082E-01
             1.3334E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -660.304073031870        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0365E+00  2.9472E-01  1.1640E+00  1.6846E+00  4.1579E+00  1.4642E+00  2.8758E+00  1.0000E-02  3.6055E-01  1.0309E+01
             1.1354E+01
 PARAMETER:  1.3585E-01 -1.1217E+00  2.5185E-01  6.2153E-01  1.5250E+00  4.8129E-01  1.1563E+00 -4.7056E+00 -9.2013E-01  2.4330E+00
             2.5295E+00
 GRADIENT:  -5.7950E+01  1.5293E+01  1.0598E+01  1.0444E+02 -5.0724E+00 -3.9756E+00  1.9524E+00  0.0000E+00  7.8090E-01  1.4703E+01
             1.8277E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -705.895613783651        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  8.9250E-01  7.0862E-02  1.7447E-01  1.0167E+00  1.0880E+01  1.2142E+00  2.8116E-01  1.0000E-02  2.8398E-02  2.6223E+00
             1.0003E+01
 PARAMETER: -1.3727E-02 -2.5470E+00 -1.6460E+00  1.1655E-01  2.4870E+00  2.9407E-01 -1.1688E+00 -1.4632E+01 -3.4614E+00  1.0641E+00
             2.4029E+00
 GRADIENT:   1.1792E+02 -5.2921E+00 -5.1187E+01  1.6805E+02  7.2035E+00 -7.5130E+01 -3.7180E-03  0.0000E+00 -2.8266E-03 -5.4008E+00
            -1.1157E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -736.680955579665        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  5.9588E-01  4.7034E-02  5.7538E-02  5.7325E-01  1.4976E+01  1.4304E+00  3.8725E-02  1.0000E-02  1.0000E-02  1.3387E+00
             1.0271E+01
 PARAMETER: -4.1772E-01 -2.9569E+00 -2.7553E+00 -4.5644E-01  2.8064E+00  4.5798E-01 -3.1513E+00 -1.9883E+01 -5.3809E+00  3.9173E-01
             2.4294E+00
 GRADIENT:  -4.2558E+00  5.2143E+00 -4.5817E+01  1.2556E+02  2.2281E-02  1.0910E+01  1.7186E-02  0.0000E+00  0.0000E+00  1.6480E-01
             2.5473E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -742.716581879489        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      550
 NPARAMETR:  5.7913E-01  3.2325E-02  5.0154E-02  4.8142E-01  1.3390E+01  1.3330E+00  2.2391E-02  1.0000E-02  1.0000E-02  1.0377E+00
             1.0141E+01
 PARAMETER: -4.4623E-01 -3.3319E+00 -2.8927E+00 -6.3102E-01  2.6945E+00  3.8744E-01 -3.6991E+00 -2.0865E+01 -6.0639E+00  1.3702E-01
             2.4166E+00
 GRADIENT:   1.4173E+01  1.1286E+00 -1.1030E+01  1.0128E+01 -3.4120E-02 -8.8787E+00  7.5165E-04  0.0000E+00  0.0000E+00  2.3952E-02
            -2.2405E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -743.566597472684        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      726
 NPARAMETR:  5.4245E-01  2.3412E-02  4.3256E-02  4.3164E-01  1.3236E+01  1.3591E+00  1.4349E-02  1.0000E-02  1.0000E-02  8.7848E-01
             1.0341E+01
 PARAMETER: -5.1166E-01 -3.6545E+00 -3.0406E+00 -7.4016E-01  2.6829E+00  4.0680E-01 -4.1441E+00 -2.2072E+01 -6.7130E+00 -2.9563E-02
             2.4361E+00
 GRADIENT:  -6.5703E-01  9.1657E-01 -1.0738E+00  1.8826E-01 -7.5168E-02  5.5291E-02  4.0719E-05  0.0000E+00  0.0000E+00  3.4920E-03
             3.2242E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -743.704094197129        NO. OF FUNC. EVALS.: 145
 CUMULATIVE NO. OF FUNC. EVALS.:      871
 NPARAMETR:  5.3646E-01  1.5155E-02  4.2509E-02  4.2612E-01  1.5547E+01  1.3585E+00  1.1471E-02  1.0000E-02  1.0000E-02  8.2186E-01
             1.0324E+01
 PARAMETER: -5.2275E-01 -4.0894E+00 -3.0580E+00 -7.5303E-01  2.8439E+00  4.0636E-01 -4.3679E+00 -2.2911E+01 -7.1135E+00 -9.6180E-02
             2.4345E+00
 GRADIENT:   3.3788E+01  5.5004E-02  3.4949E+01  2.0098E+01  1.0039E-02  3.6088E+00  2.1180E-07  0.0000E+00  0.0000E+00  3.6016E-05
             1.7691E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -743.767675805534        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1051
 NPARAMETR:  5.3778E-01  1.4265E-02  4.2646E-02  4.2684E-01  7.2568E+00  1.3606E+00  1.0374E-02  1.0000E-02  1.0000E-02  6.9922E-01
             1.0344E+01
 PARAMETER: -5.2031E-01 -4.1499E+00 -3.0548E+00 -7.5135E-01  2.0819E+00  4.0791E-01 -4.4685E+00 -2.2911E+01 -7.1135E+00 -2.5779E-01
             2.4364E+00
 GRADIENT:  -3.4832E+00  1.5600E-01  1.0122E+01 -1.3561E+01 -3.5126E-01 -3.3441E-01  9.7802E-07  0.0000E+00  0.0000E+00  1.3694E-01
             2.7238E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -744.184560230888        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1229
 NPARAMETR:  5.3990E-01  1.0104E-02  4.1834E-02  4.2973E-01  5.8538E+00  1.3716E+00  1.0000E-02  1.0000E-02  1.0000E-02  7.1931E-02
             1.0331E+01
 PARAMETER: -5.1637E-01 -4.4948E+00 -3.0741E+00 -7.4461E-01  1.8671E+00  4.1596E-01 -4.2972E+01 -2.2911E+01 -7.1135E+00 -2.5321E+00
             2.4351E+00
 GRADIENT:   1.0338E+00  1.6489E-02 -1.8407E+00  1.7890E+00  4.6773E-01  2.9789E-02  0.0000E+00  0.0000E+00  0.0000E+00  1.8648E-02
            -4.4366E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -744.194495347961        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1414             RESET HESSIAN, TYPE I
 NPARAMETR:  5.4032E-01  1.0000E-02  4.1943E-02  4.3072E-01  5.8064E+00  1.3719E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.2559E-02
             1.0329E+01
 PARAMETER: -5.1560E-01 -4.5590E+00 -3.0714E+00 -7.4229E-01  1.8590E+00  4.1618E-01 -5.2375E+01 -2.2911E+01 -7.1135E+00 -4.2773E+00
             2.4350E+00
 GRADIENT:   3.3308E+01  0.0000E+00  3.4050E+01  1.6816E+01  1.1577E+00  4.2284E+00  0.0000E+00  0.0000E+00  0.0000E+00  6.6624E-04
             1.9091E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -744.195203733227        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     1588
 NPARAMETR:  5.4025E-01  1.0000E-02  4.1930E-02  4.3062E-01  5.7992E+00  1.3720E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.0329E+01
 PARAMETER: -5.1572E-01 -4.5590E+00 -3.0718E+00 -7.4252E-01  1.8577E+00  4.1624E-01 -5.2375E+01 -2.2911E+01 -7.1135E+00 -5.2951E+00
             2.4350E+00
 GRADIENT:   5.0656E-01  0.0000E+00 -9.7625E-01  8.3008E-01  1.0878E-01 -9.0052E-03  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -2.9622E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1588
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.6221E-03  1.7575E-06  1.2789E-04 -2.6658E-04  5.3901E-06
 SE:             2.8563E-02  2.5930E-06  2.6011E-04  3.5333E-04  4.4302E-05
 N:                     100         100         100         100         100

 P VAL.:         9.2686E-01  4.9789E-01  6.2296E-01  4.5057E-01  9.0316E-01

 ETASHRINKSD(%)  4.3099E+00  9.9991E+01  9.9129E+01  9.8816E+01  9.9852E+01
 ETASHRINKVR(%)  8.4341E+00  1.0000E+02  9.9992E+01  9.9986E+01  1.0000E+02
 EBVSHRINKSD(%)  4.4606E+00  9.9988E+01  9.9086E+01  9.8738E+01  9.9797E+01
 EBVSHRINKVR(%)  8.7222E+00  1.0000E+02  9.9992E+01  9.9984E+01  1.0000E+02
 RELATIVEINF(%)  5.5155E+00  7.7538E-08  6.1392E-05  1.1764E-04  2.3400E-05
 EPSSHRINKSD(%)  7.0302E+00
 EPSSHRINKVR(%)  1.3566E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -744.19520373322723     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -9.0443771694890529     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.15
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.50
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -744.195       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         5.40E-01  1.00E-02  4.19E-02  4.31E-01  5.80E+00  1.37E+00  1.00E-02  1.00E-02  1.00E-02  1.00E-02  1.03E+01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  9.00E-02
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.00E-01
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        5.41E+01
 
 TH 2
+        7.84E-16  3.96E-32
 
 TH 3
+       -3.45E+03 -1.74E-13  2.20E+05
 
 TH 4
+        4.57E+02  2.31E-14 -2.92E+04  3.87E+03
 
 TH 5
+        4.17E+00  2.11E-16 -2.66E+02  3.53E+01  3.21E-01
 
 TH 6
+       -3.93E+00 -1.99E-16  2.51E+02 -3.33E+01 -3.03E-01  2.86E-01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.74E+00 -1.39E-16  1.75E+02 -2.32E+01 -2.11E-01  2.00E-01  0.00E+00  0.00E+00  0.00E+00  0.00E+00  1.39E-01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.82E+03
 
 TH 2
+        0.00E+00  1.01E+03
 
 TH 3
+       -5.11E+03  0.00E+00  3.19E+05
 
 TH 4
+       -4.03E+02  0.00E+00 -4.22E+04  6.34E+03
 
 TH 5
+        7.02E+00  0.00E+00 -3.85E+02  5.21E+01  1.12E+00
 
 TH 6
+       -1.88E-01  0.00E+00  3.61E+02 -6.91E+01  2.96E-01  8.49E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.25E+01  0.00E+00  2.54E+02 -2.39E+01 -3.51E-01  1.13E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  4.20E+00
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.85E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -6.15E+03  0.00E+00  4.62E+05
 
 TH 4
+       -3.76E+02  0.00E+00 -5.79E+04  8.09E+03
 
 TH 5
+        6.37E+00  0.00E+00 -5.19E+02  6.64E+01  7.00E-01
 
 TH 6
+        1.07E+01  0.00E+00 -7.65E+02  7.28E+01  1.39E+00  6.74E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.07E+01  0.00E+00  2.64E+02 -3.24E+01 -4.95E-01  3.57E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  3.23E+01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       26.736
Stop Time:
Wed Sep 29 20:01:03 CDT 2021
