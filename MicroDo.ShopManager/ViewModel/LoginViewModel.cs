using MicroDo.ShopManager.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace MicroDo.ShopManager.ViewModel
{
    public class LoginViewModel
    {
        public CommandBase CloseWindowCommand { get; set; }

        public CommandBase LoginCommand { get; set; }

        public LoginViewModel()
        {
            this.CloseWindowCommand = new CommandBase();
            this.CloseWindowCommand.DoExecute = new Action<object>((o) =>
            {
                (o as Window).Close();
            });
            this.CloseWindowCommand.DoCanExecute = new Func<object, bool>((o) =>
            {   // 关闭按钮一直可用
                return true;
            });

            this.LoginCommand = new CommandBase();
            this.LoginCommand.DoCanExecute = new Func<object, bool>((o) =>
            {
                return true;
            });
            this.LoginCommand.DoExecute = new Action<object>(DoLogin);
        }

        private void DoLogin(Object o)
        {
            (o as Window).DialogResult = true;
        }
    }
}
