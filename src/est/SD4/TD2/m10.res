Sat Oct  2 04:51:05 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat10.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m10.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1674.86595387497        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6192E+02  1.4971E+01 -1.4649E+01  5.2503E+01  2.0666E+01  2.0856E+01  9.7181E+00  1.4102E+00  1.4184E+01  1.5471E+01
             5.1198E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1677.22244693065        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      132
 NPARAMETR:  9.8604E-01  1.0455E+00  1.0442E+00  1.0272E+00  9.5773E-01  1.0856E+00  9.7963E-01  9.9771E-01  9.7649E-01  9.6177E-01
             8.8120E-01
 PARAMETER:  8.5945E-02  1.4450E-01  1.4322E-01  1.2683E-01  5.6808E-02  1.8210E-01  7.9416E-02  9.7706E-02  7.6214E-02  6.1021E-02
            -2.6466E-02
 GRADIENT:   1.0045E+01  7.5953E+01  4.0454E+01  4.8072E+01 -8.4918E+01 -3.7565E-01  2.3602E+00 -6.3101E+00 -8.6054E-01  6.8312E+00
             2.0812E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1680.37975772981        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  9.8884E-01  8.5465E-01  1.3307E+00  1.1393E+00  1.0309E+00  1.1547E+00  6.9491E-01  1.2843E+00  1.0302E+00  9.8126E-01
             8.3482E-01
 PARAMETER:  8.8780E-02 -5.7063E-02  3.8569E-01  2.3046E-01  1.3044E-01  2.4388E-01 -2.6397E-01  3.5021E-01  1.2976E-01  8.1078E-02
            -8.0543E-02
 GRADIENT:   1.9001E+01  3.0555E+01  1.5993E+01  4.5640E+01 -2.9184E+01  2.4127E+01  2.0551E+00 -2.6179E+00  1.3208E+01 -3.9797E+00
            -2.1068E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1683.64801715265        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      483
 NPARAMETR:  9.7878E-01  7.8345E-01  1.4260E+00  1.1535E+00  1.0683E+00  1.0779E+00  4.6540E-01  1.3463E+00  9.6823E-01  1.0562E+00
             8.9273E-01
 PARAMETER:  7.8554E-02 -1.4405E-01  4.5487E-01  2.4276E-01  1.6610E-01  1.7503E-01 -6.6485E-01  3.9735E-01  6.7715E-02  1.5471E-01
            -1.3475E-02
 GRADIENT:   2.9921E+00  1.8701E-01 -9.4564E-01 -7.0895E+00  2.6007E-01 -1.3564E+00  7.8962E-01 -9.5033E-03 -2.9691E+00  1.4374E+00
             7.8613E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1684.32500189047        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      659
 NPARAMETR:  9.7530E-01  5.4960E-01  1.5127E+00  1.3135E+00  1.0146E+00  1.0847E+00  1.6558E-01  1.3393E+00  8.7900E-01  1.0287E+00
             8.6537E-01
 PARAMETER:  7.4986E-02 -4.9857E-01  5.1387E-01  3.7272E-01  1.1445E-01  1.8131E-01 -1.6983E+00  3.9214E-01 -2.8974E-02  1.2834E-01
            -4.4598E-02
 GRADIENT:   1.4055E+00  4.9738E+00  4.4893E-01  1.1793E+01 -1.8586E+00  1.9160E+00  7.2949E-02 -3.7452E-01  8.8202E-03 -6.6998E-02
            -4.3545E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1684.36582179490        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      835
 NPARAMETR:  9.7401E-01  4.6736E-01  1.5348E+00  1.3654E+00  9.9480E-01  1.0817E+00  8.6884E-02  1.3473E+00  8.4253E-01  1.0149E+00
             8.6983E-01
 PARAMETER:  7.3671E-02 -6.6066E-01  5.2842E-01  4.1142E-01  9.4787E-02  1.7856E-01 -2.3432E+00  3.9812E-01 -7.1351E-02  1.1479E-01
            -3.9454E-02
 GRADIENT:   8.1628E-01  3.6977E+00  5.3480E-01  8.8936E+00 -1.7910E+00  1.1589E+00  1.5984E-02 -3.3593E-01 -4.8179E-01  7.9276E-02
            -2.0870E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1684.41782736783        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     1024
 NPARAMETR:  9.7469E-01  4.6182E-01  1.5355E+00  1.3613E+00  9.9445E-01  1.0806E+00  1.8004E-02  1.3504E+00  8.4131E-01  1.0128E+00
             8.7391E-01
 PARAMETER:  7.4367E-02 -6.7257E-01  5.2884E-01  4.0843E-01  9.4437E-02  1.7750E-01 -3.9172E+00  4.0037E-01 -7.2792E-02  1.1272E-01
            -3.4775E-02
 GRADIENT:   2.3065E+00 -4.3384E-01 -6.1211E-02 -7.9150E+00  5.1620E-01  7.9157E-01  1.0319E-03 -5.3216E-02  4.5750E-02 -5.9477E-02
            -3.1518E-02

0ITERATION NO.:   34    OBJECTIVE VALUE:  -1684.41850384390        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:     1158
 NPARAMETR:  9.7459E-01  4.6274E-01  1.5340E+00  1.3609E+00  9.9455E-01  1.0806E+00  1.0000E-02  1.3508E+00  8.4178E-01  1.0120E+00
             8.7398E-01
 PARAMETER:  7.4241E-02 -6.7136E-01  5.2882E-01  4.0868E-01  9.4135E-02  1.7748E-01 -4.9534E+00  4.0099E-01 -7.2808E-02  1.1305E-01
            -3.4683E-02
 GRADIENT:  -1.3310E-02 -5.3454E-02  1.3590E-01  5.9835E-01 -1.7980E-01 -8.2783E-04  0.0000E+00  1.1814E-02 -7.6254E-02  6.1051E-02
             2.4253E-03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1158
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.0211E-04 -2.1814E-04 -3.8099E-02 -5.0251E-03 -4.0189E-02
 SE:             2.9906E-02  9.1168E-05  1.7829E-02  2.9402E-02  2.1324E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8927E-01  1.6725E-02  3.2606E-02  8.6429E-01  5.9473E-02

 ETASHRINKSD(%)  1.0000E-10  9.9695E+01  4.0270E+01  1.4995E+00  2.8561E+01
 ETASHRINKVR(%)  1.0000E-10  9.9999E+01  6.4323E+01  2.9765E+00  4.8965E+01
 EBVSHRINKSD(%)  2.7927E-01  9.9716E+01  4.4334E+01  2.0362E+00  2.4792E+01
 EBVSHRINKVR(%)  5.5777E-01  9.9999E+01  6.9013E+01  4.0309E+00  4.3438E+01
 RELATIVEINF(%)  9.8697E+01  5.2855E-05  8.8667E+00  7.4465E+00  1.1522E+01
 EPSSHRINKSD(%)  4.6006E+01
 EPSSHRINKVR(%)  7.0847E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1684.4185038439045     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -949.26767728016637     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.23
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1684.419       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.75E-01  4.62E-01  1.54E+00  1.36E+00  9.94E-01  1.08E+00  1.00E-02  1.35E+00  8.41E-01  1.01E+00  8.74E-01
 


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
 #CPUT: Total CPU Time in Seconds,       14.267
Stop Time:
Sat Oct  2 04:51:21 CDT 2021