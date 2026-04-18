.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$5;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiPlayerActivity$initListener$5;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$5;

    iget-object v0, v0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    sget v1, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {v0, v1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 281
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$5;

    iget-object v0, v0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {v0, v1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/codemao/midi/view/midiview/MidiView;->setHasChange(Z)V

    .line 283
    :cond_20
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$5;

    iget-object v0, v0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$scrollMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    .line 284
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$5;

    iget-object v0, v0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$stopMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    .line 285
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$5;

    iget-object v0, v0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {v0, v1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->resetSheetList()V

    .line 286
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$5;

    iget-object v0, v0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$notifyCleanImageViewState(Lcom/codemao/midi/MidiPlayerActivity;)V

    return-void
.end method
