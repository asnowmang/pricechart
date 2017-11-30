      PROGRAM XMRGRAPH
      INTEGER x, y, count, tempx, tempy
      INTEGER textx, texty
      CHARACTER*3 title
      CHARACTER*5 xlabel, ylabel
      title = "xmr"
      xlabel = "label"
      
c     Start PostScript
      CALL PS
      CALL NPATH
      
      x = 160
      y = 650
      tempx = x + 200
      tempy = y - 10
      count = 0
      
c     Draw Y axis of graph
      CALL MVTO(x, y)
      x = x - 5
      CALL LNTO(x, y)
      DO WHILE (count .LT. 10)
         CALL MVTO(x, y)
         x = x - 5
         CALL LNTO(x, y)
         y = y - 40
         CALL LNTO(x, y)
         x = x + 5
         CALL LNTO(x, y)
         count = count + 1
      ENDDO

      x = x - 5
      textx = x
      texty = y
      y = y + 5
      count = 0

c     Draw X axis of graph
      DO WHILE (count .LT. 10)
         CALL MVTO(x, y)
         y = y - 5
         CALL LNTO(x, y)
         x = x + 40
         CALL LNTO(x, y)
         y = y + 5
         CALL LNTO(x, y)
         count = count + 1
      ENDDO
      y = y + 5
      CALL LNTO(x, y)

c     Labels
      texty = texty - 14
      CALL MVTO(textx, texty)
      CALL HELVETICA(16)
      CALL SHOW(title)
      CALL MVTO(tempx, tempy)
      CALL HELVETICA(12)
      CALL SHOW(xlabel)
     
      CALL STROKE
      CALL SHOWPG

      END PROGRAM XMRGRAPH
