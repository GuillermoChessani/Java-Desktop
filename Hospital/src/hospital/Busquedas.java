/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital;


import Clases.Equipo;
import javax.swing.JOptionPane;

/**
 *
 * @author Usuario
 */
public class Busquedas extends javax.swing.JInternalFrame {
public static String Equipo = "";

public Busquedas() {
        initComponents();
    
    }

    public void Buscar(String equipo){
     
       InventarioEquipo.n = Equipo;
       InventarioEquipo.txtEntrada.setText(Equipo);
       this.dispose();
    
       
    }
    
   
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        btnFlujometro = new javax.swing.JButton();
        btnRegulador = new javax.swing.JButton();
        btnCamilla = new javax.swing.JButton();
        btnCama = new javax.swing.JButton();
        btnBaumanometro = new javax.swing.JButton();
        btnDesfibrilador = new javax.swing.JButton();
        btnIncubadora = new javax.swing.JButton();
        btnCuna = new javax.swing.JButton();
        btnMonitor = new javax.swing.JButton();
        btnVentilador = new javax.swing.JButton();
        btnMesa = new javax.swing.JButton();
        btnBomba = new javax.swing.JButton();

        setClosable(true);
        setTitle("Búsquedas más frecuentes");
        setAlignmentX(100.0F);
        setNormalBounds(new java.awt.Rectangle(300, 0, 85, 0));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        jLabel1.setFont(new java.awt.Font("Calibri", 1, 24)); // NOI18N
        jLabel1.setText("Búsquedas más frecuentes:");

