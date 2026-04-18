.class Lcom/codemao/nemo/activity/UserNameDesEditActivity$4;
.super Ljava/lang/Object;
.source "UserNameDesEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserNameDesEditActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$4;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 143
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$4;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$4;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->access$000(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)I

    move-result p2

    if-nez p2, :cond_1f

    .line 145
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$4;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvSave:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_52

    .line 147
    :cond_1f
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$4;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x32

    if-gez p1, :cond_30

    const/4 p1, 0x0

    .line 151
    :cond_30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "还可输入<font color=\"#6f60dd\">"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "</font>个字符"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$4;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvLimit:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_52
    return-void
.end method
