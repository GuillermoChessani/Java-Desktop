/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital;

import Clases.Alta;
import Clases.Equipo;
import static hospital.InventarioEquipo.txtEntrada;
import java.awt.Color;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
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
public class FormatoAlta extends javax.swing.JInternalFrame {
Date date = new Date();
    /**
     * Creates new form FormatoAlta
     */
    public FormatoAlta() {
        initComponents();
       this.ponerFecha(date.getTime());
        Agrupar();
        GetNextFolio();
        cargarDepartamentos();
    }

    public void Agrupar(){
    buttonGroup1.add(Estado1);
    buttonGroup1.add(Estado2);
   
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        buttonGroup2 = new javax.swing.ButtonGroup();
        jPanel4 = new javax.swing.JPanel();
        jPanel7 = new javax.swing.JPanel();
        txtFolio = new javax.swing.JTextField();
        txtFecha = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jPanel8 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtNC = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        txtEquipo = new javax.swing.JTextField();
        txtModelo = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        txtMarca = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        txtNS = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        btnLimpiar = new javax.swing.JButton();
        btnGuardar = new javax.swing.JButton();
        cmbDepartamento = new javax.swing.JComboBox();
        cmbArea = new javax.swing.JComboBox();
        jPanel12 = new javax.swing.JPanel();
        jLabel19 = new javax.swing.JLabel();
        txtRevisado1 = new javax.swing.JTextField();
        jScrollPane2 = new javax.swing.JScrollPane();
        txtObservaciones = new javax.swing.JTextArea();
        jLabel21 = new javax.swing.JLabel();
        jPanel13 = new javax.swing.JPanel();
        Estado1 = new javax.swing.JRadioButton();
        Estado2 = new javax.swing.JRadioButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        txtAccesorios = new javax.swing.JTextArea();
        jLabel22 = new javax.swing.JLabel();

        setClosable(true);
        setIconifiable(true);
        setTitle("Alta de Equipo Médico");

        jPanel4.setBackground(new java.awt.Color(255, 255, 255));

        jPanel7.setBackground(new java.awt.Color(255, 255, 255));
        jPanel7.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        txtFolio.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        txtFolio.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtFolioKeyTyped(evt);
            }
        });

        txtFecha.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        txtFecha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtFechaActionPerformed(evt);
            }
        });

        jLabel8.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel8.setText("FECHA:");

        jLabel9.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel9.setText("FOLIO:");

        javax.swing.GroupLayout jPanel7Layout = new javax.swing.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel7Layout.createSequentialGroup()
                .addContainerGap(15, Short.MAX_VALUE)
                .addGroup(jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel9, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel8, javax.swing.GroupLayout.Alignment.TRAILING))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtFecha)
                    .addComponent(txtFolio, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel7Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtFolio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtFecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8))
                .addContainerGap(31, Short.MAX_VALUE))
        );

        jLabel10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/HAngeles.jpg"))); // NOI18N

        jPanel8.setBackground(new java.awt.Color(255, 255, 255));
        jPanel8.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)), "ALTA DE EQUIPO MEDICO", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Calibri", 1, 24), new java.awt.Color(0, 0, 255))); // NOI18N

        jLabel1.setText("N° DE CONTROL:");

        txtNC.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        txtNC.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtNCActionPerformed(evt);
            }
        });
        txtNC.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtNCFocusLost(evt);
            }
        });

        jLabel2.setText("EQUIPO:");

        txtEquipo.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        txtModelo.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel3.setText("MODELO:");

        jLabel11.setText("MARCA:");

        txtMarca.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel13.setText("N° DE SERIE:");

        txtNS.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel15.setText("ÁREA:");

        jLabel17.setText("DEPARTAMENTO:");

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

        cmbDepartamento.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cmbDepartamentoItemStateChanged(evt);
            }
        });

        jPanel12.setBackground(new java.awt.Color(255, 255, 255));
        jPanel12.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255))));
        jPanel12.setForeground(new java.awt.Color(0, 0, 255));
        jPanel12.setToolTipText("");

        jLabel19.setText("Proveedor:");

        txtRevisado1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        txtObservaciones.setColumns(20);
        txtObservaciones.setFont(new java.awt.Font("Monospaced", 0, 12)); // NOI18N
        txtObservaciones.setRows(5);
        txtObservaciones.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        jScrollPane2.setViewportView(txtObservaciones);

        jLabel21.setText("Comentarios:");

        jPanel13.setBackground(new java.awt.Color(255, 255, 255));
        jPanel13.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255))));
        jPanel13.setForeground(new java.awt.Color(0, 0, 255));
        jPanel13.setToolTipText("");

        Estado1.setBackground(new java.awt.Color(255, 255, 255));
        Estado1.setSelected(true);
        Estado1.setText("Equipo en Comodato");

        Estado2.setBackground(new java.awt.Color(255, 255, 255));
        Estado2.setText("Equipo Propiedad del Hospital");
        Estado2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Estado2ActionPerformed(evt);
            }
        });
        Estado2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                Estado2FocusGained(evt);
            }
        });

        javax.swing.GroupLayout jPanel13Layout = new javax.swing.GroupLayout(jPanel13);
        jPanel13.setLayout(jPanel13Layout);
        jPanel13Layout.setHorizontalGroup(
            jPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel13Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Estado2)
                    .addComponent(Estado1))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel13Layout.setVerticalGroup(
            jPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel13Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(Estado1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(Estado2)
                .addGap(134, 134, 134))
        );

        javax.swing.GroupLayout jPanel12Layout = new javax.swing.GroupLayout(jPanel12);
        jPanel12.setLayout(jPanel12Layout);
        jPanel12Layout.setHorizontalGroup(
            jPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel12Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel12Layout.createSequentialGroup()
                        .addComponent(jPanel13, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 216, Short.MAX_VALUE)
                        .addComponent(jLabel21)
                        .addGap(44, 44, 44)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 296, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel12Layout.createSequentialGroup()
                        .addComponent(jLabel19, javax.swing.GroupLayout.PREFERRED_SIZE, 112, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(26, 26, 26)
                        .addComponent(txtRevisado1, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel12Layout.setVerticalGroup(
            jPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel12Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel12Layout.createSequentialGroup()
                        .addGroup(jPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jPanel13, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel21))
                        .addGap(24, 24, 24)
                        .addGroup(jPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel19)
                            .addComponent(txtRevisado1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(20, Short.MAX_VALUE))
        );

        txtAccesorios.setColumns(20);
        txtAccesorios.setFont(new java.awt.Font("Monospaced", 0, 12)); // NOI18N
        txtAccesorios.setRows(5);
        txtAccesorios.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));
        jScrollPane3.setViewportView(txtAccesorios);

        jLabel22.setText("ACCESORIOS:");

        javax.swing.GroupLayout jPanel8Layout = new javax.swing.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addGap(29, 29, 29)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 112, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtNC, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtEquipo, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtMarca, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtModelo, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(85, 85, 85)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel17)
                                    .addComponent(jLabel15))
                                .addGap(26, 26, 26)
                                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(txtNS, javax.swing.GroupLayout.DEFAULT_SIZE, 200, Short.MAX_VALUE)
                                    .addComponent(cmbDepartamento, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(cmbArea, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                            .addGroup(jPanel8Layout.createSequentialGroup()
                                .addComponent(jLabel22)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 270, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addGap(203, 203, 203)
                        .addComponent(btnLimpiar)
                        .addGap(164, 164, 164)
                        .addComponent(btnGuardar)))
                .addGap(46, 46, 46))
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel12, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addGap(5, 5, 5)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtNC, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel13)
                    .addComponent(txtNS, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(txtEquipo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel2))
                    .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel17)
                        .addComponent(cmbDepartamento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel15)
                    .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(txtMarca, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel11))
                    .addComponent(cmbArea, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(txtModelo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel22)
                        .addComponent(jLabel3)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel12, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(25, 25, 25)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnLimpiar)
                    .addComponent(btnGuardar))
                .addContainerGap(28, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addComponent(jLabel10)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jPanel7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jPanel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel10)
                    .addComponent(jPanel7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jPanel8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 7, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtFechaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtFechaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtFechaActionPerformed

    private void txtNCFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtNCFocusLost
       
    }//GEN-LAST:event_txtNCFocusLost

 
  private void cargarDepartamentos() {
       ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar(); 
    String SQL="select * from departamentos order by IDDepartamento;";
        String datos[]=new String[2];
        
        try{
           
             Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);
            
            while (rs.next()){
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
                cmbDepartamento.addItem(datos[1]);
               
            }
        }catch(Exception e){
            JOptionPane.showMessageDialog(this, e.toString());
        }
        
    }
  private void cargarAreas() {
   //if (cmbDepartamento.getSelectedIndex()>0){
        String SQL="SELECT departamentos.Departamento, areas.Area FROM hospital.areas, hospital.departamentos \n" +
"where areas.Departamento = departamentos.IDDepartamento and departamentos.IDDepartamento ="+cmbDepartamento.getSelectedIndex();
        
        String datos[]=new String[1];
         ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar(); 
        try{
              Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);
            
            while (rs.next()){
                datos[0]=rs.getString("Area");
                 
                cmbArea.addItem(datos[0]);
            }
        }catch(Exception e){
            JOptionPane.showMessageDialog(this, e.toString());
        }
        }
 
    private void btnLimpiarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLimpiarActionPerformed
       
    }//GEN-LAST:event_btnLimpiarActionPerformed

      private void ponerFecha(long date) {
         DateFormat df = DateFormat.getDateInstance(DateFormat.SHORT);
         this.txtFecha.setText(df.format(date));
        txtFecha.setEditable(false);
        }
    
    private void btnGuardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarActionPerformed
       if (!this.Validacion()) {
            return;
        }
       
        Alta Alta = new Alta();
        Equipo Equipo = new Equipo();
       
        try {
       Alta.setEquipo(txtNC.getText());
       Alta.setFecha(Alta.cambiarFecha(date));
       Alta.setFolio(Integer.parseInt(txtFolio.getText()));
       Alta.setObservaciones(txtObservaciones.getText());
       
       Equipo.setNControl(txtNC.getText());
       Equipo.setDescripcion(txtEquipo.getText());
       Equipo.setMarca(txtMarca.getText());
       Equipo.setModelo(txtModelo.getText());
       Equipo.setNS(txtNS.getText());
       Equipo.setAccesorios(txtAccesorios.getText());
      
       Equipo.setArea(getIDAREA(cmbArea.getSelectedItem().toString()));
       Equipo.setComodato(isComodato());
       Equipo.setEstatus(1);
      
       InsertEquipo(Equipo);
       InsertAlta(Alta);
       ReporteAlta(Equipo.getNControl());
        } catch(java.lang.NumberFormatException e){
            
            if (txtFolio.getText().isEmpty()) {
              JOptionPane.showMessageDialog(this, "Falta por ingresar Folio","Error",JOptionPane.ERROR_MESSAGE);
           
            } 
        }
    }//GEN-LAST:event_btnGuardarActionPerformed

    private String getIDAREA(String area) {
       ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        String IdArea = null ;
      String SQL="select IDArea from areas where Area ='"+area+"';";
     
           try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);
            while (rs.next()){
                IdArea  = rs.getString("areas.IDArea");
            }
        }catch(Exception e){
             }
           return IdArea;
      }
    
    
    public void InsertEquipo(Equipo Equipo){
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
         String[] registro = new String[9];
          String sSQL = "";   
       sSQL = "insert into equipos (NControl, Descripcion, Marca , Modelo, NS, Accesorios, Area, Comodato, Estatus)"
                + "values(?, ?, ?, ? ,?,?,?,?,?)";
        try {
            PreparedStatement pst = cn.prepareStatement(sSQL);
            pst.setString(1, Equipo.getNControl());
            pst.setString(2, Equipo.getDescripcion());
            pst.setString(3, Equipo.getMarca());
            pst.setString(4, Equipo.getModelo());
            pst.setString(5, Equipo.getNS());
            pst.setString(6, Equipo.getAccesorios());
            pst.setString(7, Equipo.getArea());
            pst.setInt(8, Equipo.getComodato());
            pst.setInt(9, Equipo.getEstatus());
            
            int n = pst.executeUpdate();
            if (n > 0) {
                JOptionPane.showMessageDialog(this, "Equipo agregado correctamente");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(this, "Ha ocurrido un error");
        }
    }
    
    
    private void Estado2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Estado2ActionPerformed
 
    }//GEN-LAST:event_Estado2ActionPerformed

    private void Estado2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_Estado2FocusGained
        // TODO add your handling code here:
    }//GEN-LAST:event_Estado2FocusGained

    private void cmbDepartamentoItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cmbDepartamentoItemStateChanged
    cmbArea.setEnabled(true);
    cmbArea.removeAllItems();
       if(cmbDepartamento.getSelectedIndex()>-1){
           cargarAreas();
        }
       
    }//GEN-LAST:event_cmbDepartamentoItemStateChanged

    private void txtFolioKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtFolioKeyTyped
      char c = evt.getKeyChar();
        if (c<'0' || c>'9') {
            evt.consume();
        }
    }//GEN-LAST:event_txtFolioKeyTyped

    private void txtNCActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtNCActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtNCActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton Estado1;
    private javax.swing.JRadioButton Estado2;
    private javax.swing.JButton btnGuardar;
    private javax.swing.JButton btnLimpiar;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.ButtonGroup buttonGroup2;
    private javax.swing.JComboBox cmbArea;
    private javax.swing.JComboBox cmbDepartamento;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel12;
    private javax.swing.JPanel jPanel13;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTextArea txtAccesorios;
    private javax.swing.JTextField txtEquipo;
    private javax.swing.JTextField txtFecha;
    private javax.swing.JTextField txtFolio;
    private javax.swing.JTextField txtMarca;
    private javax.swing.JTextField txtModelo;
    private javax.swing.JTextField txtNC;
    private javax.swing.JTextField txtNS;
    private javax.swing.JTextArea txtObservaciones;
    private javax.swing.JTextField txtRevisado1;
    // End of variables declaration//GEN-END:variables

    private void GetNextFolio() {
 String sSQL = "SELECT count(NControl) as Contador FROM hospital.equipos"; 
String contador = null;
    ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
            
            
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sSQL);

            while (rs.next()) {
                contador = rs.getString("Contador");
               
            }
            txtNC.setText("HAT"+(Integer.parseInt(contador)+1));

        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }}

    private int isComodato() {
       int comodato = 0 ;
        if (Estado1.isSelected()) {
            comodato =1;
          
        }
        if (Estado2.isSelected()){
        comodato= 0;
       
        }
       return comodato;
    }

    private void InsertAlta(Alta Alta) {
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
         String[] registro = new String[4];
       // Date Date = Alta.cambiarFecha(Alta.getFecha());
          String sSQL = "";   
       sSQL = "insert into altas (Folio, Equipo, Fecha , Observaciones)"
                + "values(?, ?, ?, ?)";
        try { 
            PreparedStatement pst = cn.prepareStatement(sSQL);
            pst.setInt(1, Alta.getFolio());
            pst.setString(2, Alta.getEquipo());
            pst.setDate(3, (java.sql.Date) Alta.getFecha());
            pst.setString(4, Alta.getObservaciones());
           
            
            int n = pst.executeUpdate();
            if (n > 0) {
                JOptionPane.showMessageDialog(this, "Alta registrada correctamente");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(this, "Ha ocurrido un error");
        }
        
    }

    private void ReporteAlta(String Control) {

        JasperReport jr = null;
    ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
      
         String archivo = "src\\hospital\\Reportes\\ReporteAlta.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pNControl",Control);
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
        }

    private boolean ValidarCampos() {
        if (txtEquipo.getText() == "") {
            JOptionPane.showMessageDialog(this, "Ingrese la descripción del Equipo");
        }
        if (txtFolio.getText() == "") {
            JOptionPane.showMessageDialog(this, "Ingrese el Folio de la Orden de Alta");
        }
        return true;
    }

    private boolean Validacion() {
         if (this.txtEquipo.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "El campo Equipo es obligatorio", "Advertencia", JOptionPane.WARNING_MESSAGE);
            this.txtEquipo.requestFocusInWindow();
            return false;
        }
        if (this.txtMarca.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "El campo Marca es obligatorio", "Advertencia", JOptionPane.WARNING_MESSAGE);
            this.txtMarca.requestFocusInWindow();
            return false;
        }
      
         
            if (txtModelo.getText().isEmpty()){
             txtModelo.setText("S/M");
             
            }
            
            if (txtNS.getText().isEmpty()){
            txtNS.setText("S/NS");
            
            }
       return true;
    }        
        
    
}