        btnFlujometro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/flujometro.jpg"))); // NOI18N
        btnFlujometro.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnFlujometro.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFlujometroActionPerformed(evt);
            }
        });

        btnRegulador.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/regulador.jpg"))); // NOI18N
        btnRegulador.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnRegulador.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnReguladorActionPerformed(evt);
            }
        });

        btnCamilla.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/camilla.jpg"))); // NOI18N
        btnCamilla.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnCamilla.setMaximumSize(new java.awt.Dimension(209, 102));
        btnCamilla.setMinimumSize(new java.awt.Dimension(209, 102));
        btnCamilla.setPreferredSize(new java.awt.Dimension(209, 102));
        btnCamilla.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCamillaActionPerformed(evt);
            }
        });

        btnCama.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/cama.jpg"))); // NOI18N
        btnCama.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnCama.setMaximumSize(new java.awt.Dimension(209, 102));
        btnCama.setMinimumSize(new java.awt.Dimension(209, 102));
        btnCama.setPreferredSize(new java.awt.Dimension(209, 102));
        btnCama.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCamaActionPerformed(evt);
            }
        });

        btnBaumanometro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/baumanometro.jpg"))); // NOI18N
        btnBaumanometro.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnBaumanometro.setMaximumSize(new java.awt.Dimension(209, 102));
        btnBaumanometro.setMinimumSize(new java.awt.Dimension(209, 102));
        btnBaumanometro.setPreferredSize(new java.awt.Dimension(209, 102));
        btnBaumanometro.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBaumanometroActionPerformed(evt);
            }
        });

        btnDesfibrilador.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/desfibrilador.jpg"))); // NOI18N
        btnDesfibrilador.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnDesfibrilador.setMaximumSize(new java.awt.Dimension(209, 102));
        btnDesfibrilador.setMinimumSize(new java.awt.Dimension(209, 102));
        btnDesfibrilador.setPreferredSize(new java.awt.Dimension(209, 102));
        btnDesfibrilador.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDesfibriladorActionPerformed(evt);
            }
        });

        btnIncubadora.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/incubadora.jpg"))); // NOI18N
        btnIncubadora.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnIncubadora.setMaximumSize(new java.awt.Dimension(209, 102));
        btnIncubadora.setMinimumSize(new java.awt.Dimension(209, 102));
        btnIncubadora.setPreferredSize(new java.awt.Dimension(209, 102));
        btnIncubadora.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnIncubadoraActionPerformed(evt);
            }
        });

        btnCuna.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/cunacalorradiante.jpg"))); // NOI18N
        btnCuna.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnCuna.setMaximumSize(new java.awt.Dimension(209, 102));
        btnCuna.setMinimumSize(new java.awt.Dimension(209, 102));
        btnCuna.setPreferredSize(new java.awt.Dimension(209, 102));
        btnCuna.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCunaActionPerformed(evt);
            }
        });

        btnMonitor.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/monitorsignosvitales.jpg"))); // NOI18N
        btnMonitor.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnMonitor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnMonitorActionPerformed(evt);
            }
        });

        btnVentilador.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/ventiladorpulmonar.jpg"))); // NOI18N
        btnVentilador.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnVentilador.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnVentiladorActionPerformed(evt);
            }
        });

        btnMesa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/mesaquirurgica.jpg"))); // NOI18N
        btnMesa.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnMesa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnMesaActionPerformed(evt);
            }
        });

        btnBomba.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/bombadeinfusion.jpg"))); // NOI18N
        btnBomba.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        btnBomba.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBombaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addComponent(btnRegulador, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(btnCamilla, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(btnCama, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(btnFlujometro, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnBaumanometro, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnDesfibrilador, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnIncubadora, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnCuna, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnVentilador, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnMonitor, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnMesa, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnBomba, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(177, 177, 177)
                        .addComponent(jLabel1)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnBaumanometro, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnMonitor, javax.swing.GroupLayout.PREFERRED_SIZE, 102, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(4, 4, 4)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnDesfibrilador, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnVentilador, javax.swing.GroupLayout.PREFERRED_SIZE, 102, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnMesa, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnIncubadora, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(btnCuna, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnBomba, javax.swing.GroupLayout.PREFERRED_SIZE, 102, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btnFlujometro, javax.swing.GroupLayout.PREFERRED_SIZE, 102, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(4, 4, 4)
                        .addComponent(btnRegulador, javax.swing.GroupLayout.PREFERRED_SIZE, 102, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnCamilla, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnCama, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
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
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCamaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCamaActionPerformed
        this.Buscar(this.Equipo = "Cama Hospitalaria");
            
    }//GEN-LAST:event_btnCamaActionPerformed

    private void btnFlujometroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFlujometroActionPerformed
    this.Buscar(this.Equipo = "Flujómetro");       
    }//GEN-LAST:event_btnFlujometroActionPerformed

    private void btnCamillaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCamillaActionPerformed
 this.Buscar(this.Equipo = "Camilla");        // TODO add your handling code here:
    }//GEN-LAST:event_btnCamillaActionPerformed

    private void btnBaumanometroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBaumanometroActionPerformed
 this.Buscar(this.Equipo = "Baumanómetro");        // TODO add your handling code here:
    }//GEN-LAST:event_btnBaumanometroActionPerformed

    private void btnReguladorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnReguladorActionPerformed
 this.Buscar(this.Equipo = "Regulador de Vacio");        // TODO add your handling code here:
    }//GEN-LAST:event_btnReguladorActionPerformed

    private void btnDesfibriladorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDesfibriladorActionPerformed
 this.Buscar(this.Equipo = "Desfibrilador");        // TODO add your handling code here:
    }//GEN-LAST:event_btnDesfibriladorActionPerformed

    private void btnIncubadoraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnIncubadoraActionPerformed
 this.Buscar(this.Equipo = "Incubadora Neonatal");
    }//GEN-LAST:event_btnIncubadoraActionPerformed

    private void btnCunaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCunaActionPerformed
  this.Buscar(this.Equipo = "Cuna de Calor Radiante");
    }//GEN-LAST:event_btnCunaActionPerformed

    private void btnMonitorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnMonitorActionPerformed
       this.Buscar(this.Equipo = "Monitor de Signos Vitales");
    }//GEN-LAST:event_btnMonitorActionPerformed

    private void btnVentiladorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVentiladorActionPerformed
     this.Buscar(this.Equipo = "Ventilador Pulmonar");
    }//GEN-LAST:event_btnVentiladorActionPerformed

    private void btnMesaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnMesaActionPerformed
      this.Buscar(this.Equipo = "Mesa Quirúrgica");
    }//GEN-LAST:event_btnMesaActionPerformed

    private void btnBombaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBombaActionPerformed
      this.Buscar(this.Equipo = "Bomba de Infusión");
    }//GEN-LAST:event_btnBombaActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton btnBaumanometro;
    public javax.swing.JButton btnBomba;
    public javax.swing.JButton btnCama;
    public javax.swing.JButton btnCamilla;
    public javax.swing.JButton btnCuna;
    public javax.swing.JButton btnDesfibrilador;
    public static javax.swing.JButton btnFlujometro;
    public javax.swing.JButton btnIncubadora;
    public javax.swing.JButton btnMesa;
    public javax.swing.JButton btnMonitor;
    public javax.swing.JButton btnRegulador;
    public javax.swing.JButton btnVentilador;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
