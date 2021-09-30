Wed Sep 29 13:58:32 CDT 2021
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
$DATA ../../../../data/spa/S1/dat3.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m3.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1695.84063129620        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9633E+02 -3.9679E+01 -2.5358E+01 -1.2567E+00  3.9472E+01  7.0020E+01  6.8057E+00  3.7962E+00  9.2522E+00  2.6678E+01
            -1.9878E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1704.22665845708        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0200E+00  1.0867E+00  1.0531E+00  1.0167E+00  1.0093E+00  9.9993E-01  9.3351E-01  1.0272E+00  9.9222E-01  7.6630E-01
             1.0542E+00
 PARAMETER:  1.1980E-01  1.8312E-01  1.5173E-01  1.1656E-01  1.0929E-01  9.9928E-02  3.1192E-02  1.2684E-01  9.2193E-02 -1.6619E-01
             1.5280E-01
 GRADIENT:  -9.7608E+00  6.7814E+00  8.3957E+00  1.1198E+01  8.7381E+00 -1.0028E+00 -5.7558E-01 -8.5314E+00 -3.9615E+00 -3.9039E+00
            -6.7788E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1705.24180282088        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  1.0277E+00  1.2554E+00  9.6875E-01  9.2002E-01  1.0223E+00  1.0051E+00  8.7412E-01  1.2776E+00  1.0497E+00  7.0732E-01
             1.0644E+00
 PARAMETER:  1.2729E-01  3.2747E-01  6.8253E-02  1.6638E-02  1.2205E-01  1.0506E-01 -3.4534E-02  3.4497E-01  1.4852E-01 -2.4627E-01
             1.6245E-01
 GRADIENT:   4.2021E+00  3.3563E+01  1.0449E+01  2.3974E+01 -2.1378E+01  2.1394E-01  6.5865E-01 -1.4661E+00 -6.0097E+00 -2.8613E+00
            -2.1483E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1706.97087931574        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      552
 NPARAMETR:  1.0257E+00  1.4577E+00  7.5945E-01  7.5972E-01  1.0479E+00  1.0062E+00  7.5348E-01  1.0810E+00  1.2453E+00  7.8113E-01
             1.0669E+00
 PARAMETER:  1.2537E-01  4.7688E-01 -1.7517E-01 -1.7480E-01  1.4682E-01  1.0617E-01 -1.8305E-01  1.7790E-01  3.1935E-01 -1.4702E-01
             1.6476E-01
 GRADIENT:  -2.2939E+00 -2.7453E+00  4.4439E+00 -2.9902E-01 -1.5373E+01  1.3981E-02 -1.8827E+00 -3.6511E-01  9.9132E-01  3.5062E+00
             2.1848E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1708.84233795657        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      729
 NPARAMETR:  1.0288E+00  1.7709E+00  4.9595E-01  5.6203E-01  1.0991E+00  1.0061E+00  7.1746E-01  8.1186E-01  1.4857E+00  7.3791E-01
             1.0618E+00
 PARAMETER:  1.2840E-01  6.7148E-01 -6.0128E-01 -4.7620E-01  1.9447E-01  1.0608E-01 -2.3204E-01 -1.0842E-01  4.9590E-01 -2.0393E-01
             1.5998E-01
 GRADIENT:   2.2964E+00  2.0345E+01  7.3036E-01  1.5547E+01  2.3563E+00 -5.8838E-01  9.1236E-01  1.1276E-01 -2.4161E+00 -1.6325E+00
            -2.3359E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1709.05397427815        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:      923
 NPARAMETR:  1.0288E+00  1.7521E+00  4.9167E-01  5.5856E-01  1.0945E+00  1.0092E+00  7.1062E-01  8.0801E-01  1.4855E+00  7.5489E-01
             1.0683E+00
 PARAMETER:  1.2842E-01  6.6079E-01 -6.0995E-01 -4.8240E-01  1.9027E-01  1.0911E-01 -2.4162E-01 -1.1318E-01  4.9578E-01 -1.8118E-01
             1.6607E-01
 GRADIENT:   2.5961E+00 -1.3203E+01 -2.2957E+00  4.8167E+00  5.0491E+00  6.9834E-01  4.3672E-02  6.1505E-01 -1.1518E+00  1.5335E+00
             2.0072E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1709.07295425438        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1106             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0277E+00  1.7582E+00  4.9166E-01  5.5839E-01  1.0921E+00  1.0079E+00  7.1183E-01  8.0545E-01  1.4859E+00  7.4453E-01
             1.0650E+00
 PARAMETER:  1.2731E-01  6.6426E-01 -6.0996E-01 -4.8270E-01  1.8815E-01  1.0787E-01 -2.3992E-01 -1.1636E-01  4.9605E-01 -1.9500E-01
             1.6299E-01
 GRADIENT:   5.1175E+02  6.5084E+02  6.2117E+00  1.1928E+02  1.0567E+01  6.7624E+01  1.4494E+01  4.6113E-01  2.0963E+01  9.4109E-01
             1.4105E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1709.08216416279        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1267
 NPARAMETR:  1.0251E+00  1.7539E+00  4.9150E-01  5.5631E-01  1.0920E+00  1.0060E+00  7.1121E-01  8.0160E-01  1.4828E+00  7.4425E-01
             1.0649E+00
 PARAMETER:  1.2475E-01  6.6184E-01 -6.1030E-01 -4.8642E-01  1.8798E-01  1.0601E-01 -2.4079E-01 -1.2114E-01  4.9396E-01 -1.9537E-01
             1.6289E-01
 GRADIENT:  -5.4144E+00 -9.3661E+00  3.3947E-01  2.2368E+00  5.3970E-01 -5.5988E-01 -2.4417E-01  3.8960E-01 -2.1256E+00  3.1657E-01
             2.1258E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1709.09945093747        NO. OF FUNC. EVALS.: 205
 CUMULATIVE NO. OF FUNC. EVALS.:     1472             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0288E+00  1.7550E+00  4.8925E-01  5.5428E-01  1.0899E+00  1.0095E+00  7.1330E-01  8.0099E-01  1.4773E+00  7.4008E-01
             1.0644E+00
 PARAMETER:  1.2839E-01  6.6246E-01 -6.1489E-01 -4.9009E-01  1.8609E-01  1.0948E-01 -2.3785E-01 -1.2190E-01  4.9024E-01 -2.0100E-01
             1.6240E-01
 GRADIENT:   5.1924E+02  6.4147E+02  7.3210E+00  1.1503E+02  9.3126E+00  6.9163E+01  1.4461E+01  4.3623E-01  1.9397E+01  8.0425E-01
             1.1909E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1709.10459743973        NO. OF FUNC. EVALS.: 170
 CUMULATIVE NO. OF FUNC. EVALS.:     1642
 NPARAMETR:  1.0284E+00  1.7561E+00  4.8913E-01  5.5425E-01  1.0904E+00  1.0084E+00  7.1306E-01  7.9776E-01  1.4784E+00  7.3955E-01
             1.0645E+00
 PARAMETER:  1.2803E-01  6.6308E-01 -6.1512E-01 -4.9014E-01  1.8658E-01  1.0838E-01 -2.3818E-01 -1.2595E-01  4.9095E-01 -2.0171E-01
             1.6247E-01
 GRADIENT:   1.8858E+00 -7.8071E+00  1.4355E+00  7.0679E-01 -1.5612E+00  4.1125E-01  3.6266E-02  3.2964E-01 -2.9440E+00 -1.8190E-02
            -1.6842E-01

