Sat Oct  2 03:06:57 CDT 2021
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
$DATA ../../../../data/SD4/SL3/dat6.csv ignore=@
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

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        2 OCT 2021
Days until program expires : 197
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m6.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1642.60157911045        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2826E+02 -6.2922E+01 -9.3104E+01  4.4516E+01  1.6903E+02  5.2484E+01  3.5685E+00  1.0304E+01  4.7636E+00 -2.2205E+00
            -5.5135E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1650.86275011820        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  1.0638E+00  1.1134E+00  1.1723E+00  1.0241E+00  9.2245E-01  1.0082E+00  9.7513E-01  9.5682E-01  1.0170E+00  9.6203E-01
             1.2191E+00
 PARAMETER:  1.6187E-01  2.0744E-01  2.5893E-01  1.2378E-01  1.9276E-02  1.0815E-01  7.4813E-02  5.5864E-02  1.1684E-01  6.1291E-02
             2.9813E-01
 GRADIENT:   1.2563E+02  7.4637E+01  2.7405E+01  5.6852E+01 -8.1981E+01 -1.7713E+00  6.7908E+00  1.7681E+00 -2.4826E+00  7.1225E+00
             2.9523E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1656.48102782887        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  1.0485E+00  1.2086E+00  1.5051E+00  9.4540E-01  1.0584E+00  9.7933E-01  4.7717E-01  1.1965E+00  1.2462E+00  1.0751E+00
             1.1909E+00
 PARAMETER:  1.4733E-01  2.8944E-01  5.0886E-01  4.3858E-02  1.5681E-01  7.9117E-02 -6.3988E-01  2.7942E-01  3.2009E-01  1.7237E-01
             2.7467E-01
 GRADIENT:   1.0108E+02  6.2574E+01  2.4506E+01  4.9344E+01 -4.9555E+01 -1.0309E+01  1.1860E+00 -4.1107E+00  6.3170E-01  2.0054E-02
             1.9483E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1662.56014154331        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  9.9923E-01  1.2392E+00  1.2568E+00  8.8066E-01  1.0452E+00  9.9969E-01  4.0500E-01  1.0664E+00  1.3088E+00  1.0656E+00
             1.1099E+00
 PARAMETER:  9.9228E-02  3.1447E-01  3.2858E-01 -2.7080E-02  1.4418E-01  9.9693E-02 -8.0386E-01  1.6429E-01  3.6914E-01  1.6355E-01
             2.0429E-01
 GRADIENT:  -8.6307E+00  7.3117E+00  6.1460E+00  4.1323E+00 -1.3527E+01  1.3753E+00  9.1701E-01 -1.8622E-01  3.2319E-01 -4.7187E-01
            -4.8297E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1662.92751764554        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  1.0042E+00  1.3335E+00  1.1786E+00  8.0800E-01  1.0713E+00  9.9559E-01  2.9151E-01  1.0327E+00  1.4387E+00  1.0896E+00
             1.1210E+00
 PARAMETER:  1.0422E-01  3.8782E-01  2.6431E-01 -1.1320E-01  1.6891E-01  9.5583E-02 -1.1327E+00  1.3217E-01  4.6374E-01  1.8580E-01
             2.1421E-01
 GRADIENT:   1.2348E+00  8.9585E-01  1.7799E-02  5.7786E-01  5.0121E-01 -2.6805E-01 -2.2060E-01 -3.2061E-01 -1.0666E+00 -3.1426E-01
             6.4588E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1662.92914726495        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      878
 NPARAMETR:  1.0035E+00  1.3510E+00  1.1744E+00  7.9717E-01  1.0760E+00  9.9637E-01  3.0070E-01  1.0607E+00  1.4580E+00  1.0925E+00
             1.1197E+00
 PARAMETER:  1.0346E-01  4.0084E-01  2.6076E-01 -1.2669E-01  1.7324E-01  9.6363E-02 -1.1016E+00  1.5890E-01  4.7708E-01  1.8847E-01
             2.1305E-01
 GRADIENT:  -5.5604E-01  1.6598E+00  2.4904E-02  1.5895E+00 -4.3225E-01  1.5482E-02 -2.0797E-01  4.3073E-02 -3.6624E-01  1.2780E-01
            -3.0031E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1662.94158438883        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1057
 NPARAMETR:  1.0028E+00  1.3532E+00  1.1708E+00  7.9546E-01  1.0763E+00  9.9594E-01  3.2903E-01  1.0525E+00  1.4497E+00  1.0898E+00
             1.1205E+00
 PARAMETER:  1.0281E-01  4.0250E-01  2.5770E-01 -1.2883E-01  1.7355E-01  9.5934E-02 -1.0116E+00  1.5113E-01  4.7134E-01  1.8598E-01
             2.1376E-01
 GRADIENT:  -2.0133E+00 -1.2198E+00  2.9252E-01 -1.4387E-01  1.2727E-01 -1.4968E-01 -3.8079E-02 -1.0407E-02 -1.2983E-01 -2.5763E-02
             2.2776E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1662.94864241016        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1234            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0044E+00  1.3546E+00  1.1573E+00  7.9487E-01  1.0730E+00  9.9675E-01  3.4517E-01  1.0338E+00  1.4480E+00  1.0871E+00
             1.1203E+00
 PARAMETER:  1.0443E-01  4.0348E-01  2.4606E-01 -1.2958E-01  1.7048E-01  9.6743E-02 -9.6372E-01  1.3326E-01  4.7021E-01  1.8352E-01
             2.1361E-01
 GRADIENT:   3.7167E+02  2.4149E+02  1.6293E+00  4.0291E+01  9.5324E+00  4.2357E+01  6.0922E+00  9.8742E-02  2.5897E+01  1.4314E+00
             1.7311E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1662.94864241016        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1293
 NPARAMETR:  1.0044E+00  1.3546E+00  1.1573E+00  7.9487E-01  1.0730E+00  9.9675E-01  3.4517E-01  1.0338E+00  1.4480E+00  1.0871E+00
             1.1203E+00
 PARAMETER:  1.0443E-01  4.0348E-01  2.4606E-01 -1.2958E-01  1.7048E-01  9.6743E-02 -9.6372E-01  1.3326E-01  4.7021E-01  1.8352E-01
             2.1361E-01
 GRADIENT:   2.5730E-02 -1.0567E+00  5.3361E-02 -2.4231E-01 -1.6698E-01  8.4236E-03  1.5067E-02  7.6422E-03  5.1785E-01  7.7532E-02
             2.4163E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1293
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.4482E-04 -3.1482E-02 -1.7747E-02  6.2197E-03 -2.7144E-02
 SE:             2.9812E-02  9.6917E-03  1.0056E-02  2.7568E-02  2.4035E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8542E-01  1.1608E-03  7.7598E-02  8.2150E-01  2.5875E-01

 ETASHRINKSD(%)  1.2522E-01  6.7532E+01  6.6310E+01  7.6443E+00  1.9481E+01
 ETASHRINKVR(%)  2.5029E-01  8.9458E+01  8.8650E+01  1.4704E+01  3.5166E+01
 EBVSHRINKSD(%)  5.4290E-01  6.9985E+01  6.8918E+01  6.9485E+00  1.7106E+01
 EBVSHRINKVR(%)  1.0828E+00  9.0991E+01  9.0339E+01  1.3414E+01  3.1286E+01
 RELATIVEINF(%)  9.8802E+01  9.2629E-01  3.2103E+00  1.0906E+01  2.2548E+01
 EPSSHRINKSD(%)  4.2836E+01
 EPSSHRINKVR(%)  6.7323E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1662.9486424101594     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -927.79781584642126     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.17
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1662.949       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.35E+00  1.16E+00  7.95E-01  1.07E+00  9.97E-01  3.45E-01  1.03E+00  1.45E+00  1.09E+00  1.12E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       16.222
Stop Time:
Sat Oct  2 03:07:15 CDT 2021
