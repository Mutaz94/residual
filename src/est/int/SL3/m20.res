Wed Sep 29 04:02:41 CDT 2021
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
$DATA ../../../../data/int/SL3/dat20.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      982
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      882
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
 RAW OUTPUT FILE (FILE): m20.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   664.977177904467        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9858E+02  1.3577E+02  7.6925E+01  1.4248E+02  2.2667E+02  3.0780E+01 -1.0161E+02 -4.2270E+02 -1.7684E+02 -6.6534E+01
            -8.0712E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2274.27392607643        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.8306E-01  1.0175E+00  1.2422E+00  1.0165E+00  9.6895E-01  8.9406E-01  9.8157E-01  1.0533E+00  1.1101E+00  9.8413E-01
             5.2744E+00
 PARAMETER:  8.2912E-02  1.1734E-01  3.1689E-01  1.1635E-01  6.8459E-02 -1.1977E-02  8.1399E-02  1.5188E-01  2.0444E-01  8.3998E-02
             1.7629E+00
 GRADIENT:  -1.0507E+02 -3.6197E+01 -1.0729E+00 -5.6390E+01 -1.3019E+01 -3.0894E+01  1.2523E+01  4.5588E+00  2.5217E+01  1.3392E+01
             8.4067E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2349.18222297041        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  9.0235E-01  9.6156E-01  2.3780E+01  1.2023E+00  2.4116E+00  1.2394E+00  9.2261E-01  7.3648E+00  9.4026E-01  3.3072E+00
             4.3312E+00
 PARAMETER: -2.7513E-03  6.0804E-02  3.2689E+00  2.8420E-01  9.8030E-01  3.1460E-01  1.9450E-02  2.0967E+00  3.8404E-02  1.2961E+00
             1.5658E+00
 GRADIENT:  -1.3736E+02 -4.3203E+00 -1.3723E+01  4.8364E+01  3.4868E+01  6.6897E+01  2.6038E+00  3.8631E+01  1.5109E+01  1.1201E+02
             6.6082E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2572.71862834320        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  9.5798E-01  9.4495E-01  2.1222E+00  1.0677E+00  1.1258E+00  9.5728E-01  1.0487E+00  2.3519E+00  9.5118E-01  1.1104E+00
             2.8178E+00
 PARAMETER:  5.7067E-02  4.3380E-02  8.5246E-01  1.6553E-01  2.1849E-01  5.6345E-02  1.4758E-01  9.5524E-01  4.9950E-02  2.0473E-01
             1.1360E+00
 GRADIENT:  -1.0061E+01 -9.4342E+00 -3.0175E+00  5.7156E+00 -8.0796E+00 -7.8785E+00  6.2015E+00  2.9932E+00  3.4170E+00  3.1683E+00
            -1.5100E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2576.14600928394        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  9.6149E-01  1.0727E+00  2.1418E+00  9.8905E-01  1.2014E+00  9.7620E-01  6.8893E-01  2.3006E+00  1.0676E+00  1.2166E+00
             2.8243E+00
 PARAMETER:  6.0730E-02  1.7020E-01  8.6166E-01  8.8988E-02  2.8351E-01  7.5910E-02 -2.7262E-01  9.3319E-01  1.6543E-01  2.9610E-01
             1.1383E+00
 GRADIENT:  -5.1525E-01  4.8985E+00 -3.7210E-01 -5.9964E-01 -1.9041E+00 -1.3342E-01  9.1576E-01 -1.0856E-01 -1.2604E+00  7.0244E-01
             7.0844E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2581.94143811200        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      447
 NPARAMETR:  9.9276E-01  1.1385E+00  3.3492E+00  9.6349E-01  1.4176E+00  1.0197E+00  4.1387E-01  3.1078E+00  1.1950E+00  1.3881E+00
             2.8436E+00
 PARAMETER:  9.2739E-02  2.2973E-01  1.3087E+00  6.2805E-02  4.4898E-01  1.1947E-01 -7.8221E-01  1.2339E+00  2.7816E-01  4.2794E-01
             1.1451E+00
 GRADIENT:   7.8229E+00 -2.4636E+00 -4.3407E+00  3.6624E-01  6.4725E+00  4.4289E+00  7.4157E-01  2.7244E+00  1.7852E+00  2.1003E+00
             7.2801E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2582.30050133502        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      622
 NPARAMETR:  9.9021E-01  1.0745E+00  3.6652E+00  1.0052E+00  1.3866E+00  1.0070E+00  3.6047E-01  3.1163E+00  1.1616E+00  1.3532E+00
             2.8344E+00
 PARAMETER:  9.0159E-02  1.7190E-01  1.3989E+00  1.0514E-01  4.2683E-01  1.0700E-01 -9.2034E-01  1.2367E+00  2.4976E-01  4.0250E-01
             1.1418E+00
 GRADIENT:   2.9705E+00  1.4347E+00  1.4049E+00 -1.1511E+00 -5.0582E+00 -1.2336E-01  5.1979E-01  4.6718E-01  1.5185E+00  4.3575E-01
             1.3516E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2582.45568297573        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      797
 NPARAMETR:  9.8886E-01  1.0200E+00  3.6872E+00  1.0397E+00  1.3711E+00  1.0073E+00  2.0499E-01  3.0822E+00  1.1455E+00  1.3263E+00
             2.8332E+00
 PARAMETER:  8.8798E-02  1.1982E-01  1.4049E+00  1.3889E-01  4.1563E-01  1.0729E-01 -1.4848E+00  1.2257E+00  2.3588E-01  3.8238E-01
             1.1414E+00
 GRADIENT:   1.9079E-01 -1.1906E+00 -4.4805E-02 -6.3340E-01  5.1650E-01 -5.3266E-02  8.5216E-02 -1.5131E-01  1.8255E-01  2.4657E-01
             3.1154E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2582.47776462297        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      972
 NPARAMETR:  9.8882E-01  1.0140E+00  3.6874E+00  1.0422E+00  1.3667E+00  1.0076E+00  5.4323E-02  3.0977E+00  1.1550E+00  1.3202E+00
             2.8329E+00
 PARAMETER:  8.8761E-02  1.1387E-01  1.4049E+00  1.4135E-01  4.1242E-01  1.0760E-01 -2.8128E+00  1.2306E+00  2.4411E-01  3.7777E-01
             1.1413E+00
 GRADIENT:   1.1447E-01 -4.5070E-01 -4.3652E-02 -3.5000E-01  4.9055E-02  2.2255E-02  4.0164E-03  3.2985E-02  1.7339E-01  7.0522E-02
             1.1512E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2582.47846133585        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1149
 NPARAMETR:  9.8877E-01  1.0134E+00  3.6900E+00  1.0428E+00  1.3665E+00  1.0076E+00  1.2595E-02  3.0981E+00  1.1551E+00  1.3194E+00
             2.8329E+00
 PARAMETER:  8.8711E-02  1.1329E-01  1.4056E+00  1.4186E-01  4.1228E-01  1.0756E-01 -4.2745E+00  1.2308E+00  2.4415E-01  3.7720E-01
             1.1413E+00
 GRADIENT:  -6.5939E-03 -4.2509E-02 -2.2310E-03 -1.4965E-02  1.1483E-02 -3.1365E-03  3.3244E-04  3.0820E-03  3.3223E-02 -7.1892E-04
             1.2392E-02

