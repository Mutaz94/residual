Sat Oct  2 02:47:04 CDT 2021
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
$DATA ../../../../data/SD4/SL2/dat51.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m51.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1607.47414871327        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2561E+02  3.2244E+01 -1.3773E+01  9.8635E+01  1.2214E+02  6.0140E+01  1.1916E+01 -1.8092E+01  5.3226E+00 -2.3840E+01
            -2.3431E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1614.77230335827        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      132
 NPARAMETR:  9.5890E-01  9.9368E-01  9.6208E-01  1.0069E+00  8.6850E-01  9.0004E-01  9.6743E-01  1.0512E+00  9.9843E-01  1.0206E+00
             1.0388E+00
 PARAMETER:  5.8031E-02  9.3663E-02  6.1342E-02  1.0687E-01 -4.0983E-02 -5.3128E-03  6.6888E-02  1.4995E-01  9.8431E-02  1.2038E-01
             1.3808E-01
 GRADIENT:   2.9815E+00  4.7780E+01  3.7879E+01  1.6123E+01 -5.1457E+01 -3.2005E+01  8.0327E+00 -1.2301E+01 -6.9169E-01  5.8486E+00
            -2.7649E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1618.36386898861        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  9.5817E-01  9.2646E-01  8.6769E-01  1.0387E+00  8.0998E-01  9.2450E-01  7.3799E-01  1.1075E+00  1.0811E+00  9.3719E-01
             1.0674E+00
 PARAMETER:  5.7270E-02  2.3620E-02 -4.1919E-02  1.3799E-01 -1.1074E-01  2.1493E-02 -2.0382E-01  2.0214E-01  1.7800E-01  3.5127E-02
             1.6526E-01
 GRADIENT:  -8.8333E-01  2.4619E+01  1.4729E+01  2.6162E+01 -3.8796E+01 -2.0389E+01  3.5517E+00 -1.8381E+00  1.5891E+01  3.0694E+00
             1.1132E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1620.51492314722        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      488
 NPARAMETR:  9.5943E-01  1.0645E+00  1.0043E+00  9.4836E-01  9.3672E-01  9.4428E-01  4.3652E-01  1.3541E+00  1.1913E+00  1.0848E+00
             1.0701E+00
 PARAMETER:  5.8579E-02  1.6253E-01  1.0427E-01  4.6977E-02  3.4628E-02  4.2671E-02 -7.2892E-01  4.0311E-01  2.7502E-01  1.8140E-01
             1.6777E-01
 GRADIENT:   3.9598E+00  2.2424E+01  1.0497E+01  1.8678E+01 -2.1683E+01 -1.1465E+01  2.3649E+00 -5.2964E+00  6.7370E+00  7.7685E+00
             1.1099E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1621.78043897211        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      674
 NPARAMETR:  9.5842E-01  1.0643E+00  1.0041E+00  9.4824E-01  9.5529E-01  9.7346E-01  1.6740E-01  1.3548E+00  1.2126E+00  1.0846E+00
             1.0703E+00
 PARAMETER:  5.7534E-02  1.6232E-01  1.0414E-01  4.6848E-02  5.4261E-02  7.3106E-02 -1.6874E+00  4.0362E-01  2.9275E-01  1.8117E-01
             1.6798E-01
 GRADIENT:   1.1122E+00  2.5312E+01  2.0530E+00  2.7054E+01  4.7322E-01  4.9326E-01  3.3212E-01 -7.4514E+00 -6.4996E-01  2.9540E+00
             1.0817E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1621.94102126316        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      849
 NPARAMETR:  9.5811E-01  1.0643E+00  1.0041E+00  9.4822E-01  9.5587E-01  9.7316E-01  2.0230E-02  1.3548E+00  1.2248E+00  1.0845E+00
             1.0704E+00
 PARAMETER:  5.7209E-02  1.6229E-01  1.0413E-01  4.6833E-02  5.4869E-02  7.2793E-02 -3.8006E+00  4.0369E-01  3.0279E-01  1.8114E-01
             1.6800E-01
 GRADIENT:   3.2617E-01  2.6716E+01  1.9842E+00  2.8926E+01  8.3778E-01  3.1487E-01  7.3705E-03 -7.9584E+00 -2.0438E-01  2.3317E+00
             1.0890E+01

0ITERATION NO.:   27    OBJECTIVE VALUE:  -1621.94291275308        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      919
 NPARAMETR:  9.5780E-01  1.0643E+00  1.0038E+00  9.4747E-01  9.5482E-01  9.7185E-01  1.0130E-02  1.3604E+00  1.2254E+00  1.0840E+00
             1.0693E+00
 PARAMETER:  5.6859E-02  1.6228E-01  1.0412E-01  4.6827E-02  5.3762E-02  7.1406E-02 -4.4911E+00  4.0371E-01  3.0326E-01  1.8114E-01
             1.6800E-01
 GRADIENT:  -1.4666E+00 -1.2022E-02  2.4144E+00  2.8723E+01 -5.0311E-01 -3.8144E-01  6.0356E-04 -7.9010E+00 -2.0197E-01  2.3726E+00
             1.0742E+01
 NUMSIGDIG:         1.9         9.6         0.8         0.4         2.4         1.7         1.9         0.3         2.7         0.8
                    0.5

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      919
 NO. OF SIG. DIGITS IN FINAL EST.:  0.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.0379E-03 -1.0741E-03 -3.3468E-02 -1.7774E-02 -2.7798E-02
 SE:             2.9883E-02  2.6416E-04  1.6293E-02  2.9004E-02  2.3026E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4563E-01  4.7830E-05  3.9958E-02  5.3999E-01  2.2735E-01

 ETASHRINKSD(%)  1.0000E-10  9.9115E+01  4.5418E+01  2.8330E+00  2.2859E+01
 ETASHRINKVR(%)  1.0000E-10  9.9992E+01  7.0208E+01  5.5858E+00  4.0492E+01
 EBVSHRINKSD(%)  5.1194E-01  9.9229E+01  5.1358E+01  3.0373E+00  2.0091E+01
 EBVSHRINKVR(%)  1.0213E+00  9.9994E+01  7.6339E+01  5.9824E+00  3.6146E+01
 RELATIVEINF(%)  9.8798E+01  6.1614E-04  5.7806E+00  1.2531E+01  1.7033E+01
 EPSSHRINKSD(%)  4.6051E+01
 EPSSHRINKVR(%)  7.0895E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1621.9429127530752     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -886.79208618933706     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.25
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1621.943       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.58E-01  1.06E+00  1.00E+00  9.48E-01  9.55E-01  9.72E-01  1.01E-02  1.35E+00  1.23E+00  1.08E+00  1.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.288
Stop Time:
Sat Oct  2 02:47:17 CDT 2021