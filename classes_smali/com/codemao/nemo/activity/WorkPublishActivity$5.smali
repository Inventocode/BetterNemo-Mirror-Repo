.class Lcom/codemao/nemo/activity/WorkPublishActivity$5;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->setDataEdit(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/widget/EditText;)V
    .registers 3

    .line 407
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    .line 422
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_63

    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 427
    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_40

    .line 428
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_40

    if-lt v1, v4, :cond_40

    .line 429
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

    goto :goto_49

    .line 431
    :cond_40
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 434
    :goto_49
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 437
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const-string/jumbo v0, "喵喵不提倡换行刷屏哦~"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_63
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "还可输入<font color=\"#6f60dd\">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    rsub-int p2, p2, 0xc8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "</font>个字符"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 417
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvAllowNum:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
