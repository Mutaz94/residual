Fri Oct  1 03:56:46 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat57.csv ignore=@
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
Current Date:        1 OCT 2021
Days until program expires : 198
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
 NO. OF DATA RECS IN DATA SET:      985
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      885
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
 RAW OUTPUT FILE (FILE): m57.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -507.904438893077        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7192E+02  9.3980E+00  7.3537E+01  1.3419E+02  2.2323E+02  7.2652E+01 -1.1598E+02 -1.9239E+02 -8.6041E+01 -4.5582E+01
            -6.2837E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2761.36561486794        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0749E+00  1.2477E+00  1.0223E+00  9.8580E-01  9.8935E-01  8.2523E-01  1.0979E+00  9.6919E-01  8.7010E-01  1.0472E+00
             2.7920E+00
 PARAMETER:  1.7226E-01  3.2127E-01  1.2203E-01  8.5693E-02  8.9288E-02 -9.2089E-02  1.9340E-01  6.8708E-02 -3.9151E-02  1.4616E-01
             1.1268E+00
 GRADIENT:   1.5336E+02  1.1587E+02  2.7637E+00  8.0525E+01 -5.7444E+01 -2.4574E+01  8.9045E+00  5.8152E+00  1.7805E+00 -8.8524E+00
             6.6465E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2768.40428972168        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      241
 NPARAMETR:  1.0773E+00  1.5110E+00  1.2309E+00  8.5916E-01  1.1874E+00  8.9579E-01  9.0016E-01  8.7097E-01  9.0723E-01  1.3470E+00
             2.7993E+00
 PARAMETER:  1.7449E-01  5.1279E-01  3.0772E-01 -5.1804E-02  2.7173E-01 -1.0052E-02 -5.1856E-03 -3.8148E-02  2.6408E-03  3.9789E-01
             1.1294E+00
 GRADIENT:   4.8938E+01  1.2741E+02  1.0434E+01  1.0105E+02 -6.7816E+01  2.3180E+00  8.0880E-01  2.4322E-01 -4.0600E+00  3.4754E-01
             6.2414E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2788.92974697103        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      420
 NPARAMETR:  1.0483E+00  1.6596E+00  2.4760E+00  7.2286E-01  1.6939E+00  8.8828E-01  7.8560E-01  2.9223E+00  9.7373E-01  1.6141E+00
             2.6830E+00
 PARAMETER:  1.4718E-01  6.0657E-01  1.0066E+00 -2.2454E-01  6.2703E-01 -1.8463E-02 -1.4130E-01  1.1724E+00  7.3378E-02  5.7877E-01
             1.0869E+00
 GRADIENT:  -1.7404E+01  2.0655E+01 -1.6717E+01  5.0909E+01  2.7805E+01 -3.8957E-01 -6.2252E-01  5.0073E-01  5.2256E+00  2.5199E+00
             1.7669E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2796.43826434164        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      600
 NPARAMETR:  1.0573E+00  1.9290E+00  3.6729E+00  5.2361E-01  1.8372E+00  8.8922E-01  7.9722E-01  4.1552E+00  6.7201E-01  1.8092E+00
             2.6470E+00
 PARAMETER:  1.5576E-01  7.5700E-01  1.4010E+00 -5.4701E-01  7.0825E-01 -1.7413E-02 -1.2662E-01  1.5244E+00 -2.9748E-01  6.9288E-01
             1.0734E+00
 GRADIENT:   8.3539E+00  1.6150E+01 -1.2482E+00  1.2420E+01 -8.2135E+00  3.6344E-02  2.9209E-01  3.0801E+00  2.2470E-01 -4.8882E-01
            -4.6129E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2797.43791816941        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      779
 NPARAMETR:  1.0533E+00  2.1706E+00  6.1566E+00  3.7119E-01  2.0596E+00  8.8636E-01  7.4386E-01  5.7725E+00  4.6287E-01  1.9766E+00
             2.6523E+00
 PARAMETER:  1.5188E-01  8.7501E-01  1.9175E+00 -8.9104E-01  8.2249E-01 -2.0633E-02 -1.9590E-01  1.8531E+00 -6.7030E-01  7.8136E-01
             1.0754E+00
 GRADIENT:  -3.9677E+00  4.0135E+01 -2.2211E+00  1.4512E+01  1.4389E+01 -1.4737E+00  3.3113E-01  1.5186E+00  2.2167E-01  5.4336E+00
            -5.0119E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2798.82868771373        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      958
 NPARAMETR:  1.0550E+00  2.3326E+00  9.2193E+00  2.4619E-01  2.0212E+00  8.8651E-01  6.9002E-01  8.2100E+00  2.4902E-01  1.9580E+00
             2.6527E+00
 PARAMETER:  1.5353E-01  9.4699E-01  2.3213E+00 -1.3016E+00  8.0371E-01 -2.0466E-02 -2.7103E-01  2.2054E+00 -1.2902E+00  7.7192E-01
             1.0756E+00
 GRADIENT:   1.3197E+00  9.4314E+00 -2.3039E-01  2.1458E+00 -7.5559E-01 -1.1464E+00 -7.2936E-01 -2.9017E-01  4.5460E-02  2.6275E+00
            -2.1472E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2798.93335446714        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1134
 NPARAMETR:  1.0547E+00  2.4446E+00  1.5175E+01  1.6868E-01  2.0332E+00  8.8871E-01  6.5925E-01  1.1807E+01  1.3268E-01  1.9454E+00
             2.6533E+00
 PARAMETER:  1.5327E-01  9.9390E-01  2.8197E+00 -1.6798E+00  8.0961E-01 -1.7988E-02 -3.1665E-01  2.5687E+00 -1.9198E+00  7.6546E-01
             1.0758E+00
 GRADIENT:   5.2722E-01  6.0807E+00 -9.3956E-02  1.0558E+00  3.3970E-01 -2.1903E-01 -5.9597E-01 -6.3760E-02  6.8720E-03  9.9276E-02
            -1.2752E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2799.06808058934        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1315
 NPARAMETR:  1.0545E+00  2.4434E+00  1.8333E+03  1.6685E-01  2.0345E+00  8.8919E-01  6.6011E-01  1.2430E+01  4.2750E-02  1.9459E+00
             2.6540E+00
 PARAMETER:  1.5304E-01  9.9341E-01  7.6139E+00 -1.6907E+00  8.1024E-01 -1.7444E-02 -3.1535E-01  2.6201E+00 -3.0524E+00  7.6572E-01
             1.0761E+00
 GRADIENT:   3.8027E-02 -1.5340E+00 -1.3189E-03  2.7340E-02  2.4892E-02  1.9821E-02  1.6776E-01 -5.0759E-06  8.3716E-04 -3.0641E-02
             4.7522E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2799.07308348406        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     1513
 NPARAMETR:  1.0546E+00  2.4412E+00  3.6608E+04  1.6846E-01  2.0330E+00  8.8916E-01  6.5988E-01  1.5256E+01  3.3297E-02  1.9468E+00
             2.6537E+00
 PARAMETER:  1.5321E-01  9.9251E-01  1.0608E+01 -1.6811E+00  8.0951E-01 -1.7477E-02 -3.1570E-01  2.8250E+00 -3.3023E+00  7.6621E-01
             1.0760E+00
 GRADIENT:  -5.6128E+00  3.4410E-01 -6.9298E-05  2.6092E-01 -4.9777E-01  2.3175E-01 -3.5912E-01  1.9279E-06  9.7696E-04  1.5522E-01
            -2.6039E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2799.07641838801        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1699
 NPARAMETR:  1.0547E+00  2.4392E+00  4.1082E+04  1.6978E-01  2.0330E+00  8.8916E-01  6.6045E-01  1.9156E+01  2.5180E-02  1.9469E+00
             2.6537E+00
 PARAMETER:  1.5322E-01  9.9168E-01  1.0723E+01 -1.6733E+00  8.0950E-01 -1.7483E-02 -3.1484E-01  3.0526E+00 -3.5817E+00  7.6623E-01
             1.0760E+00
 GRADIENT:  -6.1543E+01  1.7678E+01 -4.3889E-05  2.1238E+00 -1.7217E+00  6.5796E+00 -1.5988E+00 -1.7205E-05  3.9655E-05  3.8246E-01
             1.7809E+00

