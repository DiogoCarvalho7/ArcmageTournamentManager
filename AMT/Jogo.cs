//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AMT
{
    using System;
    using System.Collections.Generic;
    
    public partial class Jogo
    {
        public int Id { get; set; }
        public string Descricao { get; set; }
        public System.DateTime Data { get; set; }
        public int Numero { get; set; }
        public int ArbitroId { get; set; }
        public int DeckId { get; set; }
        public int DeckId1 { get; set; }
    
        public virtual Arbitro Arbitro { get; set; }
        public virtual Deck Deck1 { get; set; }
        public virtual Deck Deck2 { get; set; }
    }
}
