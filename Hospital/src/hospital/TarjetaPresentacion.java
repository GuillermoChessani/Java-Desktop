/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital;

import Clases.Proveedor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.GroupLayout;

public class TarjetaPresentacion extends javax.swing.JInternalFrame {
public static String Nombre;

    public TarjetaPresentacion(String Nombre) {
        initComponents();
        String sSQL="";
     
        Proveedor Proveedor = new Proveedor();
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        sSQL = "SELECT Empresa, Nombre,Cargo,Fax, Direccion,Provee, Telefono1, Telefono2, Celular, Email FROM hospital.proveedores WHERE Nombre= '"+Nombre+"';";
        try {
            
            
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sSQL);

            while (rs.next()) {
                Proveedor.setEmpresa( rs.getString("Empresa"));
                recortar(Proveedor.getEmpresa());
                Proveedor.setNombre(rs.getString("Nombre"));
                 Proveedor.setProvee(rs.getString("Provee"));
                Proveedor.setTelefono1(rs.getString("Telefono1"));
                Proveedor.setTelefono2(rs.getString("Telefono2"));
                Proveedor.setCelular(rs.getString("Celular"));
                Proveedor.setEmail(rs.getString("Email"));
                Proveedor.setDireccion(rs.getString("Direccion"));
                Proveedor.setFax(rs.getString("Fax"));
                Proveedor.setCargo(rs.getString("Cargo"));
               
            }
            lblNombre.setText(Proveedor.getNombre());
            //lblEmpresa1.setText(Proveedor.getEmpresa());
             lblProvee.setText(Proveedor.getProvee());
            lblTel1.setText(Proveedor.getTelefono1());
            lblTel2.setText(Proveedor.getTelefono2());
            lblCelular.setText(Proveedor.getCelular());
            lblEmail.setText(Proveedor.getEmail());
            lblDireccion.setText(Proveedor.getDireccion());
            lblFax.setText(Proveedor.getFax());
            lblCargo.setText(Proveedor.getCargo());

        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
public void recortar(String cadena){
    
    if (cadena.length() >= 45) {
        lblEmpresa1.setText( cadena.substring(0, 45));
        lblEmpresa2.setText(cadena.substring(45, cadena.length()));
    }
    else {
        lblEmpresa1.setText(cadena);
    }
    }



    
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        lblEmpresa1 = new java.awt.Label();
        lblCelular = new java.awt.Label();
        lblCargo = new java.awt.Label();
        lblTel1 = new java.awt.Label();
        lblEmail = new java.awt.Label();
        lblNombre = new java.awt.Label();
        lblDireccion = new java.awt.Label();
        lblFax = new java.awt.Label();
        lblTel2 = new java.awt.Label();
        label1 = new java.awt.Label();
        label2 = new java.awt.Label();
        label3 = new java.awt.Label();
        label4 = new java.awt.Label();
        lblEmail1 = new java.awt.Label();
        lblProvee = new java.awt.Label();
        lblEmpresa2 = new java.awt.Label();

        setClosable(true);
        setIconifiable(true);
        setTitle("Contacto de Proveedor");
        setMinimumSize(new java.awt.Dimension(450, 350));
        setPreferredSize(new java.awt.Dimension(450, 350));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 3));

        lblEmpresa1.setAlignment(java.awt.Label.CENTER);
        lblEmpresa1.setFont(new java.awt.Font("Calibri", 1, 16)); // NOI18N
        lblEmpresa1.setText("Nombre de la Empresa");

        lblCelular.setAlignment(java.awt.Label.RIGHT);
        lblCelular.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        lblCelular.setText("Celular");

        lblCargo.setFont(new java.awt.Font("Calibri", 2, 14)); // NOI18N
        lblCargo.setText("Cargo");

        lblTel1.setAlignment(java.awt.Label.RIGHT);
        lblTel1.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        lblTel1.setText("Teléfono 1");

        lblEmail.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        lblEmail.setText("E-Mail");

        lblNombre.setFont(new java.awt.Font("Calibri", 0, 16)); // NOI18N
        lblNombre.setText("Nombre del Contacto");

        lblDireccion.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        lblDireccion.setText("Ciudad");

        lblFax.setAlignment(java.awt.Label.RIGHT);
        lblFax.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        lblFax.setText("Fax");

        lblTel2.setAlignment(java.awt.Label.RIGHT);
        lblTel2.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        lblTel2.setText("Telefono 2");

        label1.setAlignment(java.awt.Label.RIGHT);
        label1.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        label1.setText("Tel:");

        label2.setAlignment(java.awt.Label.RIGHT);
        label2.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        label2.setText("Tel:");

        label3.setAlignment(java.awt.Label.RIGHT);
        label3.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        label3.setText("Fax:");

        label4.setAlignment(java.awt.Label.RIGHT);
        label4.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        label4.setText("Cel:");

        lblEmail1.setAlignment(java.awt.Label.RIGHT);
        lblEmail1.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        lblEmail1.setText("E-Mail:");

        lblProvee.setFont(new java.awt.Font("Calibri", 2, 14)); // NOI18N
        lblProvee.setText("Cargo");

        lblEmpresa2.setAlignment(java.awt.Label.CENTER);
        lblEmpresa2.setFont(new java.awt.Font("Calibri", 1, 16)); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblProvee, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(lblNombre, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(lblEmail1, javax.swing.GroupLayout.PREFERRED_SIZE, 76, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblEmail, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(0, 101, Short.MAX_VALUE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(label3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(label2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(label1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(label4, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(lblCelular, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(lblTel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(lblTel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addComponent(lblFax, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lblCargo, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblDireccion, javax.swing.GroupLayout.PREFERRED_SIZE, 277, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(lblEmpresa1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(lblEmpresa2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(lblEmpresa1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(2, 2, 2)
                .addComponent(lblEmpresa2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(2, 2, 2)
                .addComponent(lblNombre, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(2, 2, 2)
                .addComponent(lblCargo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(1, 1, 1)
                .addComponent(lblProvee, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(label1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblTel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(label2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblTel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(label4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblCelular, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(label3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblFax, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(lblDireccion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblEmail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblEmail1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanel1;
    private java.awt.Label label1;
    private java.awt.Label label2;
    private java.awt.Label label3;
    private java.awt.Label label4;
    private java.awt.Label lblCargo;
    private java.awt.Label lblCelular;
    private java.awt.Label lblDireccion;
    private java.awt.Label lblEmail;
    private java.awt.Label lblEmail1;
    private java.awt.Label lblEmpresa1;
    private java.awt.Label lblEmpresa2;
    private java.awt.Label lblFax;
    private java.awt.Label lblNombre;
    private java.awt.Label lblProvee;
    private java.awt.Label lblTel1;
    private java.awt.Label lblTel2;
    // End of variables declaration//GEN-END:variables
}