0ITERATION NO.:   51    OBJECTIVE VALUE:  -2799.07641838801        NO. OF FUNC. EVALS.:  25
 CUMULATIVE NO. OF FUNC. EVALS.:     1724
 NPARAMETR:  1.0547E+00  2.4392E+00  4.1082E+04  1.6978E-01  2.0330E+00  8.8916E-01  6.6045E-01  1.9156E+01  2.5180E-02  1.9469E+00
             2.6537E+00
 PARAMETER:  1.5322E-01  9.9168E-01  1.0723E+01 -1.6733E+00  8.0950E-01 -1.7483E-02 -3.1484E-01  3.0526E+00 -3.5817E+00  7.6623E-01
             1.0760E+00
 GRADIENT:  -7.9925E-02  3.4925E+00 -1.2935E-05 -7.9134E-03 -8.2599E-02 -1.8156E-02 -2.4087E-01 -3.9656E-04 -2.5258E-04  8.6715E-04
            -1.7035E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1724
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.2207E-04 -9.8648E-03  6.7730E-07 -2.3629E-04 -1.3690E-02
 SE:             2.9274E-02  2.8027E-02  4.9028E-07  1.1269E-04  2.7309E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8032E-01  7.2486E-01  1.6714E-01  3.6017E-02  6.1616E-01

 ETASHRINKSD(%)  1.9301E+00  6.1053E+00  9.9998E+01  9.9622E+01  8.5112E+00
 ETASHRINKVR(%)  3.8229E+00  1.1838E+01  1.0000E+02  9.9999E+01  1.6298E+01
 EBVSHRINKSD(%)  1.9074E+00  6.3619E+00  9.9999E+01  9.9631E+01  6.7832E+00
 EBVSHRINKVR(%)  3.7785E+00  1.2319E+01  1.0000E+02  9.9999E+01  1.3106E+01
 RELATIVEINF(%)  9.6058E+01  2.8636E+00  5.7566E-09  4.4486E-05  5.6321E+01
 EPSSHRINKSD(%)  1.5674E+01
 EPSSHRINKVR(%)  2.8892E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          885
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1626.5212037722706     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2799.0764183880087     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1172.5552146157381     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    44.12
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2799.076       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  2.44E+00  4.11E+04  1.70E-01  2.03E+00  8.89E-01  6.60E-01  1.92E+01  2.52E-02  1.95E+00  2.65E+00
 


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
1THERE ARE ERROR MESSAGES IN FILE PRDERR                                                                  
 #CPUT: Total CPU Time in Seconds,       44.182
Stop Time:
Fri Oct  1 03:57:32 CDT 2021