;Configuraci�n Fecha del reloj
;Santiago Vald�s Ledesma

;Falta configurar la ubicaci�n y posici�n del reloj seg�n el dibujo principal del dibujo
    (vl-load-com)
    (setq acadObj (vlax-get-acad-object))
    (setq doc (vla-get-ActiveDocument acadObj))
  
    ;; Define the text object
	(setq insertionPointDD (vlax-3d-point 0 5 0)  ;el punto de inserci�n es la posici�n en el dibujo
	textStringDD "DD" 
	height 10)
	(setq insertionPointMM (vlax-3d-point 20 5 0)  
	textStringMM "MM"
	height 10)
	(setq insertionPointAA (vlax-3d-point 50 5 0)  
	textStringAA "AA"
	height 10)
	    	    
        ;; Crea el texto en el espacio modelo
	(setq modelSpace (vla-get-ModelSpace doc))
    	;Colocacion de los textos iniciales dia dd, mes mm, a�o aa
	(setq textObjDD (vla-AddText modelSpace textStringDD insertionPointDD height))
	(setq ObjDD (entget(entlast)))
	(setq textObjMM (vla-AddText modelSpace textStringMM insertionPointMM height))
	(setq ObjMM (entget(entlast)))
	(setq textObjAA (vla-AddText modelSpace textStringAA insertionPointAA height))
	(setq ObjAA (entget(entlast)))

	(setq  Date (menucmd "M=$(edtime,$(getvar,date),YYYYMONDD)")	
	a�ot (substr Date 1 4)
	mest (substr Date 5 3)
	diat (substr Date 8 2)
	)
   	(setq ObjDD (setq D2 (subst (cons 1  diat) (assoc 1 ObjDD) ObjDD)))
 	(entmod D2)
  	(setq ObjMM (setq M2 (subst (cons 1  mest) (assoc 1 ObjMM) ObjMM)))
 	(entmod M2)
	(setq ObjAA (setq A2 (subst (cons 1   a�ot) (assoc 1 ObjAA) ObjAA)))
 	(entmod A2)