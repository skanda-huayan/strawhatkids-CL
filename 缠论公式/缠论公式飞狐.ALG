����           <M                     P_CHLDPCHLD<M   �]EM2[k�b���Ɓ�!<MK   ������8�n'���]EM2J����I�u�MW�Fg�6�i LhX                                        	   
                  �           �RPP�3s�Q�X�nt8oKp_�S�ӡ��m�.n�n����O��_��_��A�갬�PjЪ̛P���oZ�ow_�O��ۼ�W�7\��rX��i����gέ螙�]������־��,� ����� ��,���@(]��1�5�l�,��� �G�;�O���C�P��v�bjboe�s�vjA���[�=w���þ����[��X���ۣ�_�-���              {����ֶ����߷���}
REFLINE: 0,2,4,6,8,9;

����״̬:"chanlun@JXZT",coloryellow;
ѹ����:"chanlun@JXYL",colorgreen, linethick1;
֧����:"chanlun@JXZC",colormagenta, linethick1;
ѹ����2:="chanlun@JXYL2";
֧����2:="chanlun@JXZC2";

{������ʾ}
M5:1, colorwhite, linedot;
M13:2, coloryellow, linedot;
M34:4, colormagenta, linedot;
M89:6, colorgray, linedot;
M233:8, colorf0f000, linedot;

DRAWTEXT(BARSTATUS=2, M13, '13����'), coloryellow;
DRAWTEXT(BARSTATUS=2, M34, '34����'), coloryellow;
DRAWTEXT(BARSTATUS=2, M89, '89����'), coloryellow;
DRAWTEXT(BARSTATUS=2, M233, '233����'), coloryellow;

EXPLAIN(ѹ����<>9,  'ѹ������:'+NUMTOSTR(ѹ����2,0));
EXPLAIN(ѹ����=9,  'ѹ������: ��');
EXPLAIN(֧����<>0, '֧�ž���:'+NUMTOSTR(֧����2,0));
EXPLAIN(֧����=0, '֧�ž���: ��');   chanlunJXZTchanlunJXYLchanlunJXZCchanlunJXYL2chanlunJXZC2   ����״̬   ��          ѹ����   �          ֧����  � �         M5
   ���         M13
   ��          M34
   � �         M89
   ���         M233
    ��             ��              ��              ��              ��              ����            ����            ����            ����              
֧��ѹ����SPP                                   @  �@  �@   A  A        <M                     P_MACDPMACD><M   ���;}�/c�ӽ���/#<-�+%V��                                                  	   
               #          �UPP��sL�� OK�N_�W��S�Ƒ���.�Ε�,�O4W�[��[�zՠ����@m�8��/q>�E��Y�պX-=Q,u�1���ݶ��a�����I,��(���jqop�,��iA���m ������� W�މ.E�_�O��o���>ƺ_�����j�S\��M��, �����'SX��-�O��k��e׆<��U��?��'8Oq�.w��Q�.�H7���4j��$??9�<����v!Z��[!�,?#�ˡ�����Ʃ���~t�.�*�i�&S�}�2���            	  {PP��ɫMACD}
{�������ÿ�ʼ�������ǻ�}
{INPUT:short(12, 0, 300), long(26, 0, 300), mid(9, 0, 300);}
short:=12; long:=26; mid:=9;
{�������ý���}

DIF : EMA(CLOSE,short) - EMA(CLOSE,long);
DEA  : EMA(DIF,mid);
MACD : 2*(DIF-DEA), COLORSTICK;

{�������}
�������:IF (MACD<0,SUM(MACD,BARSLAST(MACD>0)) * 100,0),linethick0,colorblue;
�������:IF (MACD>0,SUM(MACD,BARSLAST(MACD<0)) * 100,0),linethick0,colorred;
����ʾ:=CROSS(DEA, DIF);
����ʾ:=CROSS(DIF, DEA);
drawnumber(����ʾ, DEA*1.03, REF(�������, 1), 0),colorred, pxup30;
drawnumber(����ʾ, DEA*0.97, REF(�������, 1), 0), colorgreen, pxdn20;

{DRAWTEXT(����ʾ, DEA*1.03, NUMTOSTR(REF(�������, 1), 0)), colorred, pxup20;}
{DRAWTEXT(����ʾ, DEA*0.97, NUMTOSTR(REF(�������, 1), 0)), colorgreen, pxdn20;}
{��ǰ���}
drawnumber(BARSTATUS=2 and macd>0, -macd*0.03,  REF(�������, 1), 0),coloryellow, pxdn30;
drawnumber(BARSTATUS=2 and macd<=0,  -macd*0.03, REF(�������, 1), 0), COLORFFCC66, pxup30;
{DRAWTEXT(BARSTATUS=2 and macd>0, -macd*0.03, NUMTOSTR(�������, 0)), coloryellow;}
{DRAWTEXT(BARSTATUS=2 and macd<=0,  -macd*0.03, NUMTOSTR(�������, 0)), COLORFFCC66;}
�����: 0, colorwhite, linedot;
{MACDMA:MA(MACD,5), linethick2,colorblue;}

stickline(MACD<0 and MACD>=REF(MACD, 1), 0, macd, 0, 0), COLORFFCC66;
stickline(MACD<0 and MACD<REF(MACD, 1), 0, macd, 0, 0), COLORGREEN;
stickline(MACD>=0 and MACD>REF(MACD, 1), 0, macd, 0, 0), COLORRed;
stickline(MACD>=0 and MACD<=REF(MACD, 1), 0, macd, 0, 0), COLORYellow;

partline(dif>=ref(dif,1),dif), colorred;       DIF   ����        DEA   ����        MACD   ����        ������� �   �         ������� � �              �             �  �            � ��             f��         �����
   ���             f��              �              �               ��              �                 ���MACDSPP                                     �<M                     P_PA001PPA001�<M&   �Cb\Y�=V����9���%�:��p/����F<����<M	   ���1q;<�5�                                   	   
                                              `UPP��s�L��y7cp_�յ���y �f8n9|O�ߢ̻��n证:O�w��׳'4�#�o��Ϫ�_��w�uo��R��P�7�u����߻0S�����/��O��P�wа��.��"_�����Q��'P��p��� .:@+�M�.=0�E�p��ӄ��W��k�!Z������+�_������k;>�K&L%����o���D��]��8*�a_�rq�&��� �n�^	.��_�i�e[��q �U�̪2��1/=	��0��p�ſ��8k��Wm]П               #  {����}
MA5:MA(C,5), colorwhite;
MA13:MA(C,13), coloryellow;
MA21:MA(C,21), colormagenta;
MA34:MA(C,34), colorgreen;
MA55:MA(C,55), colorf00ff0, linethick2;
MA89:MA(C,89), colorgray;
MA144:MA(C,144), colorblue;
MA233:MA(C,233), colorf0f000,linethick2;

{��������}
MID :MA(CLOSE,26), colorwhite, linedot;
UPPER: MID + 2*STD(CLOSE,26), coloryellow, linedot;
LOWER: MID - 2*STD(CLOSE,26), coloryellow, linedot;

{����˵��}
����:="chanlun@kxian"; {����ŵ�һ�� Ҫ����������-_-\\\~~}
��:="chanlun@bi";
bilast:="chanlun@bilast";
��:="chanlun@duan";
duanlast:="chanlun@duanlast";
jxyl:="chanlun@JXYL2";
jxzc:="chanlun@JXZC2";

drawline(��=1,h,��=-1,l,0),coloryellow;
drawline(��=-1,l,��=1,h,0),coloryellow;
drawline(��=1,h,��=-1,l,0),colorblue, linethick2;
drawline(��=-1,l,��=1,h,0),colorblue, linethick2;

DRAWTEXT(��=1, h, ''+NUMTOSTR(h,2)+'/T'+NUMTOSTR(bilast,0)+'/MA:'+NUMTOSTR(jxyl,0)), coloryellow, align1, PXUP20;
DRAWTEXT(��=-1, l, ''+NUMTOSTR(l,2)+'/T'+NUMTOSTR(bilast,0)+'/MA:'+ NUMTOSTR(jxzc,0)), colorCyan, align1, PXDN10;   chanlunkxianchanlunbichanlunbilastchanlunduanchanlunduanlastchanlunJXYL2chanlunJXZC2   MA5   ���         MA13   ��          MA21   � �         MA34    �          MA55  ��         MA89   ���         MA144     �         MA233   ��         MID
   ���         UPPER
   ��          LOWER
   ��              ��              ��               �              �          �  ��           � �  ��               ��ľ����SPP                                    �<M                     P_PB001PPB001�<Mr   ���# ]< B����z�q	j���e~n��h��(&� M
���,�u�O���2�����J�ݨ��/���n� W���G��@m��<M   -z��{����`<r=J�[���    B                                   	  
                             	   
                                                                        !   "   #   $   %   &   '   (   )   *           +   �          �@PP�3s�Q�\`fgBdO�p_�,_�W��W��W�_�
_�S�W�=W�Q�S�W���n(N0.Ъ�W��W�S�_� O���>_�hn:Q��W�oeP��W��N�P��S��O��+;W�E�)��l�+��Q-4W�[��Q+��'�l�����ſ�߅G�{�ľW�t�$�unG7h{�w�-�,�!󠑬�O�q�cʪ~�����J�O�ʪc��w��Ei�*�򖏊;�Hu�]$I�SO���h!�'��s��-b7�?�|�m��Ϊ_�����Чm��.��.�tM���?����$���"���ͪ�F��Ѻ3(=p>vɬ�O�*OE��7ljP�o]�I*]��Wi#�Q�Q�l�x�^�7�'}�A��#^a ����AwB��h�Ǚ^���4,�.g>iq�ִi�� u�������,��_�L�L�W��Oa&k��N���.��m����l�*�LY�@�����ndo����n����N���/�>���4o��io
�-�Cv /�)�D�|�n��ӫ�/�9W���-����"��/�R ��o��ƫ�����OCO��(\�P����*�P������(Zp�H�d���Hڇ�Ҍ}2'�g)ͫ�� .��r|�x�ԭ��"� �׺.o��N>��"��As��z&��              8  kx:="chanlun@kxian"; {����ŵ�һ�� Ҫ����������-_-\\\~~}
kxg:="chanlun@kxg";
kxd:="chanlun@kxd";
kxfx:="chanlun@kxfx";
kxno:"chanlun@kxno", linethick0, coloryellow;
kxnobh:"chanlun@kxnobh", linethick0, coloryellow;
��:="chanlun@bi";
bilast:"chanlun@bilast", linethick0, coloryellow;
��:="chanlun@duan";
duanlast:"chanlun@duanlast", linethick0, coloryellow;
����:="chanlun@zs";
zszg:="chanlun@zszg";
zszd:="chanlun@zszd";
zsgg:="chanlun@zsgg";
zsdd:="chanlun@zsdd";
zszz:="chanlun@zszz";
zsks:="chanlun@zskslast";
zsjs:="chanlun@zsjslast";
bifx:=-REF(��,bilast);
duanfx:=-REF(��,duanlast);

kxqj:="chanlun@kxqj";
fxqj:ref(kxqj,bilast), linethick0, coloryellow;
{TT:"chanlun@TT", linethick0, colorwhite;}

{������Begin}
{�Ա�����ʽ��}
{
STICKLINE(zszg>zszd AND duanfx=1, zszg, zszd, 20, 502), colorf00ff0;
STICKLINE(zszg>zszd AND duanfx=-1, zszg, zszd, 20, 502), colore6002d;
}
{��ֱ�߷�ʽ��}
{��������}
DRAWLINE(zsks=1 AND duanfx=1, zszg, zsjs=1 AND duanfx=1, zszg, 0), colormagenta, linethick2;
DRAWLINE(zsks=1 AND duanfx=1, zszd, zsjs=1 AND duanfx=1, zszd, 0), colormagenta, linethick2;
STICKLINE(zsks=1 AND duanfx=1, zszg, zszd, 1 AND duanfx=1, -501), colormagenta, linethick2;
STICKLINE(zsjs=1 AND duanfx=1, zszg, zszd, 1 AND duanfx=1, 501), colormagenta, linethick2;
{�µ�����}
DRAWLINE(zsks=1 AND duanfx=-1, zszg, zsjs=1 AND duanfx=-1, zszg, 0), colorCyan, linethick2;
DRAWLINE(zsks=1 AND duanfx=-1, zszd, zsjs=1 AND duanfx=-1, zszd, 0), colorCyan, linethick2;
STICKLINE(zsks=1 AND duanfx=-1, zszg, zszd, 1 AND duanfx=-1, -501), colorCyan, linethick2;
STICKLINE(zsjs=1 AND duanfx=-1, zszg, zszd, 1 AND duanfx=-1, 501), colorCyan, linethick2;
{�����𵴼�����}
DRAWLINE(zsks=1, zszz, zsjs=1, zszz, 0), coloryellow; 
{������END}

{��ʾȱ��BEGIN}
{ֻ��ʾ5F��5F��������ͼ��ȱ��}
kxqk:="chanlun@kxqk";
{���δ��յ����һ�����ǣ��µ���ȱ�ڵ����ڵ�����}
kxqkup:BARSLAST(kxqk=1), linethick0, colorMagenta;
kxqkdn:BARSLAST(kxqk=-1), linethick0, colorGreen;
{ȱ��}
DRAWTEXT(kxqk=1, l, '��'), colorMagenta, align0, PXDN20; {δ�������ȱ��}
DRAWTEXT(kxqk=2, l, '��'), colorMagenta, align0, PXDN20; {�ѷ������ȱ��}
DRAWTEXT(kxqk=-1, h, '��'), colorGreen, align0, PXUP20; {δ����µ�ȱ��}
DRAWTEXT(kxqk=-2, h, '��'), colorGreen, align0, PXUP20; {�ѷ���µ�ȱ��}
{��ʾȱ��END}

{��K��}
{����K�� �Ѿ���������}
STICKLINE(kxfx>1, kxg, kxd, 2, 1), coloryellow;
STICKLINE(kxfx<1, kxg, kxd, 2, 1), colorF0F000;
STICKLINE(kxfx=1, kxg, kxd, 2, 1), colorred;
STICKLINE(kxfx=-1, kxg, kxd, 2, 1), colorgreen;
{���׷���}
STICKLINE(kx>0, kxg, kxd, 5, 1), colorwhite;
STICKLINE(kx<0, kxg, kxd, 5, 1), colorblue;
{�ʶ�}
STICKLINE(��=1, kxg, kxd, 5, 1), colorgreen, linethick3;
STICKLINE(��=-1, kxg, kxd, 5, 1), colorred, linethick3;
STICKLINE(��>0, kxg, kxd, 5, 0), colorblue, linethick1;
STICKLINE(��<0, kxg, kxd, 5, 0), coloryellow, linethick1;
{��K��END}

drawline(��=1,h,��=-1,l,0),coloryellow;
drawline(��=-1,l,��=1,h,0),coloryellow;
drawline(��=1,h,��=-1,l,0),colorblue, linethick2;
drawline(��=-1,l,��=1,h,0),colorblue, linethick2;

{��ʾ��λ}
drawnumber(��=1,h,h,2),pxup65,color3300ff,align0; 
drawnumber(��=-1,l,l,2),pxdn50,colorffff00,align0;
{��ʾ����}
drawtext(��=1,h,'+'),colormagenta,pxup20,align2;
drawnumber(��=1,h,h-REF(l,bilast),2),colormagenta,pxup20;
drawnumber(��=-1,l,l-REF(h,bilast),2),colorgreen,pxdn5,align0;
{��ʾ������}
drawtext(��=1,h,'T'),pxup45,coloryellow,align1;
drawnumber(��=1,h,bilast,0),coloryellow,pxup45,align2;
drawtext(��=-1,l,'T'),pxdn30,coloryellow,align1;
drawnumber(��=-1,l,bilast,0),coloryellow,pxdn30,align2;

{�汾��ϢBegin}
vsnNO:="chanlun@VERSION";
vsnDate:="chanlun@DATE";
vsnSTR:= '�汾:'+NUMTOSTR(vsnNO,3)+'.'+NUMTOSTR(vsnDate,0);
{vsnSTR1:= ' ����:goodpp2012@gmail.com';}
vsnSTR1:= vsnSTR + '';
DRAWTEXTEX(1,1,5,990,vsnSTR1), colormagenta, linethick2;
{�汾��ϢEnd}   chanlunkxianchanlunkxgchanlunkxdchanlunkxfxchanlunkxnochanlunkxnobhchanlunbichanlunbilastchanlunduanchanlunduanlastchanlunzschanlunzszgchanlunzszdchanlunzsggchanlunzsddchanlunzszzchanlunzskslastchanlunzsjslastchanlunkxqjchanlunkxqkchanlunVERSIONchanlunDATE,   KXNO � ��          KXNOBH � ��          BILAST � ��          DUANLAST � ��          FXQJ � ��             � �            � �            � �            � �             ��             ��             ��             ��             ��          KXQKUP � � �         KXQKDN �  �             � � �            � � �              �               �              ��               ��             �                �              ���               �             �             �                �            ��              ��              ��               �              �            A � 3            �  ��          �  � �            � �            �  �           � - ��           � - ��           � � ��           � � ��             � �               ���ǲ�SPP                               ��