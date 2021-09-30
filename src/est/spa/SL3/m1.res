Wed Sep 29 16:17:44 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat1.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m1.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1613.59870980953        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2437E+02  1.9265E+01  4.1778E+01  8.5064E+00 -4.3969E+01  4.8709E+01 -1.4478E-01 -7.1743E+00  1.2531E+01 -2.5831E+01
            -8.0914E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1623.97528120944        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0059E+00  1.0235E+00  9.7222E-01  1.0240E+00  1.0290E+00  9.9854E-01  1.0093E+00  1.0115E+00  9.6993E-01  1.0883E+00
             1.1843E+00
 PARAMETER:  1.0586E-01  1.2321E-01  7.1827E-02  1.2374E-01  1.2858E-01  9.8541E-02  1.0923E-01  1.1144E-01  6.9474E-02  1.8461E-01
             2.6913E-01
 GRADIENT:   5.6961E+00 -1.0902E+00  2.9544E+00 -1.4853E+00 -1.5085E+01  7.7546E-01 -3.5823E-01  7.1316E-02  5.6084E+00 -9.7625E+00
             4.7179E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1626.54841672133        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  1.0022E+00  1.2049E+00  1.2120E+00  9.3508E-01  1.2823E+00  9.8655E-01  8.0305E-01  1.4228E+00  1.0954E+00  1.4297E+00
             1.1492E+00
 PARAMETER:  1.0222E-01  2.8639E-01  2.9225E-01  3.2873E-02  3.4862E-01  8.6461E-02 -1.1933E-01  4.5263E-01  1.9112E-01  4.5749E-01
             2.3903E-01
 GRADIENT:  -7.3725E-01  1.5719E+01  2.8515E+00  2.0745E+01 -1.8918E+00 -3.4798E+00  1.1256E+00 -6.1710E+00  3.7937E+00  5.4663E+00
            -4.9336E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1627.65772235042        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  1.0035E+00  1.2947E+00  1.3238E+00  8.7133E-01  1.3601E+00  1.0050E+00  7.0985E-01  1.8877E+00  1.1463E+00  1.4382E+00
             1.1635E+00
 PARAMETER:  1.0347E-01  3.5830E-01  3.8053E-01 -3.7735E-02  4.0752E-01  1.0494E-01 -2.4271E-01  7.3537E-01  2.3654E-01  4.6337E-01
             2.5143E-01
 GRADIENT:   1.6635E+00  8.0531E+00 -9.1337E-02  1.0466E+01 -3.2468E+00  4.0047E+00 -1.3769E+00 -2.1956E-01 -1.0733E+00  1.2505E+00
             8.4049E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1627.96470240859        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  1.0038E+00  1.5256E+00  1.2444E+00  7.1878E-01  1.4421E+00  9.9457E-01  6.7727E-01  2.1983E+00  1.3148E+00  1.4774E+00
             1.1570E+00
 PARAMETER:  1.0376E-01  5.2238E-01  3.1869E-01 -2.3020E-01  4.6611E-01  9.4553E-02 -2.8968E-01  8.8770E-01  3.7372E-01  4.9027E-01
             2.4586E-01
 GRADIENT:   3.3221E-01  1.4422E+01  4.5593E+00  7.3515E+00 -6.0370E+00 -3.0995E-01 -4.8122E-01 -1.3500E+00 -8.6873E-01  9.5778E-01
            -1.6835E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1628.28977322609        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      883
 NPARAMETR:  1.0051E+00  1.7515E+00  8.3441E-01  5.6937E-01  1.4323E+00  1.0030E+00  6.6239E-01  1.9007E+00  1.5371E+00  1.4441E+00
             1.1605E+00
 PARAMETER:  1.0511E-01  6.6049E-01 -8.1032E-02 -4.6323E-01  4.5930E-01  1.0299E-01 -3.1190E-01  7.4225E-01  5.2988E-01  4.6748E-01
             2.4882E-01
 GRADIENT:   1.8749E-01  2.3740E+01  1.7054E+00  1.2014E+01 -5.9634E+00  2.1518E+00 -1.4082E+00 -1.1380E+00 -1.2477E+00  1.5781E+00
            -5.9997E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1628.44364958742        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1058
 NPARAMETR:  1.0056E+00  1.9009E+00  6.0358E-01  4.6561E-01  1.4386E+00  1.0017E+00  6.6256E-01  1.6588E+00  1.7329E+00  1.4113E+00
             1.1633E+00
 PARAMETER:  1.0563E-01  7.4235E-01 -4.0488E-01 -6.6441E-01  4.6366E-01  1.0168E-01 -3.1164E-01  6.0611E-01  6.4982E-01  4.4451E-01
             2.5125E-01
 GRADIENT:  -3.2500E-01  1.8491E+01 -7.8137E-01  1.1240E+01 -1.6636E+00  1.1521E+00 -1.0102E+00 -3.9292E-01 -9.7171E-01  5.3366E-01
             1.2761E-04

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1628.46147894270        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1233
 NPARAMETR:  1.0059E+00  2.0190E+00  4.6873E-01  3.8600E-01  1.4612E+00  9.9923E-01  6.5628E-01  1.4939E+00  1.9358E+00  1.3987E+00
             1.1648E+00
 PARAMETER:  1.0590E-01  8.0260E-01 -6.5772E-01 -8.5191E-01  4.7929E-01  9.9234E-02 -3.2117E-01  5.0136E-01  7.6054E-01  4.3557E-01
             2.5252E-01
 GRADIENT:  -4.7546E-01  2.1682E+01 -1.1681E+00  1.1178E+01  4.4183E-01 -4.5352E-02 -1.3401E+00 -1.4622E-01 -1.1171E+00 -7.5300E-01
            -7.8251E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1628.48156356787        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1413
 NPARAMETR:  1.0060E+00  2.0772E+00  4.0837E-01  3.4511E-01  1.4778E+00  9.9833E-01  6.5387E-01  1.3986E+00  2.0647E+00  1.3990E+00
             1.1654E+00
 PARAMETER:  1.0595E-01  8.3103E-01 -7.9557E-01 -9.6389E-01  4.9056E-01  9.8329E-02 -3.2484E-01  4.3550E-01  8.2497E-01  4.3574E-01
             2.5303E-01
 GRADIENT:  -3.7991E-01  2.0020E+01 -1.3281E+00  9.9640E+00  1.2368E+00 -4.2385E-01 -1.0428E+00  2.2080E-02 -9.9467E-01 -1.1076E+00
            -6.8880E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1628.58706401845        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1594
 NPARAMETR:  1.0066E+00  2.1166E+00  3.8044E-01  3.0929E-01  1.4888E+00  9.9966E-01  6.5461E-01  1.3155E+00  2.1676E+00  1.4109E+00
             1.1657E+00
 PARAMETER:  1.0657E-01  8.4980E-01 -8.6643E-01 -1.0735E+00  4.9795E-01  9.9661E-02 -3.2371E-01  3.7425E-01  8.7364E-01  4.4420E-01
             2.5334E-01
 GRADIENT:   1.1754E+00  1.2005E+01  2.5827E+00  9.6782E-01 -5.4477E+00  1.5944E-01  1.9873E-01 -5.1625E-01 -3.7716E+00 -3.5028E-01
             1.5011E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1628.73683848986        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1777
 NPARAMETR:  1.0057E+00  2.1125E+00  3.6377E-01  3.0126E-01  1.4929E+00  9.9946E-01  6.4890E-01  1.2570E+00  2.2557E+00  1.4021E+00
             1.1633E+00
 PARAMETER:  1.0564E-01  8.4790E-01 -9.1124E-01 -1.0998E+00  5.0073E-01  9.9457E-02 -3.3247E-01  3.2874E-01  9.1348E-01  4.3796E-01
             2.5128E-01
 GRADIENT:  -4.5909E-01 -1.9927E+01 -5.0589E-01  6.4686E-01  1.0026E-01  4.3811E-02 -3.6705E-01  5.6328E-02  9.8632E-01 -7.2197E-01
            -3.3708E-02

