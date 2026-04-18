.class Lcom/codemao/nemo/activity/TipOffActivity$2;
.super Ljava/lang/Object;
.source "TipOffActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/TipOffActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/TipOffActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/TipOffActivity;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity$2;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "还可输<font color=\"#6f60dd\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x32

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "</font>个字符"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity$2;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/TipOffActivity;->tvLimit:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity$2;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/TipOffActivity;->access$200(Lcom/codemao/nemo/activity/TipOffActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
