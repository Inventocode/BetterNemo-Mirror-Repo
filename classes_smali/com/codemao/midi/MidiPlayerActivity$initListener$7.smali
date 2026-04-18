.class public final Lcom/codemao/midi/MidiPlayerActivity$initListener$7;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/MidiPlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$7;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPianoItemClick(I)V
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$7;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$stopMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    if-lez p1, :cond_3c

    .line 316
    new-instance v0, Lcom/codemao/midi/MidiPlayerActivity$initListener$7$onPianoItemClick$1;

    invoke-direct {v0, p1}, Lcom/codemao/midi/MidiPlayerActivity$initListener$7$onPianoItemClick$1;-><init>(I)V

    invoke-static {v0}, Lcom/codemao/midi/util/MidiThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 319
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$7;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    sget v1, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {v0, v1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$7;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiModelConvertTools$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->getSheetIndexMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->addNoteModel(I)V

    goto :goto_4a

    :cond_3b
    return-void

    .line 321
    :cond_3c
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$7;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    sget v0, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p1, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/codemao/midi/view/midiview/MidiView;->addNoteModel(I)V

    .line 323
    :goto_4a
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$7;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$notifyCleanImageViewState(Lcom/codemao/midi/MidiPlayerActivity;)V

    return-void
.end method