0ITERATION NO.:   52    OBJECTIVE VALUE:  -1628.73721973901        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1834
 NPARAMETR:  1.0057E+00  2.1126E+00  3.6377E-01  3.0126E-01  1.4927E+00  9.9943E-01  6.4890E-01  1.2402E+00  2.2557E+00  1.4021E+00
             1.1634E+00
 PARAMETER:  1.0564E-01  8.4790E-01 -9.1123E-01 -1.0998E+00  5.0060E-01  9.9434E-02 -3.3247E-01  3.1526E-01  9.1348E-01  4.3796E-01
             2.5132E-01
 GRADIENT:  -4.7323E-01 -1.9349E+01 -3.0992E-01  5.4302E-01  1.6329E-02  3.5183E-02 -4.4345E-01 -1.6460E-03  8.8861E-01 -7.2817E-01
            -3.5210E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1834
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2283E-03 -4.9618E-02 -1.9362E-02  4.6135E-02 -5.8988E-02
 SE:             2.9854E-02  2.3174E-02  6.4893E-03  2.1373E-02  2.1929E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6718E-01  3.2264E-02  2.8482E-03  3.0883E-02  7.1457E-03

 ETASHRINKSD(%)  1.0000E-10  2.2366E+01  7.8260E+01  2.8398E+01  2.6535E+01
 ETASHRINKVR(%)  1.0000E-10  3.9729E+01  9.5274E+01  4.8732E+01  4.6029E+01
 EBVSHRINKSD(%)  5.7332E-01  1.9736E+01  8.0374E+01  3.1905E+01  2.3551E+01
 EBVSHRINKVR(%)  1.1433E+00  3.5577E+01  9.6148E+01  5.3631E+01  4.1556E+01
 RELATIVEINF(%)  9.8820E+01  7.8397E+00  7.1603E-01  5.5818E+00  2.7698E+01
 EPSSHRINKSD(%)  4.3914E+01
 EPSSHRINKVR(%)  6.8543E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1628.7372197390116     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -893.58639317527343     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.23
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.96
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1628.737       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  2.11E+00  3.64E-01  3.01E-01  1.49E+00  9.99E-01  6.49E-01  1.24E+00  2.26E+00  1.40E+00  1.16E+00
 


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
+        9.63E+06
 
 TH 2
