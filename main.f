      PROGRAM XMRGRAPH
      INTEGER x, y, count

      x = 155
      y = 650
      count = 0
      c1 = count
      
c     Start PostScript
      CALL PS
      CALL NPATH

c     Draw Y axis of graph
      DO WHILE (count .LT. 10)
         CALL MVTO(x, y)
         x = x - 5
         CALL LNTO(x, y)
         y = y - 20
         CALL LNTO(x, y)
         x = x + 5
         CALL LNTO(x, y)
         count = count + 1
      ENDDO

      x = x - 5
      y = y + 5
      count = 0

c     Draw X axis of graph
      DO WHILE (count .LT. 10)
         CALL MVTO(x, y)
         y = y - 5
         CALL LNTO(x, y)
         x = x + 20
         CALL LNTO(x, y)
         y = y + 5
         CALL LNTO(x, y)
         count = count + 1
      ENDDO
     
      CALL STROKE
      CALL SHOWPG

      END PROGRAM XMRGRAPH
