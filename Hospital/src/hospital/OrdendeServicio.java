/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital;

import Clases.Servicio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ButtonGroup;
import javax.swing.JOptionPane;
import javax.swing.JRadioButton;
import javax.swing.JTextField;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Usuario
 */
public class OrdendeServicio extends javax.swing.JInternalFrame {
 
  Date date = new Date();
  int HI =0, R=0, SE=0;
  double CostoTotal = 0;
  boolean Terminado = true;
   
  
    public OrdendeServicio() {
        initComponents();
         this.ponerFecha(date.getTime());
         agrupar ();
    }
    
    public void agrupar (){
  buttonGroup1.add(Falla1);
  buttonGroup1.add(Falla2);
  buttonGroup1.add(Falla3);
  
  
  buttonGroup2.add(SR1);
  buttonGroup2.add(SR2);
  buttonGroup2.add(SR3);
  buttonGroup2.add(SR4);

  
  txtRecibe.setText("Ing. Victor Hernández Hernández");
  
  }
    
private void ponerFecha(long date) {
 DateFormat df = DateFormat.getDateInstance(DateFormat.SHORT);
 this.txtFecha.setText(df.format(date));
 this.txtFechaTerminacion.setText(df.format(date));  
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        buttonGroup2 = new javax.swing.ButtonGroup();
        jPanel2 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        txtFolio = new javax.swing.JTextField();
        txtFecha = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jPanel8 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtNC = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        txtNS = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        txtEquipo = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        txtReporta = new javax.swing.JTextField();
        txtDepartamento = new javax.swing.JTextField();
        jPanel6 = new javax.swing.JPanel();
        jLabel18 = new javax.swing.JLabel();
        txtFechaTerminacion = new javax.swing.JTextField();
        jLabel19 = new javax.swing.JLabel();
        dFecha = new com.toedter.calendar.JDateChooser();
        jLabel20 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        txtRecibe = new javax.swing.JTextField();
        jLabel22 = new javax.swing.JLabel();
        txtAsignado = new javax.swing.JTextField();
        jLabel23 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        txtTRealizado = new javax.swing.JTextArea();
        jPanel1 = new javax.swing.JPanel();
        Falla1 = new javax.swing.JRadioButton();
        Falla2 = new javax.swing.JRadioButton();
        Falla3 = new javax.swing.JRadioButton();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        txtPartesNuevas = new javax.swing.JTextArea();
        jPanel4 = new javax.swing.JPanel();
        SR1 = new javax.swing.JRadioButton();
        SR2 = new javax.swing.JRadioButton();
        SR3 = new javax.swing.JRadioButton();
        SR4 = new javax.swing.JRadioButton();
        jScrollPane4 = new javax.swing.JScrollPane();
        txtFalla = new javax.swing.JTextArea();
        jLabel24 = new javax.swing.JLabel();
        jScrollPane5 = new javax.swing.JScrollPane();
        txtObservaciones = new javax.swing.JTextArea();
        jLabel3 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        txtHorasIng = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        txtRefacciones = new javax.swing.JTextField();
        txtServicioExterno = new javax.swing.JTextField();
        txtTotal = new javax.swing.JTextField();
        btnLimpiar = new javax.swing.JButton();
        btnGuardar = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("Orden de Servicio Realizado");

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));

        jPanel5.setBackground(new java.awt.Color(255, 255, 255));
        jPanel5.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        txtFolio.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N

        txtFecha.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        txtFecha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtFechaActionPerformed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel4.setText("FECHA:");

        jLabel6.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel6.setText("FOLIO:");

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel5Layout.createSequentialGroup()
                .addContainerGap(15, Short.MAX_VALUE)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel6, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel4, javax.swing.GroupLayout.Alignment.TRAILING))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtFecha)
                    .addComponent(txtFolio, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtFolio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtFecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addContainerGap(12, Short.MAX_VALUE))
        );

        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/HAngeles.jpg"))); // NOI18N

        jPanel8.setBackground(new java.awt.Color(255, 255, 255));
        jPanel8.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)), "SERVICIO REALIZADO", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Calibri", 1, 24), new java.awt.Color(0, 0, 255))); // NOI18N

        jLabel1.setText("N° DE CONTROL:");

        txtNC.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        txtNC.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtNCFocusLost(evt);
            }
        });

        jLabel13.setText("N° DE SERIE:");

        txtNS.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel2.setText("EQUIPO:");

        txtEquipo.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel17.setText("DEPARTAMENTO:");

        jLabel16.setText("REPORTA:");

        txtReporta.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        txtDepartamento.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jPanel6.setBackground(new java.awt.Color(255, 255, 255));
        jPanel6.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel18.setText("FECHA DE SOLICITUD:");

        txtFechaTerminacion.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        txtFechaTerminacion.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtFechaTerminacionFocusLost(evt);
            }
        });

        jLabel19.setText("FECHA DE TERMINACIÓN:");

        dFecha.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                dFechaFocusLost(evt);
            }
        });

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel6Layout.createSequentialGroup()
                        .addComponent(jLabel18)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(jLabel19, javax.swing.GroupLayout.DEFAULT_SIZE, 133, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtFechaTerminacion, javax.swing.GroupLayout.DEFAULT_SIZE, 286, Short.MAX_VALUE)
                    .addComponent(dFecha, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel18)
                    .addComponent(dFecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel19)
                    .addComponent(txtFechaTerminacion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jLabel20.setText("FALLA REPORTADA:");

        jLabel21.setText("RECIBE:");

        txtRecibe.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel22.setText("ASIGNADO A:");

        txtAsignado.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel23.setText("TRABAJO REALIZADO:");

        txtTRealizado.setColumns(20);
        txtTRealizado.setFont(new java.awt.Font("Monospaced", 0, 12)); // NOI18N
        txtTRealizado.setRows(5);
        txtTRealizado.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        jScrollPane2.setViewportView(txtTRealizado);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)), "FALLA ENCONTRADA:", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, null, new java.awt.Color(0, 0, 0)));

        Falla1.setBackground(new java.awt.Color(255, 255, 255));
        Falla1.setText("Equipo Defectuoso");

        Falla2.setBackground(new java.awt.Color(255, 255, 255));
        Falla2.setSelected(true);
        Falla2.setText("Mala Operación");

        Falla3.setBackground(new java.awt.Color(255, 255, 255));
        Falla3.setText("Asesoría Técnica");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Falla1)
                    .addComponent(Falla2)
                    .addComponent(Falla3))
                .addContainerGap(71, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(Falla1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(Falla2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(Falla3)
                .addContainerGap())
        );

        jPanel3.setBackground(new java.awt.Color(255, 255, 255));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)), "PARTES NUEVAS:", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, null, new java.awt.Color(0, 0, 0)));

        txtPartesNuevas.setColumns(20);
        txtPartesNuevas.setFont(new java.awt.Font("Monospaced", 0, 12)); // NOI18N
        txtPartesNuevas.setRows(5);
        txtPartesNuevas.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        jScrollPane1.setViewportView(txtPartesNuevas);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel4.setBackground(new java.awt.Color(255, 255, 255));
        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)), "SERVICIO REALIZADO:", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, null, new java.awt.Color(0, 0, 0)));

        SR1.setBackground(new java.awt.Color(255, 255, 255));
        SR1.setText("Mantenimiento Preventivo");

        SR2.setBackground(new java.awt.Color(255, 255, 255));
        SR2.setSelected(true);
        SR2.setText("Mantenimiento Correctivo");

        SR3.setBackground(new java.awt.Color(255, 255, 255));
        SR3.setText("Asesoría en Servicio");
        SR3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SR3ActionPerformed(evt);
            }
        });

        SR4.setBackground(new java.awt.Color(255, 255, 255));
        SR4.setText("Servicio Externo");

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(SR1)
                    .addComponent(SR2))
                .addGap(18, 18, 18)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(SR4)
                    .addComponent(SR3))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(SR1)
                    .addComponent(SR3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(SR2)
                    .addComponent(SR4))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        txtFalla.setColumns(20);
        txtFalla.setFont(new java.awt.Font("Monospaced", 0, 12)); // NOI18N
        txtFalla.setRows(5);
        txtFalla.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        jScrollPane4.setViewportView(txtFalla);

        jLabel24.setText("OBSERVACIONES:");

        txtObservaciones.setColumns(20);
        txtObservaciones.setFont(new java.awt.Font("Monospaced", 0, 12)); // NOI18N
        txtObservaciones.setRows(5);
        txtObservaciones.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        jScrollPane5.setViewportView(txtObservaciones);

        jLabel3.setText("COSTOS ESTIMADOS:");

        jLabel7.setText("COSTO HORAS/INGENIERO: ");

        txtHorasIng.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        txtHorasIng.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        txtHorasIng.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtHorasIngFocusLost(evt);
            }
        });

        jLabel8.setText("COSTO DE REFACCIONES:");

        jLabel9.setText("COSTO DE SERVICIO EXTERNO:");

        jLabel10.setText("TOTAL:");

        txtRefacciones.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        txtRefacciones.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        txtRefacciones.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtRefaccionesFocusLost(evt);
            }
        });

        txtServicioExterno.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        txtServicioExterno.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        txtServicioExterno.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtServicioExternoActionPerformed(evt);
            }
        });
        txtServicioExterno.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtServicioExternoFocusLost(evt);
            }
        });

        txtTotal.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        txtTotal.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        txtTotal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtTotalActionPerformed(evt);
            }
        });
        txtTotal.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtTotalFocusLost(evt);
            }
        });

        btnLimpiar.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        btnLimpiar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/limpiar.png"))); // NOI18N
        btnLimpiar.setText("LIMPIAR");
        btnLimpiar.setIconTextGap(6);
        btnLimpiar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLimpiarActionPerformed(evt);
            }
        });

        btnGuardar.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        btnGuardar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/guardar.png"))); // NOI18N
        btnGuardar.setText("GUARDAR");
        btnGuardar.setIconTextGap(6);
        btnGuardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel8Layout = new javax.swing.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addComponent(jLabel17)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(txtDepartamento, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(txtEquipo, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(txtNS, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 112, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtNC, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addGap(112, 112, 112)
                                .addComponent(jLabel16, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtReporta)))
                        .addGap(19, 19, 19))
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel8Layout.createSequentialGroup()
                                .addComponent(jLabel23)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jScrollPane2))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel8Layout.createSequentialGroup()
                                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel20)
                                    .addComponent(jLabel21))
                                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel8Layout.createSequentialGroup()
                                        .addGap(326, 326, 326)
                                        .addComponent(jLabel22, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(txtAsignado, javax.swing.GroupLayout.PREFERRED_SIZE, 295, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel8Layout.createSequentialGroup()
                                        .addGap(18, 18, 18)
                                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 698, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(txtRecibe, javax.swing.GroupLayout.PREFERRED_SIZE, 265, javax.swing.GroupLayout.PREFERRED_SIZE))))))
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addContainerGap())
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addComponent(jLabel24)
                                .addGap(18, 18, 18)
                                .addComponent(jScrollPane5, javax.swing.GroupLayout.PREFERRED_SIZE, 698, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 139, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel8Layout.createSequentialGroup()
                                        .addGap(21, 21, 21)
                                        .addComponent(btnLimpiar)
                                        .addGap(28, 28, 28)
                                        .addComponent(btnGuardar)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addGroup(jPanel8Layout.createSequentialGroup()
                                        .addComponent(jLabel10)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(txtTotal, javax.swing.GroupLayout.PREFERRED_SIZE, 269, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(jPanel8Layout.createSequentialGroup()
                                        .addComponent(jLabel8)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(txtRefacciones, javax.swing.GroupLayout.PREFERRED_SIZE, 269, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(jPanel8Layout.createSequentialGroup()
                                        .addComponent(jLabel9)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(txtServicioExterno, javax.swing.GroupLayout.PREFERRED_SIZE, 269, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(jPanel8Layout.createSequentialGroup()
                                        .addComponent(jLabel7)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(txtHorasIng, javax.swing.GroupLayout.PREFERRED_SIZE, 269, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtNC, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel13)
                            .addComponent(txtNS, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(txtEquipo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel17)
                    .addComponent(txtDepartamento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel16)
                    .addComponent(txtReporta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addComponent(jLabel20)
                        .addGap(34, 34, 34))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel8Layout.createSequentialGroup()
                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)))
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtAsignado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(txtRecibe, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel21))
                    .addComponent(jLabel22))
                .addGap(18, 18, 18)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel23))
                .addGap(12, 12, 12)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addComponent(jLabel24)
                        .addGap(28, 28, 28))
                    .addComponent(jScrollPane5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(5, 5, 5)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtHorasIng, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7)
                    .addComponent(jLabel3))
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtRefacciones, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel8))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtServicioExterno, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel9))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel10)
                            .addComponent(txtTotal, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel8Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnLimpiar)
                            .addComponent(btnGuardar))
                        .addContainerGap())))
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtFechaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtFechaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtFechaActionPerformed

    public boolean OrdenTerminada (JTextField txtFechaT){
        boolean T;
        if (txtFecha.getText().isEmpty()) {
            T = true;
            return T;
        } else {
            T = false;
            return T;
        }
    
    }
    
    private void ReporteServicio(int Folio) {

        JasperReport jr = null;
    ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
      
         String archivo = "src\\hospital\\Reportes\\ReporteServicio.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pFolio",Folio);
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
        }
    
     private void ReporteServicioIncompleto(int Folio) {

        JasperReport jr = null;
    ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
      
         String archivo = "src\\hospital\\Reportes\\ReporteServicioIncompleto.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pFolio",Folio);
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
        }
    
    private void btnLimpiarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLimpiarActionPerformed
