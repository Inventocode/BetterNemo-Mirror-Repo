.class Lcom/codemao/nemo/dialog/WorkInfoDialog$1;
.super Ljava/lang/Object;
.source "WorkInfoDialog.java"

# interfaces
.implements Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/WorkInfoDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$1;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

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

.method public onTextChanged(Ljava/lang/CharSequence;IIID)V
    .registers 7

    .line 128
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$1;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/WorkInfoDialog;->access$000(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "还可输入<font color=\"#6f60dd\">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int p2, p5

    rsub-int p2, p2, 0xc8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "</font>个字符"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$1;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    iget-object p2, p2, Lcom/codemao/nemo/dialog/WorkInfoDialog;->tvAllowNum:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
