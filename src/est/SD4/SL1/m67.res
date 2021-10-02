Sat Oct  2 02:19:29 CDT 2021
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
$DATA ../../../../data/SD4/SL1/dat67.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m67.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1667.94724324632        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2541E+02 -6.7717E+01  1.6940E+00 -9.9834E+01 -1.3203E+01  3.7283E+01 -1.1035E+01  9.6233E+00 -1.6057E+01  9.9263E+00
             3.9771E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1680.02426203398        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8463E-01  1.0665E+00  1.0464E+00  1.0686E+00  1.0639E+00  1.0537E+00  1.0533E+00  9.5764E-01  1.0428E+00  9.7354E-01
             8.6021E-01
 PARAMETER:  8.4512E-02  1.6435E-01  1.4534E-01  1.6632E-01  1.6191E-01  1.5235E-01  1.5193E-01  5.6717E-02  1.4194E-01  7.3188E-02
            -5.0579E-02
 GRADIENT:  -5.0907E+00 -8.8079E+00 -3.1011E+00 -1.1203E+00  1.4624E+01  7.8115E+00 -6.9168E+00  2.0458E+00 -5.8216E-01 -7.7802E+00
            -2.4110E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1682.04575581769        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  9.8726E-01  1.0469E+00  8.6303E-01  1.0710E+00  9.7641E-01  1.0233E+00  1.2879E+00  4.0893E-01  9.5568E-01  9.8455E-01
             8.9058E-01
 PARAMETER:  8.7179E-02  1.4581E-01 -4.7306E-02  1.6862E-01  7.6122E-02  1.2302E-01  3.5302E-01 -7.9422E-01  5.4671E-02  8.4428E-02
            -1.5877E-02
 GRADIENT:  -2.9458E+00 -7.3854E+00 -2.0374E+01  9.7756E+00  3.0785E+01 -4.2002E+00  3.7490E+00  8.7734E-01 -4.8233E+00  2.5060E+00
            -6.1942E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1682.82169156381        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  9.8999E-01  1.1302E+00  8.0715E-01  1.0152E+00  9.5476E-01  1.0315E+00  1.1440E+00  3.3833E-01  1.0253E+00  9.3365E-01
             9.1184E-01
 PARAMETER:  8.9939E-02  2.2237E-01 -1.1425E-01  1.1507E-01  5.3706E-02  1.3100E-01  2.3454E-01 -9.8373E-01  1.2503E-01  3.1348E-02
             7.7146E-03
 GRADIENT:   9.6149E-01  9.7489E-01  1.4913E+00  2.2469E-02 -6.3758E+00 -1.2568E+00 -2.4900E+00  5.5853E-01 -4.3496E-01  6.0394E-01
             3.2260E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1683.12910781086        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      700
 NPARAMETR:  9.8969E-01  1.2648E+00  7.4909E-01  9.2654E-01  9.9928E-01  1.0388E+00  1.0712E+00  1.1601E-01  1.0988E+00  9.4322E-01
             9.0468E-01
 PARAMETER:  8.9641E-02  3.3493E-01 -1.8889E-01  2.3703E-02  9.9284E-02  1.3805E-01  1.6879E-01 -2.0540E+00  1.9423E-01  4.1542E-02
            -1.7415E-04
 GRADIENT:  -8.4370E-01 -2.2654E+00 -1.7806E+00  3.9744E-02  2.2827E+00  1.1417E+00 -2.9216E-01  8.5892E-02  3.7992E-01 -1.8279E-01
            -7.2569E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1683.13444631575        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      875
 NPARAMETR:  9.9004E-01  1.2966E+00  7.4188E-01  9.0677E-01  1.0126E+00  1.0363E+00  1.0520E+00  8.4735E-02  1.1166E+00  9.5186E-01
             9.0527E-01
 PARAMETER:  8.9993E-02  3.5974E-01 -1.9857E-01  2.1358E-03  1.1248E-01  1.3567E-01  1.5074E-01 -2.3682E+00  2.1030E-01  5.0661E-02
             4.7977E-04
 GRADIENT:  -3.0274E-01 -1.1872E+00 -7.4308E-01 -4.8812E-01  9.7344E-01  1.4503E-01 -1.3247E-01  4.5760E-02  1.5314E-01  5.6057E-02
             4.6084E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1683.14602747991        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1054
 NPARAMETR:  9.9023E-01  1.3072E+00  7.3873E-01  9.0003E-01  1.0164E+00  1.0356E+00  1.0480E+00  3.1345E-02  1.1225E+00  9.5377E-01
             9.0524E-01
 PARAMETER:  9.0185E-02  3.6788E-01 -2.0282E-01 -5.3325E-03  1.1622E-01  1.3499E-01  1.4691E-01 -3.3627E+00  2.1552E-01  5.2666E-02
             4.4275E-04
 GRADIENT:   3.6465E-02 -4.9957E-01 -3.9168E-02 -9.1289E-01  1.8421E-01 -1.4584E-01  1.4330E-01  6.3338E-03  7.2704E-02  5.4713E-02
            -2.3477E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1683.17609235936        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:     1221
 NPARAMETR:  9.9140E-01  1.2594E+00  7.4915E-01  9.3002E-01  9.9525E-01  1.0371E+00  1.0784E+00  1.0000E-02  1.0936E+00  9.4380E-01
             9.0493E-01
 PARAMETER:  9.1360E-02  3.3060E-01 -1.8882E-01  2.7450E-02  9.5243E-02  1.3647E-01  1.7546E-01 -5.7129E+00  1.8950E-01  4.2163E-02
             1.0308E-04
 GRADIENT:   2.6958E+00 -9.1300E-01 -3.2714E-01 -5.0745E-01  4.2735E-01  5.2155E-01 -9.8812E-05  0.0000E+00  1.0071E-01  6.0337E-02
             4.5867E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1221
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.0128E-04 -1.4624E-02 -4.7862E-04  8.8001E-03 -2.4992E-02
 SE:             2.9856E-02  2.2186E-02  1.7975E-04  2.4593E-02  2.2556E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8928E-01  5.0980E-01  7.7530E-03  7.2048E-01  2.6786E-01

 ETASHRINKSD(%)  1.0000E-10  2.5673E+01  9.9398E+01  1.7609E+01  2.4435E+01
 ETASHRINKVR(%)  1.0000E-10  4.4755E+01  9.9996E+01  3.2117E+01  4.2900E+01
 EBVSHRINKSD(%)  3.3269E-01  2.4940E+01  9.9480E+01  1.8110E+01  2.3370E+01
 EBVSHRINKVR(%)  6.6427E-01  4.3659E+01  9.9997E+01  3.2940E+01  4.1278E+01
 RELATIVEINF(%)  9.9191E+01  3.7188E+00  4.3348E-04  5.3675E+00  7.5281E+00
 EPSSHRINKSD(%)  4.4606E+01
 EPSSHRINKVR(%)  6.9315E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1683.1760923593624     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -948.02526579562425     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.57
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1683.176       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.91E-01  1.26E+00  7.49E-01  9.30E-01  9.95E-01  1.04E+00  1.08E+00  1.00E-02  1.09E+00  9.44E-01  9.05E-01
 


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
 #CPUT: Total CPU Time in Seconds,       15.612
Stop Time:
Sat Oct  2 02:19:46 CDT 2021