0ITERATION NO.:   48    OBJECTIVE VALUE:  -2582.47847440943        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1242
 NPARAMETR:  9.8878E-01  1.0134E+00  3.6900E+00  1.0428E+00  1.3665E+00  1.0076E+00  1.0000E-02  3.0980E+00  1.1550E+00  1.3194E+00
             2.8329E+00
 PARAMETER:  8.8712E-02  1.1330E-01  1.4056E+00  1.4186E-01  4.1228E-01  1.0756E-01 -4.5990E+00  1.2308E+00  2.4413E-01  3.7721E-01
             1.1413E+00
 GRADIENT:  -4.6020E-03 -2.5619E-02 -1.2328E-03 -8.4376E-03  6.5111E-03 -2.3715E-03  0.0000E+00  1.8227E-03  2.0745E-02 -5.4057E-04
             8.7824E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1242
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.2144E-03 -8.0599E-04 -3.4048E-02 -3.5391E-04 -2.5132E-02
 SE:             2.9389E-02  2.2962E-04  1.8178E-02  2.8125E-02  2.3149E-02
 N:                     100         100         100         100         100

 P VAL.:         9.1290E-01  4.4805E-04  6.1069E-02  9.8996E-01  2.7764E-01

 ETASHRINKSD(%)  1.5429E+00  9.9231E+01  3.9100E+01  5.7786E+00  2.2448E+01
 ETASHRINKVR(%)  3.0620E+00  9.9994E+01  6.2912E+01  1.1223E+01  3.9857E+01
 EBVSHRINKSD(%)  1.8027E+00  9.9346E+01  4.1731E+01  5.8870E+00  1.9987E+01
 EBVSHRINKVR(%)  3.5730E+00  9.9996E+01  6.6047E+01  1.1427E+01  3.5979E+01
 RELATIVEINF(%)  9.6321E+01  6.9236E-04  1.6228E+01  1.6205E+01  3.2647E+01
 EPSSHRINKSD(%)  1.6533E+01
 EPSSHRINKVR(%)  3.0333E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          882
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1621.0075725730426     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2582.4784744094300     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -961.47090183638738     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    31.24
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.83
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2582.478       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.89E-01  1.01E+00  3.69E+00  1.04E+00  1.37E+00  1.01E+00  1.00E-02  3.10E+00  1.16E+00  1.32E+00  2.83E+00
 


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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.08E+03
 
 TH 2
+       -2.09E+01  5.05E+02
 
 TH 3
+        6.02E-02  1.04E+01  3.24E+00
 
 TH 4
+       -2.13E+01  4.76E+02 -2.26E+00  6.80E+02
 
 TH 5
+       -2.43E+00 -1.21E+02 -1.57E+01 -3.20E+01  2.17E+02
 
 TH 6
+        5.66E+00 -7.35E+00 -7.06E-02 -6.83E+00 -1.54E+00  1.82E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+       -1.47E-01 -5.78E+00 -1.63E+00 -3.87E-01  3.77E+00 -8.33E-02  0.00E+00  4.57E+00
 
 TH 9
+        5.26E+00 -8.63E+01  2.95E-01  9.33E+00  1.65E+00  1.85E+00  0.00E+00 -9.58E-02  1.15E+02
 
 TH10
+        1.25E+00 -1.58E+01 -2.31E+00  4.84E+00 -2.22E+01  5.57E-01  0.00E+00  2.20E+00 -1.56E-01  5.00E+01
 
 TH11
+       -1.57E+01 -2.42E+01  8.64E-02 -1.88E+01 -1.16E+00  1.69E+00  0.00E+00  2.57E+00  7.04E+00  5.92E+00  1.40E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       45.174
Stop Time:
Wed Sep 29 04:03:28 CDT 2021