+       -5.71E+05  4.23E+02
 
 TH 3
+        2.30E+04  3.66E+05  9.82E+05
 
 TH 4
+       -3.10E+06 -1.82E+05 -7.69E+03  1.21E+03
 
 TH 5
+       -1.37E+06 -1.29E+02 -4.40E+05  9.74E+01  1.95E+05
 
 TH 6
+        1.84E+00 -1.41E+00 -3.93E+02  3.93E+02 -1.76E+02  1.95E+02
 
 TH 7
+       -4.74E+06  2.81E+05 -4.35E+00  3.04E+06 -6.74E+05  6.09E+02  2.34E+06
 
 TH 8
+       -2.63E+06 -6.92E+00  8.38E+05  8.35E+05  7.44E+05 -3.39E+02 -5.09E+01  7.16E+05
 
 TH 9
+        5.01E+05  2.97E+04 -2.66E+03  1.61E+05 -1.41E+05 -3.23E-01  9.61E+00  1.36E+05  2.60E+04
 
 TH10
+        2.66E+02  9.88E+04 -1.44E+01 -5.33E+05 -2.37E+05  5.35E-01  3.91E+00 -4.54E+05  2.40E+00  4.48E+01
 
 TH11
+        3.50E+06  2.08E+05 -2.24E+06  1.13E+06  3.77E+02  3.12E+00 -1.72E+06 -9.54E+05 -1.82E+05  6.05E+05  1.63E+02
 
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
 #CPUT: Total CPU Time in Seconds,       32.235
Stop Time:
Wed Sep 29 16:18:18 CDT 2021
