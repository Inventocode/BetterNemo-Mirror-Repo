.class final Lcom/codemao/midi/adapter/MidiPianoAdapter$onCreateViewHolder$1;
.super Ljava/lang/Object;
.source "MidiPianoAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/adapter/MidiPianoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/midi/adapter/MidiPianoViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/codemao/midi/adapter/MidiPianoAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/midi/adapter/MidiPianoAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter$onCreateViewHolder$1;->this$0:Lcom/codemao/midi/adapter/MidiPianoAdapter;

    iput-object p2, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter$onCreateViewHolder$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 59
    iget-object p1, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter$onCreateViewHolder$1;->$view:Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/midi/adapter/PianoItem;

    if-eqz p1, :cond_32

    .line 60
    iget-object p1, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter$onCreateViewHolder$1;->$view:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/codemao/midi/adapter/PianoItem;

    if-nez v1, :cond_1d

    const/4 p1, 0x0

    :cond_1d
    check-cast p1, Lcom/codemao/midi/adapter/PianoItem;

    if-eqz p1, :cond_32

    .line 61
    iget-object v1, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter$onCreateViewHolder$1;->this$0:Lcom/codemao/midi/adapter/MidiPianoAdapter;

    invoke-virtual {v1}, Lcom/codemao/midi/adapter/MidiPianoAdapter;->getItemClickListener()Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v2, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter$onCreateViewHolder$1;->$view:Landroid/view/View;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;->onItemClick(Lcom/codemao/midi/adapter/PianoItem;Landroid/view/View;)V

    nop

    :cond_32
    return-void
.end method
