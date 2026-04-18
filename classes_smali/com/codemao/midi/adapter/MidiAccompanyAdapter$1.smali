.class Lcom/codemao/midi/adapter/MidiAccompanyAdapter$1;
.super Ljava/lang/Object;
.source "MidiAccompanyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->onBindViewHolder(Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

.field final synthetic val$holder:Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;


# direct methods
.method constructor <init>(Lcom/codemao/midi/adapter/MidiAccompanyAdapter;Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$1;->this$0:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    iput-object p2, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$1;->val$holder:Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 110
    iget-object p1, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$1;->this$0:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->access$002(Lcom/codemao/midi/adapter/MidiAccompanyAdapter;Z)Z

    .line 111
    iget-object p1, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$1;->this$0:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    invoke-static {p1}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->access$100(Lcom/codemao/midi/adapter/MidiAccompanyAdapter;)Lcom/codemao/midi/lisenter/RecyclerItemListener;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 112
    iget-object p1, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$1;->this$0:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    invoke-static {p1}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->access$100(Lcom/codemao/midi/adapter/MidiAccompanyAdapter;)Lcom/codemao/midi/lisenter/RecyclerItemListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$1;->val$holder:Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/midi/lisenter/RecyclerItemListener;->onItemClick(I)V

    :cond_1d
    return-void
.end method