txtFolio.setText("");
txtNC.setText("");
txtEquipo.setText("");
txtNS.setText("");
txtReporta.setText("");
txtFolio.setText("");
txtAsignado.setText("");
txtDepartamento.setText("");
txtFalla.setText("");

txtHorasIng.setText("");
txtObservaciones.setText("");
txtPartesNuevas.setText("");
txtRecibe.setText("");
txtRefacciones.setText("");
txtReporta.setText("");
txtServicioExterno.setText("");
txtTRealizado.setText("");
txtTotal.setText("");
    }//GEN-LAST:event_btnLimpiarActionPerformed

    private void btnGuardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarActionPerformed
       
        if (OrdenTerminada(txtFechaTerminacion)) {
            
      Servicio Servicio = new Servicio();
      InstanciarServicio(Servicio);
      InsertServicio(Servicio);
      ReporteServicio(Servicio.getFolio());
            
        
        } 
        else    {
           
      Servicio Servicio = new Servicio();
      InstanciarServicioIncompleto(Servicio);
      InsertServicio(Servicio);
      CambiarEstatus(Servicio.getEquipo());
      ReporteServicioIncompleto(Servicio.getFolio());    
        }
      
    }//GEN-LAST:event_btnGuardarActionPerformed

    public void InstanciarServicio(Servicio Servicio){
      Servicio.setFolio(Integer.parseInt(txtFolio.getText()));
      Servicio.setFechaSolicitud(null);
      Servicio.setFechaSolicitud(Servicio.cambiarFecha(dFecha.getDate()));
      Servicio.setFechaTerminacion(Servicio.cambiarFecha(date));
      Servicio.setEquipo(txtNC.getText());
      Servicio.setFalla(txtFalla.getText());
      Servicio.setTrabajoRealizado(txtTRealizado.getText());
      Servicio.setListaFalla(getSeleccion(buttonGroup1).getText());
      Servicio.setListaTrabajo(getSeleccion(buttonGroup2).getText());
      Servicio.setRefacciones(txtPartesNuevas.getText());
      Servicio.setComentarios(txtObservaciones.getText());
      Servicio.setCosto(CostoTotal);
    }
    
    public void InstanciarServicioIncompleto(Servicio Servicio){
      Servicio.setFolio(Integer.parseInt(txtFolio.getText()));
      Servicio.setFechaSolicitud(null);
      Servicio.setFechaSolicitud(Servicio.cambiarFecha(dFecha.getDate()));
      
      Servicio.setEquipo(txtNC.getText());
      Servicio.setFalla(txtFalla.getText());
      Servicio.setTrabajoRealizado(txtTRealizado.getText());
      Servicio.setListaFalla(getSeleccion(buttonGroup1).getText());
      Servicio.setListaTrabajo(getSeleccion(buttonGroup2).getText());
      Servicio.setRefacciones(txtPartesNuevas.getText());
      Servicio.setComentarios(txtObservaciones.getText());
      Servicio.setCosto(CostoTotal);
    }
    
     public void InsertServicio(Servicio Servicio){
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
         String[] registro = new String[11];
          String sSQL = "";   
       sSQL = "INSERT INTO servicios (Folio, FechaSolicitud, FechaTerminacion, Equipo, Falla, TrabajoRealizado, FallaEncontrada, ServicioRealizado, PartesNuevas, Observaciones, Costo)"
                + "values(?, ?, ?, ? ,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = cn.prepareStatement(sSQL);
            pst.setInt(1, Servicio.getFolio());
            pst.setDate(2, Servicio.getFechaSolicitud());
            pst.setDate(3, Servicio.getFechaTerminacion());
            pst.setString(4, Servicio.getEquipo());
            pst.setString(5, Servicio.getFalla());
            pst.setString(6, Servicio.getTrabajoRealizado());
            pst.setString(7, Servicio.getListaFalla());
            pst.setString(8, Servicio.getListaTrabajo());
            pst.setString(9, Servicio.getRefacciones());
             pst.setString(10, Servicio.getComentarios());
              pst.setDouble(11, Servicio.getCosto());
            int n = pst.executeUpdate();
            if (n > 0) {
                JOptionPane.showMessageDialog(this, "Servicio registrado correctamente");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(this, "Ha ocurrido un error");
        }
    }
    
      public void InsertServicioIncompleto(Servicio Servicio){
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
         String[] registro = new String[10];
          String sSQL = "";   
       sSQL = "INSERT INTO servicios (Folio, FechaSolicitud, Equipo, Falla, TrabajoRealizado, FallaEncontrada, ServicioRealizado, PartesNuevas, Observaciones, Costo)"
                + "values(?, ?, ?, ? ,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = cn.prepareStatement(sSQL);
            pst.setInt(1, Servicio.getFolio());
            pst.setDate(2, Servicio.getFechaSolicitud());
            pst.setString(3, Servicio.getEquipo());
            pst.setString(4, Servicio.getFalla());
            pst.setString(5, Servicio.getTrabajoRealizado());
            pst.setString(6, Servicio.getListaFalla());
            pst.setString(7, Servicio.getListaTrabajo());
            pst.setString(8, Servicio.getRefacciones());
             pst.setString(9, Servicio.getComentarios());
              pst.setDouble(10, Servicio.getCosto());
            int n = pst.executeUpdate();
            if (n > 0) {
                JOptionPane.showMessageDialog(this, "Servicio registrado correctamente");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(this, "Ha ocurrido un error");
        }
    }
      
    public static JRadioButton getSeleccion(ButtonGroup group) 
{
        for (Enumeration e=group.getElements(); e.hasMoreElements(); ) 
        {
            JRadioButton b = (JRadioButton)e.nextElement();
            if (b.getModel() == group.getSelection()) 
            {
                return b;
            }
        }

        return null;
}
    
    private void txtNCFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtNCFocusLost

        ConeccionSQL mysql = new ConeccionSQL();
        String area = null; String Responsable = "";
        Connection cn = mysql.Conectar();
        String[] registro = new String[2];
        if (this.txtNC.getText().isEmpty()) {

        } else {

            try {
                String Cadena = this.txtNC.getText().toUpperCase();
            txtNC.setText(Cadena);
//                ID = Cadena;
                String SQL = "Select Descripcion,Marca, Modelo, NS, areas.Area, departamentos.Departamento, departamentos.Responsable\n" +
                "from equipos, departamentos, areas\n" +
                "where equipos.Area = areas.IDArea\n" +
                "and areas.Departamento = departamentos.IDDepartamento\n" +
                "AND equipos.NControl = '"+Cadena+"'";

                Statement st = cn.createStatement();
                ResultSet rs = st.executeQuery(SQL);

                while (rs.next()) {
                    txtEquipo.setText(rs.getString("Descripcion"));
                    txtNS.setText(rs.getString("NS"));
                    //txtMarca.setText(rs.getString("Marca"));
                    //txtModelo.setText(rs.getString("Modelo"));
                    //txtArea.setText(rs.getString("areas.Area"));
                    txtDepartamento.setText(rs.getString("departamentos.Departamento"));
                    txtReporta.setText(rs.getString("departamentos.Responsable"));
                    // area = (rs.getString("departamentos.Departamento"));

                }

                //            txtResponsablePresta.setText(Responsable);

            } catch (SQLException ex) {
                Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }//GEN-LAST:event_txtNCFocusLost

    private void SR3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SR3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_SR3ActionPerformed

    private void txtHorasIngFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtHorasIngFocusLost
      
        int precio =Integer.parseInt(txtHorasIng.getText());
        String text = "$ "+precio+".00";
        HI = precio;
        txtHorasIng.setText(text);
       
         txtTotal.setText("$ "+ (HI+R+SE) +".00");
          CostoTotal = HI+R+SE;
    }//GEN-LAST:event_txtHorasIngFocusLost

    private void txtRefaccionesFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtRefaccionesFocusLost
       int precio =Integer.parseInt(txtRefacciones.getText());
        String text = "$ "+precio+".00";
        R= precio;
        
        txtRefacciones.setText(text);
       
         txtTotal.setText("$ "+ (HI+R+SE) +".00");
          CostoTotal = HI+R+SE;
    }//GEN-LAST:event_txtRefaccionesFocusLost

    private void txtServicioExternoFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtServicioExternoFocusLost
        int precio =Integer.parseInt(txtServicioExterno.getText());
        String text = "$ "+precio+".00";
        SE = precio;
        txtServicioExterno.setText(text);
        
       txtTotal.setText("$ "+ (HI+R+SE) +".00");
       CostoTotal = HI+R+SE;
    }//GEN-LAST:event_txtServicioExternoFocusLost

    private void txtTotalFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtTotalFocusLost
       
    }//GEN-LAST:event_txtTotalFocusLost

    private void txtTotalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtTotalActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtTotalActionPerformed

    private void txtServicioExternoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtServicioExternoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtServicioExternoActionPerformed

    private void dFechaFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_dFechaFocusLost
           System.out.println("Fecha Solicitud "+dFecha.getDate());
            System.out.println("Fecha Terminacion "+date.getTime());
            if (date.after(dFecha.getDate())) {
           JOptionPane.showMessageDialog(this, "Fecha Imposible");
        }
    }//GEN-LAST:event_dFechaFocusLost

    private void txtFechaTerminacionFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtFechaTerminacionFocusLost
        // TODO add your handling code here:
    }//GEN-LAST:event_txtFechaTerminacionFocusLost


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton Falla1;
    private javax.swing.JRadioButton Falla2;
    private javax.swing.JRadioButton Falla3;
    private javax.swing.JRadioButton SR1;
    private javax.swing.JRadioButton SR2;
    private javax.swing.JRadioButton SR3;
    private javax.swing.JRadioButton SR4;
    private javax.swing.JButton btnGuardar;
    private javax.swing.JButton btnLimpiar;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.ButtonGroup buttonGroup2;
    private com.toedter.calendar.JDateChooser dFecha;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JTextField txtAsignado;
    private javax.swing.JTextField txtDepartamento;
    private javax.swing.JTextField txtEquipo;
    private javax.swing.JTextArea txtFalla;
    private javax.swing.JTextField txtFecha;
    private javax.swing.JTextField txtFechaTerminacion;
    private javax.swing.JTextField txtFolio;
    private javax.swing.JTextField txtHorasIng;
    private javax.swing.JTextField txtNC;
    private javax.swing.JTextField txtNS;
    private javax.swing.JTextArea txtObservaciones;
    private javax.swing.JTextArea txtPartesNuevas;
    private javax.swing.JTextField txtRecibe;
    private javax.swing.JTextField txtRefacciones;
    private javax.swing.JTextField txtReporta;
    private javax.swing.JTextField txtServicioExterno;
    private javax.swing.JTextArea txtTRealizado;
    private javax.swing.JTextField txtTotal;
    // End of variables declaration//GEN-END:variables

    private void CambiarEstatus(String equipo) {
 
    ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        
        
        String sql="UPDATE equipos Set Estatus =? WHERE NControl='"+equipo+"'";

        
try {
           PreparedStatement pst = cn.prepareStatement(sql);
          
            pst.setInt(1, 0);
         
            pst.executeUpdate();
           cn.close();
           
             }
      catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    }

