Wed Sep 29 19:17:36 CDT 2021
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
$DATA ../../../../data/spa/TD2/dat76.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m76.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1594.18639242035        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0938E+02  5.2632E+01  2.2361E+01  6.4218E+01 -1.3181E+01 -6.4507E+00  2.2068E+00 -1.6070E+00  1.3628E+00 -1.6559E+01
            -5.5708E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1598.10992419603        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.7907E-01  9.8133E-01  9.6051E-01  1.0513E+00  1.0378E+00  1.1810E+00  1.0023E+00  9.9810E-01  1.0205E+00  1.0737E+00
             1.1904E+00
 PARAMETER:  7.8850E-02  8.1151E-02  5.9712E-02  1.4998E-01  1.3712E-01  2.6640E-01  1.0232E-01  9.8095E-02  1.2028E-01  1.7107E-01
             2.7429E-01
 GRADIENT:   9.6661E+00  6.5959E+00 -3.8977E+01  5.9867E+01  4.9089E+01  2.0487E+01  3.5783E-01  4.7595E+00  2.3113E+00 -5.1494E+00
             2.5922E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1599.44616473056        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.7871E-01  8.1752E-01  1.2547E+00  1.1745E+00  1.1188E+00  1.1702E+00  9.6038E-01  1.0448E+00  9.9524E-01  1.2531E+00
             1.1639E+00
 PARAMETER:  7.8476E-02 -1.0148E-01  3.2689E-01  2.6082E-01  2.1228E-01  2.5719E-01  5.9573E-02  1.4386E-01  9.5232E-02  3.2559E-01
             2.5179E-01
 GRADIENT:   1.4697E+01  2.0856E+01 -1.6788E+01  7.1526E+01  3.1195E+01  1.7744E+01 -2.8124E-01 -4.3681E+00  4.7046E+00 -9.5846E-01
             1.7444E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1602.70039036572        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.6781E-01  7.7085E-01  1.3402E+00  1.1629E+00  1.0853E+00  1.1104E+00  1.0048E+00  1.1979E+00  9.5173E-01  1.2309E+00
             1.1117E+00
 PARAMETER:  6.7282E-02 -1.6026E-01  3.9281E-01  2.5092E-01  1.8182E-01  2.0475E-01  1.0476E-01  2.8058E-01  5.0531E-02  3.0771E-01
             2.0592E-01
 GRADIENT:  -1.1761E+00  4.5408E+00  3.5282E+00  3.0543E+00 -6.0440E+00 -1.4563E+00 -1.4831E-02 -2.9471E-01  2.9149E-01 -3.9195E-01
            -1.7609E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1602.83991352239        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.6697E-01  6.2010E-01  1.5299E+00  1.2665E+00  1.1092E+00  1.1163E+00  1.0801E+00  1.3239E+00  8.9152E-01  1.2883E+00
             1.1196E+00
 PARAMETER:  6.6416E-02 -3.7788E-01  5.2519E-01  3.3624E-01  2.0368E-01  2.0999E-01  1.7709E-01  3.8056E-01 -1.4827E-02  3.5335E-01
             2.1297E-01
 GRADIENT:   8.6395E-01  4.7075E+00  2.1827E+00  8.0027E+00 -2.4500E+00  1.3184E+00 -1.5574E-01 -4.1117E-01 -9.6110E-01  4.9394E-01
             1.1930E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1602.92881945869        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  9.6500E-01  4.7317E-01  1.6140E+00  1.3605E+00  1.0883E+00  1.1135E+00  1.1844E+00  1.3864E+00  8.4502E-01  1.2801E+00
             1.1185E+00
 PARAMETER:  6.4376E-02 -6.4831E-01  5.7875E-01  4.0784E-01  1.8458E-01  2.0750E-01  2.6925E-01  4.2674E-01 -6.8393E-02  3.4698E-01
             2.1200E-01
 GRADIENT:   6.3669E-01  3.0368E+00  9.6180E-01  7.2939E+00 -9.9000E-01  9.3251E-01 -2.9938E-01 -2.2288E-01 -1.0554E+00 -1.2824E-01
             8.9953E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1602.94826417321        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1065
 NPARAMETR:  9.6479E-01  4.3709E-01  1.6276E+00  1.3736E+00  1.0850E+00  1.1121E+00  1.2774E+00  1.4022E+00  8.3921E-01  1.2798E+00
             1.1166E+00
 PARAMETER:  6.4155E-02 -7.2761E-01  5.8711E-01  4.1742E-01  1.8158E-01  2.0626E-01  3.4482E-01  4.3801E-01 -7.5299E-02  3.4668E-01
             2.1028E-01
 GRADIENT:   1.3730E+00 -1.8355E+00 -2.0819E-01 -1.2864E+01  2.2432E+00  6.4676E-01  1.9835E-01  7.9233E-02  1.7109E+00 -1.6635E-01
             7.4510E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1602.96730065767        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1249             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6487E-01  4.3844E-01  1.6249E+00  1.3759E+00  1.0824E+00  1.1116E+00  1.2801E+00  1.4001E+00  8.3560E-01  1.2791E+00
             1.1152E+00
 PARAMETER:  6.4241E-02 -7.2454E-01  5.8542E-01  4.1909E-01  1.7916E-01  2.0577E-01  3.4693E-01  4.3654E-01 -7.9606E-02  3.4614E-01
             2.0903E-01
 GRADIENT:   3.5878E+02  4.9902E+01  6.4024E+00  4.7995E+02  8.9292E+00  8.0967E+01  2.8347E+00  1.4183E+00  9.3823E+00  3.1917E+00
             1.7384E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1602.96888396269        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1428             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6487E-01  4.3835E-01  1.6207E+00  1.3761E+00  1.0808E+00  1.1115E+00  1.2848E+00  1.3970E+00  8.3541E-01  1.2770E+00
             1.1152E+00
 PARAMETER:  6.4234E-02 -7.2474E-01  5.8286E-01  4.1926E-01  1.7767E-01  2.0576E-01  3.5058E-01  4.3435E-01 -7.9829E-02  3.4452E-01
             2.0904E-01
 GRADIENT:   3.5869E+02  4.9993E+01  6.3354E+00  4.8082E+02  8.8437E+00  8.0933E+01  2.8880E+00  1.4272E+00  9.3902E+00  3.1360E+00
             1.7496E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1602.96995077908        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1613             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6486E-01  4.3826E-01  1.6191E+00  1.3763E+00  1.0798E+00  1.1116E+00  1.2781E+00  1.3953E+00  8.3500E-01  1.2764E+00
             1.1151E+00
 PARAMETER:  6.4228E-02 -7.2494E-01  5.8189E-01  4.1941E-01  1.7681E-01  2.0576E-01  3.4535E-01  4.3312E-01 -8.0323E-02  3.4403E-01
             2.0895E-01
 GRADIENT:   3.5872E+02  5.0129E+01  6.4171E+00  4.8141E+02  8.5559E+00  8.0946E+01  2.7680E+00  1.3971E+00  9.1063E+00  3.1607E+00
             1.6867E+00

