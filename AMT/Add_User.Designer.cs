namespace AMT
{
    partial class Add_User
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.user_tb = new System.Windows.Forms.TextBox();
            this.pass_tb = new System.Windows.Forms.TextBox();
            this.ok_button = new System.Windows.Forms.Button();
            this.cancelar_button = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // user_tb
            // 
            this.user_tb.Location = new System.Drawing.Point(92, 54);
            this.user_tb.Name = "user_tb";
            this.user_tb.Size = new System.Drawing.Size(100, 20);
            this.user_tb.TabIndex = 0;
            // 
            // pass_tb
            // 
            this.pass_tb.Location = new System.Drawing.Point(92, 102);
            this.pass_tb.Name = "pass_tb";
            this.pass_tb.Size = new System.Drawing.Size(100, 20);
            this.pass_tb.TabIndex = 1;
            // 
            // ok_button
            // 
            this.ok_button.Location = new System.Drawing.Point(19, 156);
            this.ok_button.Name = "ok_button";
            this.ok_button.Size = new System.Drawing.Size(75, 23);
            this.ok_button.TabIndex = 2;
            this.ok_button.Text = "Ok";
            this.ok_button.UseVisualStyleBackColor = true;
            this.ok_button.Click += new System.EventHandler(this.ok_button_Click);
            // 
            // cancelar_button
            // 
            this.cancelar_button.Location = new System.Drawing.Point(117, 156);
            this.cancelar_button.Name = "cancelar_button";
            this.cancelar_button.Size = new System.Drawing.Size(75, 23);
            this.cancelar_button.TabIndex = 3;
            this.cancelar_button.Text = "Cancelar";
            this.cancelar_button.UseVisualStyleBackColor = true;
            this.cancelar_button.Click += new System.EventHandler(this.cancelar_button_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 54);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "User";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 102);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 13);
            this.label2.TabIndex = 5;
            this.label2.Text = "Password";
            // 
            // Add_User
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(229, 209);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cancelar_button);
            this.Controls.Add(this.ok_button);
            this.Controls.Add(this.pass_tb);
            this.Controls.Add(this.user_tb);
            this.Name = "Add_User";
            this.Text = "Add_User";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox user_tb;
        private System.Windows.Forms.TextBox pass_tb;
        private System.Windows.Forms.Button ok_button;
        private System.Windows.Forms.Button cancelar_button;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}