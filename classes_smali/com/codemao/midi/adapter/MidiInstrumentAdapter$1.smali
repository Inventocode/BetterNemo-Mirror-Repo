.class Lcom/codemao/midi/adapter/MidiInstrumentAdapter$1;
.super Ljava/lang/Object;
.source "MidiInstrumentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->onBindViewHolder(Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

.field final synthetic val$holder:Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;


# direct methods
.method constructor <init>(Lcom/codemao/midi/adapter/MidiInstrumentAdapter;Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;)V
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$1;->this$0:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    iput-object p2, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$1;->val$holder:Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 100
    iget-object p1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$1;->this$0:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->access$002(Lcom/codemao/midi/adapter/MidiInstrumentAdapter;Z)Z

    .line 101
    iget-object p1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$1;->this$0:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    invoke-static {p1}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->access$100(Lcom/codemao/midi/adapter/MidiInstrumentAdapter;)Lcom/codemao/midi/lisenter/RecyclerItemListener;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 102
    iget-object p1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$1;->this$0:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    invoke-static {p1}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->access$100(Lcom/codemao/midi/adapter/MidiInstrumentAdapter;)Lcom/codemao/midi/lisenter/RecyclerItemListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$1;->val$holder:Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/midi/lisenter/RecyclerItemListener;->onItemClick(I)V

    :cond_1d
    return-void
.end method
