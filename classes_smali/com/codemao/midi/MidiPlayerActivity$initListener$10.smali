.class public final Lcom/codemao/midi/MidiPlayerActivity$initListener$10;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;


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

    .line 360
    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$10;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimStopListener()V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$10;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    sget v1, Lcom/codemao/midi/R$id;->iv_start:I

    invoke-virtual {v0, v1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "iv_start"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_18

    const/4 v0, 0x0

    :cond_18
    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_29

    .line 364
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$10;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$stopMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    :cond_29
    return-void
.end method
