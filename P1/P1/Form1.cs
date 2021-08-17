using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace P1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void catalogosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Catalogos frmCatalogos = new Catalogos();
            frmCatalogos.Show();
        }

        private void procesosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Procesos frmP = new Procesos();
            frmP.Show();
        }

        private void informesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Informes frmI = new Informes();
            frmI.Show();
        }

        private void herramientasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Herramientas frmH = new Herramientas();
            frmH.Show();
        }

        private void ayudaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Ayuda frmA = new Ayuda();
            frmA.Show();
        }
    }
}
