// From: https://rosettacode.org/wiki/S-expressions#C#

using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

public class SNode
{
    private List<SNode> _items;
    public string Name { get; set; }
    public IReadOnlyCollection<SNode> Items { get { return _items.AsReadOnly(); } }
    public SNode()
    {
        this._items = new List<SNode>();
    }
    public SNode(string name) : this()
    {
        this.Name = name;
    }
    public void AddNode(SNode node)
    {
        this._items.Add(node);
    }
}

public class SNodeFull : SNode
{
    private bool _isLeaf;
    public bool IsLeaf { get => _isLeaf; }
    public SNodeFull(bool isLeaf) : base()
    {
        this._isLeaf = isLeaf;
    }

    public SNodeFull(string name, bool isLeaf) : base(name)
    {
        this._isLeaf = isLeaf;
    }

    public SNodeFull RootNode { get; set; }

    public void AddNode(SNodeFull node)
    {
        base.AddNode(node);
        node.RootNode = this;
    }
}

namespace SExpression
{
    public partial class SExpression
    {
        public const string ErrorStrNotValidFormat = "Not valid format.";
    }
    public partial class SExpression
    {
        public String Serialize(SNode root)
        {
            if (root == null)
            {
                throw new ArgumentNullException();
            }
            var sb = new StringBuilder();
            Serialize(root, sb);
            return sb.ToString();
        }
        private void Serialize(SNode node, StringBuilder sb)
        {
            sb.Append('(');

            if (node.Items.Count > 0)
            {
                int x = 0;
                foreach (var item in node.Items)
                {
                    if (x > 0)
                    {
                        sb.Append(' ');
                    }
                    else
                    {
                        x++;
                    }
                    if (item.Items.Count > 0)
                    {
                        Serialize(item, sb);
                    }
                    else
                    {
                        SerializeItem(item, sb);
                    }
                }
            }

            sb.Append(')');
        }
        private void SerializeItem(SNode node, StringBuilder sb)
        {
            if (node.Name == null)
            {
                sb.Append("()");
                return;
            }
            node.Name = node.Name.Replace("\"", "\\\"");
            if (node.Name.IndexOfAny(new char[] { ' ', '"', '(', ')' }) != -1 || node.Name == string.Empty)
            {
                sb.Append('"').Append(node.Name).Append('"');
                return;
            }
            sb.Append(node.Name);
        }
    }
    public partial class SExpression
    {
        public SNode Deserialize(string st)
        {
            if (st == null)
            {
                return null;
            }
            st = st.Trim();
            if (string.IsNullOrEmpty(st))
            {
                return null;
            }

            var begin = st.IndexOf('(');
            if (begin != 0)
            {
                throw new Exception();
            }
            var end = st.LastIndexOf(')');
            if (end != st.Length - 1)
            {
                throw new Exception(ErrorStrNotValidFormat);
            }
            st = st.Remove(st.Length - 1).Remove(0, 1).ToString();
            var node = new SNodeFull(false);
            Deserialize(ref st, node);
            return node;
        }

        private void Deserialize(ref string st, SNodeFull root)
        {
            st = st.Trim();
            if (string.IsNullOrEmpty(st))
            {
                return;
            }

            SNodeFull node = null;
            SNodeFull r = root;
            do
            {
                while (st[0] == ')')
                {
                    st = st.Remove(0, 1).Trim();
                    if (st.Length == 0)
                    {
                        return;
                    }
                    r = root.RootNode;
                    if (r == null)
                    {
                        throw new Exception(ErrorStrNotValidFormat);
                    }
                }
                node = DeserializeItem(ref st);
                st = st.Trim();

                r.AddNode(node);

                if (!node.IsLeaf)
                {
                    Deserialize(ref st, node);
                }
            }
            while (st.Length > 0);

        }

        private SNodeFull DeserializeItem(ref string st)
        {
            if (st[0] == '(')
            {
                st = st.Remove(0, 1);
                return new SNodeFull(false);
            }

            var x = 0;
            var esc = 0;
            for (int i = 0; i < st.Length; i++)
            {
                if (st[i] == '"')
                {
                    if (esc == 0)
                    {
                        esc = 1;
                    }
                    else if (esc == 1 && (i > 0 && st[i - 1] == '\\'))
                    {
                        throw new Exception(ErrorStrNotValidFormat);
                    }
                    else
                    {
                        esc = 2;
                        break;
                    }
                }
                else if (esc == 0 && " ()".Contains(st[i]))
                {
                    break;
                }

                x++;
            }
            if (esc == 1)
            {
                throw new Exception(ErrorStrNotValidFormat);
            }

            var head = esc == 0 ? st.Substring(0, x) : st.Substring(1, x - 1);
            st = st.Remove(0, esc == 0 ? x : x + 2);
            return new SNodeFull(head, true);
        }
    }
}

namespace SExpression.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            var str =
@"((data ""quoted data"" 123 4.5)
(data(!@# (4.5) ""(more"" ""data)"")))";

            var se = new SExpression();
            var node = se.Deserialize(str);
            var result = se.Serialize(node);
            Console.WriteLine(result);
        }
    }
}
