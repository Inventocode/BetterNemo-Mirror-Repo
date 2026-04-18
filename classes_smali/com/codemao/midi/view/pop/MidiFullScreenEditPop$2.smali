.class Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;
.super Ljava/lang/Object;
.source "MidiFullScreenEditPop.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->onCreate()V
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

    .line 112
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 136
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$600(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 115
    iget-object p2, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$102(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    invoke-static {p1, p2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$202(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;I)I

    .line 117
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p2

    invoke-static {p1, p2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$402(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;I)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 122
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/midi/util/MidiStringUtil;->isHanshu(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 123
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$500(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$100(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :try_start_28
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$200(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)I

    move-result p2

    iget-object p3, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p3}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$400(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_3e

    goto :goto_51

    .line 128
    :catch_3e
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$100(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 130
    :goto_51
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$500(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_60
    return-void
.end method