0ITERATION NO.:   47    OBJECTIVE VALUE:  -1602.96995077908        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1672
 NPARAMETR:  9.6486E-01  4.3826E-01  1.6191E+00  1.3763E+00  1.0798E+00  1.1116E+00  1.2781E+00  1.3953E+00  8.3500E-01  1.2764E+00
             1.1151E+00
 PARAMETER:  6.4228E-02 -7.2494E-01  5.8189E-01  4.1941E-01  1.7681E-01  2.0576E-01  3.4535E-01  4.3312E-01 -8.0323E-02  3.4403E-01
             2.0895E-01
 GRADIENT:   4.7309E-03 -3.6757E-02  2.4350E-01 -3.6467E-02  3.0659E-01  7.0008E-04  1.0433E-02  6.3836E-02  1.0586E-01  6.8969E-02
             1.6952E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1672
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.5661E-04 -1.0425E-02 -3.7457E-02 -4.0318E-03 -4.8330E-02
 SE:             2.9792E-02  9.0120E-03  1.6394E-02  2.7792E-02  2.1077E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9045E-01  2.4735E-01  2.2325E-02  8.8466E-01  2.1848E-02

 ETASHRINKSD(%)  1.9444E-01  6.9809E+01  4.5078E+01  6.8918E+00  2.9389E+01
 ETASHRINKVR(%)  3.8849E-01  9.0885E+01  6.9836E+01  1.3309E+01  5.0141E+01
 EBVSHRINKSD(%)  4.6602E-01  7.0247E+01  5.0015E+01  6.9796E+00  2.4829E+01
 EBVSHRINKVR(%)  9.2986E-01  9.1148E+01  7.5015E+01  1.3472E+01  4.3492E+01
 RELATIVEINF(%)  9.6788E+01  2.4482E-01  8.2794E+00  2.6882E+00  1.0694E+01
 EPSSHRINKSD(%)  4.4128E+01
 EPSSHRINKVR(%)  6.8783E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1602.9699507790770     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -867.81912421533877     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.70
 Elapsed covariance  time in seconds:     6.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1602.970       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.65E-01  4.38E-01  1.62E+00  1.38E+00  1.08E+00  1.11E+00  1.28E+00  1.40E+00  8.35E-01  1.28E+00  1.12E+00
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.26E-02  2.54E-01  6.42E-01  1.79E-01  1.99E-01  8.50E-02  7.02E-01  5.77E-01  1.17E-01  2.83E-01  8.06E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.06E-03
 
 TH 2
