
package hospital;

import com.toedter.calendar.JCalendar;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Point;
import java.awt.Toolkit;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;


public class Cronograma extends javax.swing.JInternalFrame {
Date fecha;

    public java.util.Date cambiarFecha(java.util.Date Fecha){
    java.util.Date utilDate = new java.util.Date();
    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
    return sqlDate;
    }
    
    public Cronograma() {
         this.getContentPane().setBackground(Color.white);
        initComponents();
        ActivarTable();
        txtFecha1.setVisible(false);
        txtFecha2.setVisible(false);
        
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblConsulta = new javax.swing.JTable();
        lblEncabezado = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        btnAceptar = new javax.swing.JButton();
        txtFecha1 = new javax.swing.JTextField();
        txtFecha2 = new javax.swing.JTextField();
        jdt1 = new com.toedter.calendar.JDateChooser();
        jdt2 = new com.toedter.calendar.JDateChooser();
        jLabel8 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jMonthChooser1 = new com.toedter.calendar.JMonthChooser();
        jLabel3 = new javax.swing.JLabel();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Mantenimientos Preventivos");

        jLabel4.setFont(new java.awt.Font("Calibri", 0, 36)); // NOI18N
        jLabel4.setText("Hospital Ángeles Tampico");

        jLabel5.setFont(new java.awt.Font("Calibri", 0, 24)); // NOI18N
        jLabel5.setText("Departamento de Ingeniería Biomédica");

        jLabel6.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        jLabel6.setText("Ing. Victor Hugo Hernández Hernández");

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/IngBiomedica.jpg"))); // NOI18N

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/HAngeles.jpg"))); // NOI18N

        tblConsulta.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tblConsulta.setEnabled(false);
        tblConsulta.setShowVerticalLines(false);
        tblConsulta.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblConsultaMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblConsulta);

        lblEncabezado.setFont(new java.awt.Font("Calibri", 0, 24)); // NOI18N
        lblEncabezado.setText("Equipos Pendientes de Mantenimiento Preventivo Correspondientes al mes de Diciembre");

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        btnAceptar.setText("Aceptar");
        btnAceptar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAceptarActionPerformed(evt);
            }
        });

        jLabel8.setFont(new java.awt.Font("Calibri", 0, 24)); // NOI18N
        jLabel8.setText("Consulta Por Intervalo de Fechas");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(156, 156, 156)
                        .addComponent(btnAceptar, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(109, 109, 109)
                                .addComponent(jdt1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(26, 26, 26)
                                .addComponent(txtFecha1, javax.swing.GroupLayout.PREFERRED_SIZE, 169, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(119, 119, 119)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtFecha2, javax.swing.GroupLayout.PREFERRED_SIZE, 169, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jdt2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel8)
                        .addGap(74, 74, 74)))
                .addContainerGap(37, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel8)
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jdt1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jdt2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtFecha1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtFecha2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 17, Short.MAX_VALUE)
                .addComponent(btnAceptar)
                .addContainerGap())
        );

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jMonthChooser1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                jMonthChooser1MouseReleased(evt);
            }
        });
        jMonthChooser1.addPropertyChangeListener(new java.beans.PropertyChangeListener() {
            public void propertyChange(java.beans.PropertyChangeEvent evt) {
                jMonthChooser1PropertyChange(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Calibri", 0, 24)); // NOI18N
        jLabel3.setText("Consulta por Mes");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(105, 105, 105)
                        .addComponent(jMonthChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(64, 64, 64)
                        .addComponent(jLabel3)))
                .addContainerGap(98, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel3)
                .addGap(32, 32, 32)
                .addComponent(jMonthChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 390, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 380, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(84, 84, 84)
                                .addComponent(jLabel1)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 215, Short.MAX_VALUE)
                        .addComponent(jLabel2)
                        .addGap(24, 24, 24))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(34, 34, 34)
                        .addComponent(lblEncabezado, javax.swing.GroupLayout.PREFERRED_SIZE, 890, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 964, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(41, 41, 41))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(14, 14, 14)
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(122, 122, 122))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, 0)
                                .addComponent(jLabel5))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(19, 19, 19)
                                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 0, 0)
                        .addComponent(jLabel6))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(19, 19, 19)
                        .addComponent(jLabel2)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lblEncabezado)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 245, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(0, 50, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnAceptarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAceptarActionPerformed
       Fechas();
       ConsultaCronograma(txtFecha1.getText(),txtFecha2.getText());
    }//GEN-LAST:event_btnAceptarActionPerformed

    private void tblConsultaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblConsultaMouseClicked
      Point point = evt.getPoint();
    int row = tblConsulta.rowAtPoint(point);
             
        String NControl = ""+tblConsulta.getValueAt(row, 0);

        if (evt.getClickCount() == 2) {
       
             CedulaMantenimiento Cedula  = new CedulaMantenimiento(NControl);
        Dimension pantalla = Toolkit.getDefaultToolkit().getScreenSize();
        Dimension ventana = this.getSize();
        int x = (pantalla.width-ventana.width);
        int y = ((ventana.height+pantalla.height)/8);
        Cedula.setLocation(x, y);
    
        
         this.add(Cedula);
         Cedula.setVisible(true);
         this.getParent().add(Cedula);
       
      
      Cedula.toFront();
   
      Cedula.show();
            
        }
    }//GEN-LAST:event_tblConsultaMouseClicked

    private void jMonthChooser1MouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMonthChooser1MouseReleased
      
    }//GEN-LAST:event_jMonthChooser1MouseReleased

    private void jMonthChooser1PropertyChange(java.beans.PropertyChangeEvent evt) {//GEN-FIRST:event_jMonthChooser1PropertyChange
int month = jMonthChooser1.getMonth()+1;

        ActivarTable(month);
    }//GEN-LAST:event_jMonthChooser1PropertyChange

