.class public final Lcom/codemao/midi/MidiPlayerActivity$initListener$8;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;


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

    .line 326
    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoteClickListener(I)V
    .registers 3

    .line 329
    new-instance v0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteClickListener$1;

    invoke-direct {v0, p1}, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteClickListener$1;-><init>(I)V

    invoke-static {v0}, Lcom/codemao/midi/util/MidiThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 332
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$notifyCleanImageViewState(Lcom/codemao/midi/MidiPlayerActivity;)V

    return-void
.end method

.method public onNoteDeleteListener(ILkotlin/jvm/functions/Function0;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deleteAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$stopMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    const/4 v0, 0x5

    if-lt p1, v0, :cond_45

    .line 338
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    .line 339
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$string;->midi_delete_notice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resources.getString(R.string.midi_delete_notice)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/midi/R$string;->midi_confirm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getString(R.string.midi_confirm)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    new-instance v3, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteDeleteListener$1;

    invoke-direct {v3, p0, p2}, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteDeleteListener$1;-><init>(Lcom/codemao/midi/MidiPlayerActivity$initListener$8;Lkotlin/jvm/functions/Function0;)V

    .line 338
    invoke-static {p1, v0, v1, v2, v3}, Lcom/codemao/midi/MidiPlayerActivity;->access$showCustomDialogPop(Lcom/codemao/midi/MidiPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_4d

    .line 347
    :cond_45
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 348
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$notifyCleanImageViewState(Lcom/codemao/midi/MidiPlayerActivity;)V

    :goto_4d
    return-void
.end method
