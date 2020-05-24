(defun ChangeHour ()
  
   ;Caja de di�logo 
	(setq arch (load_dialog (findfile "CambioHusos.dcl")))

	(setq lista '("Hora de Australia oriental (Sidney)" "Hora oriental (Nueva York)" "Hora de Argentina (Buenos Aires)" "Afganist�n"
					  "Hora est�ndar Europa Central (�msterdam)" "Hora media de Greenwich (Londres)" "Hora est�ndar de Jap�n (Tokio)"
					  "Los �ngeles" "Mosc�" "R�o de Janeiro" "Estambul" "Nairobi" "Hora de China (Pek�n)" "Hora de Corea (Se�l)"
					  "Hong Kong" "Tijuana" "Hora est�ndar de India (Calcuta)" "Hora Amazonas (Manaos)" "Hora de Uruguay (Montevideo)"
					  "Hora est�ndar de Europa del Este (Atenas)" "Hora de Arabia (Kuwait)" "Hora de Colombia (Bogot� DC)"))

	(new_dialog "UTCs" arch)
	(start_list "ciudad")
	(mapcar 'add_list lista)
	(end_list)
	(action_tile "ciudad" "(setq city (atoi $value))")
	(setq select (start_dialog))

	(if (/= select nil)
		(cond ((= city 0)(progn (setq dias (+ 1 dias))
								 (setq horas (+ 3 horas))));Sidney
				((= city 1)(setq horas (+ 1 horas)));NY
				((= city 2)(setq horas (+ 2 horas)));BA
				((= city 3)(progn (setq horas (+ 9 horas))
								 (setq minutos (+ 30 minutos))));Afg
				((= city 4)(setq horas (+ 7 horas)));�ms
				((= city 5)(setq horas (+ 6 horas)));Lon
				((= city 6)(setq horas (+ 14 horas)));Tokio
				((= city 7)(setq horas (- 2 horas)));LA
				((= city 8)(setq horas (+ 8 horas)));Mosc�
				((= city 9)(setq horas (+ 8 horas)));Estam
				((= city 10)(setq horas (+ 8 horas))); Nair
				((= city 11)(setq horas (+ 13 horas)));Pek�n
				((= city 12)(setq horas (+ 14 horas)));Se�l
				((= city 13)(setq horas (+ 13 horas)));HK
				((= city 14)(setq horas (+ 10 horas)));Tij
				((= city 15)(progn (setq horas (+ 10 horas))
								  (setq minutos (+ 30 minutos))));India
				((= city 17)(setq horas (+ 1 horas)));Manaos
				((= city 18)(setq horas (+ 0 horas)));Montev
				((= city 19)(setq horas (+ 8 horas)));Atenas
				((= city 20)(setq horas (+ 8 horas)));Kuwait
				((= city 21)(setq horas (+ 0 horas)));Bgt DC
		   );cond
	    );if
 );defun

(ChangeHour)