0ITERATION NO.:   46    OBJECTIVE VALUE:  -1709.10459743973        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1670
 NPARAMETR:  1.0284E+00  1.7561E+00  4.8913E-01  5.5425E-01  1.0904E+00  1.0084E+00  7.1306E-01  7.9776E-01  1.4784E+00  7.3955E-01
             1.0645E+00
 PARAMETER:  1.2803E-01  6.6308E-01 -6.1512E-01 -4.9014E-01  1.8658E-01  1.0838E-01 -2.3818E-01 -1.2595E-01  4.9095E-01 -2.0171E-01
             1.6247E-01
 GRADIENT:  -8.1056E-01  4.0798E-01  1.5886E+04  3.9828E+04 -1.5322E+00  8.2392E-02 -2.2889E-02 -1.5508E+05  3.9744E+04 -1.9605E-02
            -1.6727E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1670
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.0803E-04 -2.8358E-02 -1.7467E-02  2.3565E-02 -3.7313E-02
 SE:             2.9854E-02  2.3666E-02  7.8263E-03  2.3597E-02  1.9754E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7841E-01  2.3082E-01  2.5626E-02  3.1797E-01  5.8904E-02

 ETASHRINKSD(%)  1.0000E-10  2.0715E+01  7.3781E+01  2.0946E+01  3.3822E+01
 ETASHRINKVR(%)  1.0000E-10  3.7139E+01  9.3126E+01  3.7505E+01  5.6204E+01
 EBVSHRINKSD(%)  4.6524E-01  2.0747E+01  7.5518E+01  2.1919E+01  3.3698E+01
 EBVSHRINKVR(%)  9.2833E-01  3.7189E+01  9.4006E+01  3.9033E+01  5.6040E+01
 RELATIVEINF(%)  9.9044E+01  4.0722E+00  5.1493E-01  4.2705E+00  8.4147E+00
 EPSSHRINKSD(%)  4.3750E+01
 EPSSHRINKVR(%)  6.8360E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1709.1045974397321     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -973.95377087599388     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.89
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.55
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1709.105       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.76E+00  4.89E-01  5.54E-01  1.09E+00  1.01E+00  7.13E-01  7.98E-01  1.48E+00  7.40E-01  1.06E+00
 


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
+        1.02E+03
 
 TH 2
+       -7.09E+00  4.66E+02
 
 TH 3
+        4.29E+02 -5.20E+02  5.40E+06
 
 TH 4
+        4.85E+02 -5.06E+02  5.98E+06  6.61E+06
 
 TH 5
+       -5.26E+00 -2.85E+02  1.73E+02  9.69E+02  7.64E+02
 
 TH 6
+        4.10E-01 -1.12E+00  8.43E+02  9.88E+02 -3.52E-01  1.92E+02
 
 TH 7
+        6.87E-01  1.14E+01  2.23E+02  2.38E+02 -1.20E+01  4.99E-01  1.69E+02
 
 TH 8
+       -1.33E+03  2.21E+03 -1.62E+07 -1.79E+07 -1.82E+03 -2.63E+03 -6.79E+02  4.84E+07
 
 TH 9
+        1.74E+02 -3.25E+02  3.90E+03 -1.01E+03  2.53E+02  3.43E+02  1.12E+02 -4.85E+03  9.26E+05
 
 TH10
+       -3.35E-03 -9.70E+00  2.17E+02  2.51E+02 -7.84E+01  1.43E-01  2.64E+01 -7.16E+02  1.05E+02  8.74E+01
 
 TH11
+       -6.86E+00 -1.62E+01 -4.91E+04  1.04E+07 -1.79E+01  2.04E+00  9.66E+00  1.47E+05 -2.03E+04  2.33E+01  1.90E+02
 
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
 #CPUT: Total CPU Time in Seconds,       30.468
Stop Time:
Wed Sep 29 13:59:04 CDT 2021
