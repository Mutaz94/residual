Fri Oct  1 23:56:12 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat24.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m24.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1382.63274359788        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6932E+02  2.4431E+00  2.4162E+01 -1.8972E+01  3.8294E+01  3.6447E+01 -2.4078E+01  3.4404E-01 -3.9260E+01 -2.9075E+01
            -4.2702E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1464.30982001714        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0848E+00  9.8804E-01  9.6386E-01  1.0610E+00  9.5375E-01  1.0803E+00  1.0746E+00  9.5716E-01  1.1350E+00  1.0425E+00
             2.2073E+00
 PARAMETER:  1.8138E-01  8.7970E-02  6.3195E-02  1.5918E-01  5.2651E-02  1.7719E-01  1.7194E-01  5.6210E-02  2.2666E-01  1.4161E-01
             8.9179E-01
 GRADIENT:   3.3408E+02 -8.1875E+00 -9.6321E+00  3.2336E+00 -5.0992E+00  2.8062E+01  4.7755E+00  9.0225E+00  1.4637E+01  1.3720E+01
             1.0385E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1479.61165325119        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0310E+00  8.8466E-01  7.0641E-01  1.1179E+00  8.0913E-01  9.6727E-01  1.5121E+00  1.1148E-01  9.0378E-01  9.4145E-01
             2.0322E+00
 PARAMETER:  1.3050E-01 -2.2549E-02 -2.4757E-01  2.1143E-01 -1.1179E-01  6.6724E-02  5.1349E-01 -2.0939E+00 -1.1725E-03  3.9663E-02
             8.0911E-01
 GRADIENT:   2.2941E+02 -4.3519E+00 -5.9972E+01  6.1692E+01  7.1366E+01 -3.7183E+00  1.7645E+01  2.3302E-01 -3.4820E+00  1.4943E+01
             8.1352E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1496.15586471589        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      295
 NPARAMETR:  9.6990E-01  6.7018E-01  6.3193E-01  1.2083E+00  6.1952E-01  9.5603E-01  1.6188E+00  1.7243E-01  9.0845E-01  6.8243E-01
             1.7452E+00
 PARAMETER:  6.9442E-02 -3.0021E-01 -3.5897E-01  2.8923E-01 -3.7882E-01  5.5035E-02  5.8170E-01 -1.6578E+00  3.9856E-03 -2.8210E-01
             6.5690E-01
 GRADIENT:  -2.5675E+01  1.5834E+01  1.7436E+01 -9.7332E+00 -2.6041E+01 -1.3954E+01 -2.6200E+00  4.5628E-01 -3.3784E+00 -2.6112E+00
             1.3943E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1500.63912590688        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      471
 NPARAMETR:  9.7735E-01  3.6644E-01  7.2581E-01  1.3889E+00  5.9410E-01  9.6335E-01  2.5043E+00  5.0152E-02  8.7506E-01  8.3086E-01
             1.6411E+00
 PARAMETER:  7.7087E-02 -9.0392E-01 -2.2047E-01  4.2851E-01 -4.2071E-01  6.2666E-02  1.0180E+00 -2.8927E+00 -3.3460E-02 -8.5288E-02
             5.9534E-01
 GRADIENT:   9.3311E+00  7.8015E+00  2.6105E+01 -6.2475E+00 -3.0676E+01 -9.0922E+00  1.1052E+00  2.3990E-02  3.8666E+00  1.6288E+00
            -9.2491E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1502.34298390589        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      646
 NPARAMETR:  9.6344E-01  2.1464E-01  6.9263E-01  1.4653E+00  5.5247E-01  9.8705E-01  3.3524E+00  1.0000E-02  8.3396E-01  8.1314E-01
             1.6700E+00
 PARAMETER:  6.2754E-02 -1.4388E+00 -2.6726E-01  4.8203E-01 -4.9335E-01  8.6969E-02  1.3097E+00 -4.6539E+00 -8.1566E-02 -1.0685E-01
             6.1279E-01
 GRADIENT:  -1.6290E+01  2.1784E+00 -1.1518E+00  1.1638E+01  1.7964E+00  1.4365E+00  8.4910E-01  0.0000E+00 -8.4370E-02 -2.0407E-01
             7.5454E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1502.60886195379        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      821
 NPARAMETR:  9.6884E-01  1.5576E-01  6.6527E-01  1.4788E+00  5.2587E-01  9.8188E-01  3.8482E+00  1.0000E-02  8.2876E-01  8.0210E-01
             1.6631E+00
 PARAMETER:  6.8347E-02 -1.7594E+00 -3.0756E-01  4.9125E-01 -5.4270E-01  8.1714E-02  1.4476E+00 -5.7213E+00 -8.7819E-02 -1.2053E-01
             6.0870E-01
 GRADIENT:  -3.7584E-02  7.0613E-02 -8.6226E-01 -1.1483E+00  1.4708E+00 -4.9515E-02  4.6113E-01  0.0000E+00  3.6256E-01 -5.9500E-01
            -4.2809E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1502.61205550384        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:      995
 NPARAMETR:  9.6903E-01  1.5566E-01  6.6573E-01  1.4780E+00  5.2581E-01  9.8204E-01  3.8666E+00  1.0000E-02  8.2793E-01  8.0476E-01
             1.6638E+00
 PARAMETER:  6.8484E-02 -1.7616E+00 -3.0662E-01  4.9102E-01 -5.4296E-01  8.1870E-02  1.4507E+00 -5.7329E+00 -8.8644E-02 -1.1605E-01
             6.0942E-01
 GRADIENT:  -1.6084E-01 -1.2899E-01  5.4730E-01  1.5017E+00 -4.7555E-01 -5.7797E-03 -7.6967E-01  0.0000E+00  8.5816E-02  1.6841E-01
             2.0596E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      995
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3212E-03  3.7755E-02 -2.7829E-04 -2.5835E-02  2.8065E-03
 SE:             2.9543E-02  1.5941E-02  2.0810E-04  2.6327E-02  2.1702E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6433E-01  1.7861E-02  1.8112E-01  3.2644E-01  8.9710E-01

 ETASHRINKSD(%)  1.0275E+00  4.6597E+01  9.9303E+01  1.1802E+01  2.7296E+01
 ETASHRINKVR(%)  2.0445E+00  7.1481E+01  9.9995E+01  2.2211E+01  4.7141E+01
 EBVSHRINKSD(%)  1.1984E+00  5.9553E+01  9.9241E+01  9.0538E+00  2.1474E+01
 EBVSHRINKVR(%)  2.3824E+00  8.3640E+01  9.9994E+01  1.7288E+01  3.8337E+01
 RELATIVEINF(%)  9.6871E+01  6.1843E+00  3.5619E-04  3.6407E+01  3.6750E+00
 EPSSHRINKSD(%)  3.9323E+01
 EPSSHRINKVR(%)  6.3183E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1502.6120555038383     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -767.46122894010011     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.59
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1502.612       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.69E-01  1.55E-01  6.66E-01  1.48E+00  5.26E-01  9.82E-01  3.86E+00  1.00E-02  8.28E-01  8.06E-01  1.66E+00
 


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
 #CPUT: Total CPU Time in Seconds,       12.632
Stop Time:
Fri Oct  1 23:56:26 CDT 2021
