.class Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;
.super Ljava/lang/Object;
.source "MidiFullScreenEditPop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 202
    :cond_9
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 203
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$900(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 204
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {v1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$900(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {v2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$900(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 207
    :cond_48
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$string;->midi_enter_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
