using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace MicroDo.ShopManager.Common
{
    public class CommandBase : ICommand
    {
        // 事件
        public event EventHandler CanExecuteChanged;

        // 是否可执行
        public bool CanExecute(object parameter)
        {
            // DoCanExecute 返回true可以执行，返回false不可执行
            return DoCanExecute?.Invoke(parameter) == true;
        }

        // 执行器，比如关闭的逻辑写在这
        public void Execute(object parameter)
        {
            DoExecute?.Invoke(parameter);
        }

        public Action<object> DoExecute { get; set; }

        public Func<object, bool> DoCanExecute { get; set; }
    }
}
