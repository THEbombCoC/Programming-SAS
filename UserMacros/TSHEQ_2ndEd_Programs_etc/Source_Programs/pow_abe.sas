%macro pow_abe(M,N,ALPHA,DEL_0,DEL,SIG);
data pow_abe;
M= &M; N= &N; ALPHA= &ALPHA; DEL_0=&DEL_0; DEL=&DEL; SIG=&SIG;
keep M N ALPHA DEL_0 DEL SIG POW_ABE;
MPLN=M+N;  LCON=.5*log(MPLN-2)+(2-MPLN/2)*log(2)-lgamma(MPLN/2-1);
SQMN=sqrt(M*N/(MPLN)); T_AL=tinv(1-ALPHA,MPLN-2);
VM= SQMN*2*(DEL_0/SIG)/T_AL;

      A= VM/2; B= VM ;
      array C{48}  C1-C48;  array G{48}  G1-G48;
      C1=.5*.999689503883230766828E0*B;
      G1=.5*.000796792065552012429E0;
      C2=.5*.998364375863181677724E0*B;
      G2=.5*.001853960788946921732E0;
      C3=.5*.995981842987209290650E0*B;
      G3=.5*.002910731817934946408E0;
      C4=.5*.992543900323762624572E0*B;
      G4=.5*.003964554338444686674E0;
      C5=.5*.988054126329623799481E0*B;
      G5=.5*.005014202742927517693E0;
      C6=.5*.982517263563014677447E0*B;
      G6=.5*.006058545504235961683E0;
      C7=.5*.975939174585136466453E0*B;
      G7=.5*.007096470791153865269E0;
      C8=.5*.968326828463264212174E0*B;
      G8=.5*.008126876925698759217E0;
      C9=.5*.959688291448742539300E0*B;
      G9=.5*.009148671230783386633E0;
      C10=.5*.950032717784437635756E0*B;
      G10=.5*.010160770535008415758E0;
      C11=.5*.939370339752755216932E0*B;
      G11=.5*.011162102099838498591E0;
      C12=.5*.927712456722308690965E0*B;
      G12=.5*.012151604671088319635E0;
      C13=.5*.915071423120898074206E0*B;
      G13=.5*.013128229566961572637E0;
      C14=.5*.901460635315852341319E0*B;
      G14=.5*.014090941772314860916E0;
      C15=.5*.886894517402420416057E0*B;
      G15=.5*.015038721026994938006E0;
      C16=.5*.871388505909296502874E0*B;
      G16=.5*.015970562902562291381E0;
      C17=.5*.854959033434601455463E0*B;
      G17=.5*.016885479864245172450E0;
      C18=.5*.837623511228187121494E0*B;
      G18=.5*.017782502316045260838E0;
      C19=.5*.819400310737931675539E0*B;
      G19=.5*.018660679627411467385E0;
      C20=.5*.800308744139140817229E0*B;
      G20=.5*.019519081140145022410E0;
      C21=.5*.780369043867433217604E0*B;
      G21=.5*.020356797154333324595E0;
      C22=.5*.759602341176647498703E0*B;
      G22=.5*.021172939892191298988E0;
      C23=.5*.738030643744400132851E0*B;
      G23=.5*.021966644438744349195E0;
      C24=.5*.715676812348967626225E0*B;
      G24=.5*.022737069658329374001E0;
      C25=.5*.692564536642171561344E0*B;
      G25=.5*.023483399085926219842E0;
      C26=.5*.668718310043916153953E0*B;
      G26=.5*.024204841792364691282E0;
      C27=.5*.644163403784967106798E0*B;
      G27=.5*.024900633222483610288E0;
      C28=.5*.618925840125468570386E0*B;
      G28=.5*.025570036005349361499E0;
      C29=.5*.593032364777572080684E0*B;
      G29=.5*.026212340735672413913E0;
      C30=.5*.566510418561397168404E0*B;
      G30=.5*.026826866725591762198E0;
      C31=.5*.539388108324357436227E0*B;
      G31=.5*.027412962726029242823E0;
      C32=.5*.511694177154667673586E0*B;
      G32=.5*.027970007616848334440E0;
      C33=.5*.483457973920596359768E0*B;
      G33=.5*.028497411065085385646E0;
      C34=.5*.454709422167743008636E0*B;
      G34=.5*.028994614150555236543E0;
      C35=.5*.425478988407300545365E0*B;
      G35=.5*.029461089958167905970E0;
      C36=.5*.395797649828908603285E0*B;
      G36=.5*.029896344136328385984E0;
      C37=.5*.365696861472313635031E0*B;
      G37=.5*.030299915420827593794E0;
      C38=.5*.335208522892625422616E0*B;
      G38=.5*.030671376123669149014E0;
      C39=.5*.304364944354496353024E0*B;
      G39=.5*.031010332586313837423E0;
      C40=.5*.273198812591049141487E0*B;
      G40=.5*.031316425596861355813E0;
      C41=.5*.241743156163840012328E0*B;
      G41=.5*.031589330770727168558E0;
      C42=.5*.210031310460567203603E0*B;
      G42=.5*.031828758894411006535E0;
      C43=.5*.178096882367618602759E0*B;
      G43=.5*.032034456231992663218E0;
      C44=.5*.145973714654896941989E0*B;
      G44=.5*.032206204794030250669E0;
      C45=.5*.113695850110665920911E0*B;
      G45=.5*.032343822568575928429E0;
      C46=.5*.081297495464425558994E0*B;
      G46=.5*.032447163714064269364E0;
      C47=.5*.048812985136049731112E0*B;
      G47=.5*.032516118713868835987E0;
      C48=.5*.016276744849602969579E0*B;
      G48=.5*.032550614492363166242E0;
      Y= 0;
      do J= 1 to 48;
      CJ= C{J};
      VR= A+CJ; UR=sqrt(MPLN-2)*VR;
      NORMR2=probnorm(SQMN*2*(DEL_0-DEL)/SIG-VR*T_AL);
      NORMR1=probnorm(-SQMN*2*(DEL_0+DEL)/SIG+VR*T_AL);
      NORMR=NORMR2-NORMR1;
      if NORMR=0 then goto S1;
      ITGDRLOG  =log(NORMR)+LCON-UR**2/2+(MPLN-3)*log(UR) ;
      ITGDR= exp(ITGDRLOG);
  S1: VL= A-CJ; UL=sqrt(MPLN-2)*VL;
      NORML2=probnorm(SQMN*2*(DEL_0-DEL)/SIG-VL*T_AL);
      NORML1=probnorm(-SQMN*2*(DEL_0+DEL)/SIG+VL*T_AL);
      NORML=NORML2-NORML1;
      if NORML=0 then goto S2;
      ITGDLLOG  =log(NORML)+LCON-UL**2/2+(MPLN-3)*log(UL) ;
      ITGDL= exp(ITGDLLOG);
      Y= Y + G{J}*(ITGDR+ITGDL);
  S2: end;
POW_ABE=B*Y;
run;

proc print data= POW_ABE noobs;
format POW_ABE  E20.; run;
%mend POW_ABE;

%POW_ABE(12,13,.05,log(1.25),DEL_0/2,.175624);