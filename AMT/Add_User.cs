using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AMT
{
    public partial class Add_User : Form
    {
        public Form1 FormPrincipal { set; get; }

        public Add_User(Form1 Principal)
        {
            InitializeComponent();

            FormPrincipal = Principal;
        }


        private void ok_button_Click(object sender, EventArgs e)
        {
            Administrador administradorNovo = new Administrador
            {
                Username = user_tb.Text,
                Password = pass_tb.Text,
            };

            this.Close();
        }

        private void cancelar_button_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }

}