+        8.51E-04  6.46E-02
 
 TH 3
+       -5.50E-03 -1.26E-01  4.12E-01
 
 TH 4
+       -9.23E-04 -4.41E-02  9.35E-02  3.19E-02
 
 TH 5
+       -2.21E-03 -2.85E-02  1.18E-01  2.27E-02  3.95E-02
 
 TH 6
+       -9.26E-04  3.76E-03 -3.21E-03 -2.07E-03  8.77E-04  7.23E-03
 
 TH 7
+       -3.22E-03 -1.52E-01  2.81E-01  1.03E-01  6.17E-02 -5.26E-03  4.93E-01
 
 TH 8
+       -3.65E-03 -1.17E-01  3.44E-01  8.52E-02  9.45E-02 -3.49E-03  2.77E-01  3.33E-01
 
 TH 9
+        3.68E-04  2.47E-02 -5.33E-02 -1.77E-02 -1.25E-02  1.28E-03 -5.77E-02 -5.12E-02  1.36E-02
 
 TH10
+       -3.22E-03 -4.46E-02  1.59E-01  3.37E-02  4.98E-02 -6.35E-04  9.46E-02  1.26E-01 -1.84E-02  8.01E-02
 
 TH11
+       -2.42E-04  2.17E-03 -1.94E-03 -1.18E-03 -4.27E-04  1.15E-03 -4.07E-03 -1.75E-03  9.24E-04 -2.55E-03  6.50E-03
 
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
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.26E-02
 
 TH 2
+        1.03E-01  2.54E-01
 
 TH 3
+       -2.63E-01 -7.71E-01  6.42E-01
 
 TH 4
+       -1.59E-01 -9.73E-01  8.15E-01  1.79E-01
 
 TH 5
+       -3.41E-01 -5.64E-01  9.28E-01  6.40E-01  1.99E-01
 
 TH 6
+       -3.35E-01  1.74E-01 -5.89E-02 -1.36E-01  5.19E-02  8.50E-02
 
 TH 7
+       -1.41E-01 -8.49E-01  6.23E-01  8.18E-01  4.42E-01 -8.81E-02  7.02E-01
 
 TH 8
+       -1.94E-01 -7.96E-01  9.27E-01  8.26E-01  8.24E-01 -7.10E-02  6.83E-01  5.77E-01
 
 TH 9
+        9.69E-02  8.32E-01 -7.11E-01 -8.49E-01 -5.40E-01  1.29E-01 -7.04E-01 -7.60E-01  1.17E-01
 
 TH10
+       -3.49E-01 -6.20E-01  8.76E-01  6.67E-01  8.85E-01 -2.64E-02  4.76E-01  7.72E-01 -5.58E-01  2.83E-01
 
 TH11
+       -9.21E-02  1.06E-01 -3.75E-02 -8.19E-02 -2.67E-02  1.67E-01 -7.18E-02 -3.75E-02  9.82E-02 -1.12E-01  8.06E-02
 
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
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.32E+03
 
 TH 2
+        9.92E+01  4.45E+02
 
 TH 3
+       -1.02E+01  4.49E+01  6.99E+01
 
 TH 4
+        1.22E+02  5.06E+02  6.21E+00  8.35E+02
 
 TH 5
+        3.79E+01 -1.68E+02 -1.19E+02 -1.24E+02  4.03E+02
 
 TH 6
+        1.43E+02 -1.13E+01  1.44E+01 -3.30E+00 -4.75E+01  1.74E+02
 
 TH 7
+        1.41E+01  2.20E+01  1.97E+00  4.18E+00 -8.28E-01 -2.62E+00  7.85E+00
 
 TH 8
+       -1.53E+01  1.85E+00 -2.00E+01  3.73E+00 -1.78E+00 -2.12E+00 -2.44E+00  2.68E+01
 
 TH 9
+        1.42E+01  6.71E+00  6.78E+00  1.33E+02 -3.96E+01  4.30E+00 -8.78E-01  1.89E+01  2.87E+02
 
 TH10
+        6.67E+01  2.55E+01 -1.25E+01  1.88E+01 -5.80E+01  9.91E+00  2.02E+00  4.72E+00 -3.89E+00  7.22E+01
 
 TH11
+        4.11E+01 -2.56E+01 -1.37E+01 -2.69E+01  1.61E+01 -2.00E+01  8.84E-02 -1.41E+00 -1.66E+01  1.95E+01  1.69E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       28.974
Stop Time:
Wed Sep 29 19:18:32 CDT 2021
