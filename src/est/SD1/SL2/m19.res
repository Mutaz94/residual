Fri Oct  1 02:54:12 CDT 2021
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
$DATA ../../../../data/SD1/SL2/dat19.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      999
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

 TOT. NO. OF OBS RECS:      899
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
 RAW OUTPUT FILE (FILE): m19.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1839.48436949548        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1559E+02  4.1808E+01  1.2741E+02  1.9231E+02  1.1832E+02  6.3227E+01 -8.1919E+01 -1.4349E+02 -8.1120E+01 -3.9030E+01
            -3.7876E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3007.28580358180        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1046E+00  1.3174E+00  8.3003E-01  8.7694E-01  1.0668E+00  9.0137E-01  1.0626E+00  9.6685E-01  8.4598E-01  1.1833E+00
             2.4468E+00
 PARAMETER:  1.9952E-01  3.7568E-01 -8.6293E-02 -3.1312E-02  1.6464E-01 -3.8446E-03  1.6076E-01  6.6293E-02 -6.7257E-02  2.6834E-01
             9.9476E-01
 GRADIENT:   3.1021E+02  1.2125E+02 -1.8349E+01  5.7651E+01 -3.2912E+01 -2.2207E+01  3.0365E+01  8.3854E+00  1.0522E+00 -1.2001E+01
             2.1866E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3021.60313024269        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0840E+00  1.3948E+00  7.7683E-01  8.1165E-01  1.1420E+00  9.9349E-01  7.9823E-01  3.7362E-01  9.7171E-01  1.1949E+00
             2.4071E+00
 PARAMETER:  1.8065E-01  4.3274E-01 -1.5253E-01 -1.0869E-01  2.3278E-01  9.3469E-02 -1.2536E-01 -8.8451E-01  7.1306E-02  2.7807E-01
             9.7842E-01
 GRADIENT:   2.3547E+02  1.1508E+02 -2.5014E+01  4.5610E+01 -5.0352E+00  1.9326E+01  1.5811E+00  7.1524E-01  8.0291E+00 -2.8021E+01
             1.9099E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3044.40345968929        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      311
 NPARAMETR:  1.0356E+00  1.6431E+00  1.0030E+00  6.4394E-01  1.4830E+00  9.5747E-01  6.1668E-01  1.9479E+00  1.1361E+00  1.5678E+00
             2.1580E+00
 PARAMETER:  1.3500E-01  5.9656E-01  1.0301E-01 -3.4016E-01  4.9405E-01  5.6539E-02 -3.8341E-01  7.6673E-01  2.2763E-01  5.4965E-01
             8.6917E-01
 GRADIENT:  -1.0369E+01 -3.6974E+01 -1.0895E+01  2.3041E+01  5.4388E+00  3.7557E-01 -4.3705E+00  8.8875E+00  3.7369E-01  2.9354E+00
            -1.8207E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3054.00785427163        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      487
 NPARAMETR:  1.0350E+00  2.0564E+00  9.6300E-01  3.8078E-01  1.8439E+00  9.5251E-01  6.5669E-01  3.6706E+00  1.2718E+00  1.7080E+00
             2.1296E+00
 PARAMETER:  1.3439E-01  8.2096E-01  6.2301E-02 -8.6555E-01  7.1191E-01  5.1346E-02 -3.2054E-01  1.4004E+00  3.4043E-01  6.3531E-01
             8.5596E-01
 GRADIENT:  -1.1001E+01 -6.5513E+00 -8.7938E+00  1.1837E+01  4.2769E+00 -1.9900E+00  2.4059E+00  2.1308E+00  1.9788E+00 -4.5793E+00
            -2.7269E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3055.11526057636        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      664
 NPARAMETR:  1.0362E+00  2.1117E+00  9.8093E-01  3.4747E-01  1.9029E+00  9.5517E-01  6.4998E-01  4.1779E+00  1.2716E+00  1.7594E+00
             2.1341E+00
 PARAMETER:  1.3553E-01  8.4748E-01  8.0743E-02 -9.5709E-01  7.4336E-01  5.4134E-02 -3.3082E-01  1.5298E+00  3.4031E-01  6.6497E-01
             8.5804E-01
 GRADIENT:  -8.4312E+00  3.7790E+00 -7.1957E+00  1.0034E+01  6.8418E+00 -9.3784E-01  1.3205E+00  9.3636E-01  1.5306E+00 -1.7700E+00
            -1.8873E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3056.97610354812        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      825
 NPARAMETR:  1.0359E+00  2.1061E+00  1.4733E+00  3.4552E-01  1.8998E+00  9.4232E-01  6.5047E-01  4.1725E+00  1.2510E+00  1.7573E+00
             2.1398E+00
 PARAMETER:  1.3525E-01  8.4486E-01  4.8754E-01 -9.6270E-01  7.4175E-01  4.0586E-02 -3.3006E-01  1.5285E+00  3.2397E-01  6.6380E-01
             8.6072E-01
 GRADIENT:  -8.7613E+00  1.4269E+00  1.8823E+00 -1.1074E+01 -1.1404E+01 -6.0378E+00  8.4768E-01 -1.0361E+01 -1.5188E+00 -3.8911E+00
            -8.7701E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3057.45672642624        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1001            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0399E+00  2.1041E+00  1.4523E+00  3.5210E-01  1.9308E+00  9.5744E-01  6.4328E-01  4.3282E+00  1.3072E+00  1.7815E+00
             2.1477E+00
 PARAMETER:  1.3908E-01  8.4388E-01  4.7315E-01 -9.4384E-01  7.5795E-01  5.6504E-02 -3.4117E-01  1.5651E+00  3.6790E-01  6.7746E-01
             8.6438E-01
 GRADIENT:   1.4985E+02  4.5805E+02 -2.3179E+00  3.1784E+01  4.8659E+01  1.0980E+01  8.1453E+00 -5.2697E-02  3.2954E+00  1.3053E+01
             1.2540E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3057.56167493187        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:     1077
 NPARAMETR:  1.0348E+00  2.0697E+00  1.4596E+00  3.6148E-01  1.9225E+00  9.5302E-01  6.3781E-01  4.5407E+00  1.2752E+00  1.7789E+00
             2.1478E+00
 PARAMETER:  1.3420E-01  8.2741E-01  4.7818E-01 -9.1755E-01  7.5361E-01  5.1876E-02 -3.4972E-01  1.6131E+00  3.4308E-01  6.7597E-01
             8.6446E-01
 GRADIENT:   1.3325E+02  4.0197E+02 -3.4966E+00  2.4261E+01  5.0899E+01  9.6047E+00  4.7497E+00  1.2152E+00  3.4489E+00  1.4504E+01
             1.7302E+01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -3057.97295333573        NO. OF FUNC. EVALS.: 144
 CUMULATIVE NO. OF FUNC. EVALS.:     1221
 NPARAMETR:  1.0354E+00  2.0669E+00  1.5125E+00  3.6534E-01  1.9252E+00  9.5697E-01  6.4411E-01  4.6827E+00  1.1767E+00  1.7711E+00
             2.1442E+00
 PARAMETER:  1.3512E-01  8.2810E-01  5.1506E-01 -9.0463E-01  7.5505E-01  5.5014E-02 -3.4076E-01  1.6396E+00  2.6258E-01  6.7336E-01
             8.6499E-01
 GRADIENT:   5.9490E+03  9.5237E+02  1.5637E+03  8.7893E+02  1.8332E+00 -3.6814E-01 -1.1838E+03 -2.5792E+02 -9.3807E-03  1.1964E+03
             9.3371E+02
 NUMSIGDIG:         2.3         2.3         2.3         2.3         5.4         1.7         2.3         2.3         2.9         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1221
 NO. OF SIG. DIGITS IN FINAL EST.:  1.7

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.4196E-03 -1.3296E-02 -2.3196E-02  2.4734E-02 -2.2384E-02
 SE:             2.9597E-02  2.6057E-02  1.4095E-02  1.5363E-02  2.6175E-02
 N:                     100         100         100         100         100

 P VAL.:         8.5471E-01  6.0985E-01  9.9825E-02  1.0741E-01  3.9245E-01

 ETASHRINKSD(%)  8.4751E-01  1.2707E+01  5.2780E+01  4.8533E+01  1.2311E+01
 ETASHRINKVR(%)  1.6878E+00  2.3799E+01  7.7703E+01  7.3511E+01  2.3106E+01
 EBVSHRINKSD(%)  1.1555E+00  1.4371E+01  6.0043E+01  5.4322E+01  7.8652E+00
 EBVSHRINKVR(%)  2.2977E+00  2.6676E+01  8.4034E+01  7.9135E+01  1.5112E+01
 RELATIVEINF(%)  9.7657E+01  6.7370E+00  6.5180E+00  1.7318E+00  5.6691E+01
 EPSSHRINKSD(%)  1.7691E+01
 EPSSHRINKVR(%)  3.2253E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          899
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1652.2514827020016     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3057.9729533357277     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1405.7214706337261     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    33.08
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3057.973       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  2.07E+00  1.51E+00  3.66E-01  1.93E+00  9.56E-01  6.44E-01  4.66E+00  1.18E+00  1.77E+00  2.15E+00
 


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
 #CPUT: Total CPU Time in Seconds,       33.141
Stop Time:
Fri Oct  1 02:54:47 CDT 2021