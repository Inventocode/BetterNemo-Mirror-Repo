.class Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;
.super Ljava/lang/Object;
.source "CommentInputPop.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommentInputPop;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    .line 488
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_71

    .line 491
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v1, v1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 493
    iget-object v2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v2, v2, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_46

    .line 494
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_46

    if-lt v1, v4, :cond_46

    .line 495
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    .line 497
    :cond_46
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 500
    :goto_4f
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object p1, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 503
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$500(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "喵喵不提倡换行刷屏哦~"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_71
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 483
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$7;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$400(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    return-void
.end method