public void Fechas(){
        String dia1 = Integer.toString(jdt1.getCalendar().get(Calendar.DAY_OF_MONTH));
        String mes1 = Integer.toString(jdt1.getCalendar().get(Calendar.MONTH) + 1);
        String ano1 = Integer.toString(jdt1.getCalendar().get(Calendar.YEAR));
        String fecha1 = (ano1 + "-" + mes1+ "-" + dia1);
        
        String dia2 = Integer.toString(jdt2.getCalendar().get(Calendar.DAY_OF_MONTH));
        String mes2 = Integer.toString(jdt2.getCalendar().get(Calendar.MONTH) + 1);
        String ano2 = Integer.toString(jdt2.getCalendar().get(Calendar.YEAR));
        String fecha2 = (ano2 + "-" + mes2+ "-" + dia2);

         txtFecha1.setText(fecha1);
         txtFecha2.setText(fecha2);
}

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAceptar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel8;
    private com.toedter.calendar.JMonthChooser jMonthChooser1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private com.toedter.calendar.JDateChooser jdt1;
    private com.toedter.calendar.JDateChooser jdt2;
    private javax.swing.JLabel lblEncabezado;
    private javax.swing.JTable tblConsulta;
    private javax.swing.JTextField txtFecha1;
    private javax.swing.JTextField txtFecha2;
    // End of variables declaration//GEN-END:variables

     public void ConsultaCronograma(String f1,String f2) {
      tblConsulta.removeAll();
        DefaultTableModel modelo;
        String[] titulo = {"N° Control","Descripción", "Marca", "Modelo","N° de Serie","Área"};
        String[] registro = new String[6];
        String sSQL = "";
       fecha = cambiarFecha(fecha);
        modelo = new DefaultTableModel(null, titulo);
        sSQL = "Select equipos.NControl, equipos.Descripcion, equipos.Marca, equipos.Modelo, equipos.NS, areas.Area\n" +
                "from equipos, mantenimientos, areas\n" +
                "where equipos.NControl = mantenimientos.Equipo\n" +
                "and equipos.Area = areas.IDArea\n" +
                "and mantenimientos.Mantenimiento = 0 \n"+
                "and mantenimientos.FechaInicio between '"+f1+"' and '"+f2+"';";
      
         
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sSQL);
        
            while (rs.next()) {
                registro[0] = rs.getString("equipos.NControl");
                registro[1] = rs.getString("equipos.Descripcion");
                registro[2] = rs.getString("equipos.Marca");
                registro[3] = rs.getString("equipos.Modelo");
                registro[4] = rs.getString("equipos.NS");
                registro[5] = rs.getString("areas.Area");
                
                modelo.addRow(registro);
               
            }
            
            Encabezado(0);
            tblConsulta.setModel(modelo);
             int N =0;
          } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    private void ActivarTable() {
      DefaultTableModel modelo;
        String[] titulo = {"N° Control","Descripción", "Marca", "Modelo","N° de Serie","Área"};
        String[] registro = new String[6];
        String sSQL = "";
       fecha = cambiarFecha(fecha);
        modelo = new DefaultTableModel(null, titulo);
        sSQL = "Select equipos.NControl, equipos.Descripcion, equipos.Marca, equipos.Modelo, equipos.NS, areas.Area\n" +
                "from equipos, mantenimientos, areas\n" +
                "where equipos.NControl = mantenimientos.Equipo\n" +
                "and equipos.Area = areas.IDArea\n" +
                 "and mantenimientos.Mantenimiento = 0 \n"+
                "and '"+ fecha +"' between mantenimientos.FechaInicio and mantenimientos.FechaTermino;";
       int Mes = fecha.getMonth()+1;
       Encabezado(Mes);
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sSQL);
        
            while (rs.next()) {
                registro[0] = rs.getString("equipos.NControl");
                registro[1] = rs.getString("equipos.Descripcion");
                registro[2] = rs.getString("equipos.Marca");
                registro[3] = rs.getString("equipos.Modelo");
                 registro[4] = rs.getString("equipos.NS");
                registro[5] = rs.getString("areas.Area");
                
                modelo.addRow(registro);
               
            }
            tblConsulta.setModel(modelo);
           // jLabel7.setText(Mes);
             int N =0;
          } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

     private void ActivarTable(int Mes) {
      DefaultTableModel modelo;
        String[] titulo = {"N° Control","Descripción", "Marca", "Modelo","N° de Serie","Área"};
        String[] registro = new String[6];
        String sSQL = "";
       fecha = cambiarFecha(fecha);
        modelo = new DefaultTableModel(null, titulo);
        sSQL = "Select equipos.NControl, equipos.Descripcion, equipos.Marca, equipos.Modelo, equipos.NS, areas.Area\n" +
                "from equipos, mantenimientos, areas\n" +
                "where equipos.NControl = mantenimientos.Equipo\n" +
                "and equipos.Area = areas.IDArea\n" +
                 "and mantenimientos.Mantenimiento = 0 \n"+
                "and month(FechaInicio) ="+Mes;
               
       
       Encabezado(Mes);
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sSQL);
        
            while (rs.next()) {
                registro[0] = rs.getString("equipos.NControl");
                registro[1] = rs.getString("equipos.Descripcion");
                registro[2] = rs.getString("equipos.Marca");
                registro[3] = rs.getString("equipos.Modelo");
                 registro[4] = rs.getString("equipos.NS");
                registro[5] = rs.getString("areas.Area");
                
                modelo.addRow(registro);
               
            }
            tblConsulta.setModel(modelo);
           // jLabel7.setText(Mes);
             int N =0;
          } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    private void Encabezado(int Mes) {
   
        if (Mes ==0){
         lblEncabezado.setText("Equipos Pendientes de Mantenimiento Preventivo" );
        } else { 
       String mes = "";
        switch (Mes){
            case (1):{ mes = "Enero"; break;}
             case (2):{ mes = "Febrero"; break;}
              case (3):{ mes = "Marzo"; break;}
               case (4):{ mes = "Abril"; break;}
                case (5):{ mes = "Mayo"; break;}
                 case (6):{ mes = "Junio"; break;}
                  case (7):{ mes = "Julio"; break;}
                   case (8):{ mes = "Agosto"; break;}
                    case (9):{ mes = "Septiembre"; break;}
                     case (10):{ mes = "Octubre"; break;}
                      case (11):{ mes = "Noviembre"; break;}
                       case (12):{ mes = "Diciembre"; break;}
       } 
        lblEncabezado.setText("Equipos Pendientes de Mantenimiento Preventivo Correspondientes al mes de "+mes);}
    }
    }

