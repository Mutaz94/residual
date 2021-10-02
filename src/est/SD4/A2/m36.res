Sat Oct  2 00:31:27 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat36.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m36.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -634.196209722110        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0665E+02  9.5237E+00  4.1026E+01  1.6511E+01  1.4359E+02  2.3776E+01 -2.6529E+01 -4.4854E+01 -4.6415E+01 -7.1515E+01
            -1.8261E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1269.67421595271        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0578E+00  9.8037E-01  8.8175E-01  1.0433E+00  8.7273E-01  1.1237E+00  1.0631E+00  1.0795E+00  1.1015E+00  1.1272E+00
             1.9657E+00
 PARAMETER:  1.5623E-01  8.0173E-02 -2.5852E-02  1.4240E-01 -3.6131E-02  2.1658E-01  1.6116E-01  1.7652E-01  1.9671E-01  2.1972E-01
             7.7584E-01
 GRADIENT:   2.4280E+02  7.8781E-01  8.3177E+00  7.1004E+00  1.2252E+01  4.5408E+01 -1.9025E+00 -3.9649E+00  3.3545E+00  1.7336E+00
            -3.0221E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1282.83326567055        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0334E+00  7.9211E-01  3.0032E-01  1.0922E+00  4.0426E-01  1.0919E+00  1.1893E+00  5.9116E-01  9.7145E-01  4.4080E-01
             2.0091E+00
 PARAMETER:  1.3284E-01 -1.3305E-01 -1.1029E+00  1.8824E-01 -8.0569E-01  1.8795E-01  2.7335E-01 -4.2568E-01  7.1034E-02 -7.1916E-01
             7.9768E-01
 GRADIENT:   1.4282E+02  1.1907E+02  9.1760E+01  1.3870E+02 -6.0462E+01  2.6099E+01 -1.6463E+01 -7.2170E+00 -2.8765E+00 -8.8996E+00
            -2.5646E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1330.16549743235        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      343
 NPARAMETR:  1.0376E+00  8.4089E-01  3.0957E-01  9.8303E-01  4.6359E-01  1.0574E+00  1.1154E+00  5.4647E-01  9.4052E-01  4.9653E-01
             2.7292E+00
 PARAMETER:  1.3695E-01 -7.3300E-02 -1.0726E+00  8.2886E-02 -6.6876E-01  1.5583E-01  2.0918E-01 -5.0427E-01  3.8677E-02 -6.0012E-01
             1.1040E+00
 GRADIENT:   2.8553E+01 -2.8321E+01  5.8863E-01 -3.6596E+01  3.0928E+01  2.1214E+00 -1.2382E+00  6.4330E-01  2.2675E+00  3.7325E-01
            -2.9378E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1334.22835323708        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      518
 NPARAMETR:  1.0163E+00  7.3501E-01  2.2871E-01  9.9181E-01  3.6570E-01  1.0726E+00  1.1274E+00  7.9679E-01  9.0568E-01  2.9544E-01
             2.8201E+00
 PARAMETER:  1.1612E-01 -2.0787E-01 -1.3753E+00  9.1780E-02 -9.0593E-01  1.7006E-01  2.1996E-01 -1.2716E-01  9.3058E-04 -1.1193E+00
             1.1368E+00
 GRADIENT:  -9.9118E+00  2.1017E+00  6.2848E+00  1.8871E+00 -8.9621E+00  3.6741E+00 -3.0902E+00 -3.7227E-01 -2.4403E+00  5.0361E-01
             5.0052E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1347.08255815209        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      697
 NPARAMETR:  1.0158E+00  8.4000E-01  1.7465E-01  8.8167E-01  3.6721E-01  1.0355E+00  1.0246E+00  2.3280E+00  1.0371E+00  1.5609E-01
             2.4365E+00
 PARAMETER:  1.1569E-01 -7.4354E-02 -1.6450E+00 -2.5942E-02 -9.0183E-01  1.3487E-01  1.2425E-01  9.4500E-01  1.3647E-01 -1.7573E+00
             9.9055E-01
 GRADIENT:   3.3440E+01  6.4575E-01 -3.3862E+00 -4.1379E+01 -1.1833E+01  3.7013E+00  3.6800E+00  1.6499E+01 -1.2802E+00 -2.0985E-01
             4.9948E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1355.38374622442        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      872
 NPARAMETR:  1.0034E+00  6.8901E-01  1.8453E-01  9.8041E-01  3.2510E-01  1.0339E+00  1.1085E+00  2.1056E+00  1.0892E+00  1.5900E-01
             2.0110E+00
 PARAMETER:  1.0335E-01 -2.7249E-01 -1.5899E+00  8.0215E-02 -1.0236E+00  1.3336E-01  2.0305E-01  8.4458E-01  1.8546E-01 -1.7389E+00
             7.9861E-01
 GRADIENT:   5.6358E+00  8.5203E+00 -4.5578E-01  6.7441E+00 -1.0913E+01 -1.9300E-01  4.1937E-01 -7.1766E-01 -1.1662E+00  8.3457E-01
            -2.0568E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1355.78214798892        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:     1008
 NPARAMETR:  1.0002E+00  6.8260E-01  1.8460E-01  9.7758E-01  3.2461E-01  1.0349E+00  1.0993E+00  2.1081E+00  1.0898E+00  2.8025E-02
             2.0217E+00
 PARAMETER:  1.0023E-01 -2.8185E-01 -1.5896E+00  7.7324E-02 -1.0251E+00  1.3432E-01  1.9468E-01  8.4578E-01  1.8599E-01 -3.4746E+00
             8.0394E-01
 GRADIENT:   7.8836E+01  1.5593E+01  3.8149E+01  1.5507E+01  1.2076E+02  1.0796E+01 -1.2298E+00  2.1821E+01  2.7592E+00  4.7659E-02
             5.6677E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1355.82973062322        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:     1146
 NPARAMETR:  1.0001E+00  6.7960E-01  1.8385E-01  9.7691E-01  3.2295E-01  1.0338E+00  1.1195E+00  2.1099E+00  1.0959E+00  1.2289E-02
             2.0224E+00
 PARAMETER:  1.0013E-01 -2.8625E-01 -1.5937E+00  7.6641E-02 -1.0303E+00  1.3325E-01  2.1291E-01  8.4663E-01  1.9158E-01 -4.2990E+00
             8.0431E-01
 GRADIENT:  -9.6792E-01  1.3977E+00 -6.4791E-01 -9.7549E-01 -3.5803E-01 -1.3444E-01  6.3611E-02 -2.0372E-01  1.3122E-01  4.7530E-03
             1.6367E-01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1355.83926018376        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:     1273
 NPARAMETR:  1.0008E+00  6.7403E-01  1.8488E-01  9.8042E-01  3.2197E-01  1.0343E+00  1.1244E+00  2.1118E+00  1.0948E+00  1.0094E-02
             2.0185E+00
 PARAMETER:  1.0081E-01 -2.9448E-01 -1.5880E+00  8.0222E-02 -1.0333E+00  1.3368E-01  2.1725E-01  8.4755E-01  1.9060E-01 -4.4958E+00
             8.0234E-01
 GRADIENT:  -1.6304E-01  8.6116E-03 -4.9610E-02 -5.5476E-02 -4.6976E-01 -3.0974E-02  2.3740E-02 -3.4953E-02 -1.5610E-02  4.4127E-03
            -1.7192E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1273
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.6403E-04 -1.3497E-03 -6.7901E-03 -4.1541E-03  6.2989E-05
 SE:             2.9383E-02  2.1892E-02  2.4032E-02  2.5219E-02  3.0340E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9555E-01  9.5084E-01  7.7752E-01  8.6916E-01  8.3554E-01

 ETASHRINKSD(%)  1.5637E+00  2.6658E+01  1.9490E+01  1.5513E+01  9.8984E+01
 ETASHRINKVR(%)  3.1030E+00  4.6209E+01  3.5182E+01  2.8620E+01  9.9990E+01
 EBVSHRINKSD(%)  1.6548E+00  2.6476E+01  2.1055E+01  1.5584E+01  9.8942E+01
 EBVSHRINKVR(%)  3.2823E+00  4.5943E+01  3.7677E+01  2.8739E+01  9.9989E+01
 RELATIVEINF(%)  9.5079E+01  1.0573E+01  3.3119E+01  4.0914E+01  2.4351E-03
 EPSSHRINKSD(%)  4.4737E+01
 EPSSHRINKVR(%)  6.9460E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1355.8392601837638     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -620.68843362002565     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.63
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1355.839       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  6.74E-01  1.85E-01  9.80E-01  3.22E-01  1.03E+00  1.12E+00  2.11E+00  1.09E+00  1.01E-02  2.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.672
Stop Time:
Sat Oct  2 00:31:46 CDT 2021