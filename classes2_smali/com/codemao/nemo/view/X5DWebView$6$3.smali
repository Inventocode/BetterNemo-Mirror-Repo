.class Lcom/codemao/nemo/view/X5DWebView$6$3;
.super Ljava/lang/Object;
.source "X5DWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/X5DWebView$6;->onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/view/X5DWebView$6;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$result:Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/X5DWebView$6;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;Landroid/widget/EditText;)V
    .registers 4

    .line 766
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6$3;->this$1:Lcom/codemao/nemo/view/X5DWebView$6;

    iput-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$6$3;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    iput-object p3, p0, Lcom/codemao/nemo/view/X5DWebView$6$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 769
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6$3;->this$1:Lcom/codemao/nemo/view/X5DWebView$6;

    iget-object p1, p1, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {p1}, Lcom/codemao/nemo/view/X5DWebView;->access$500(Lcom/codemao/nemo/view/X5DWebView;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1d

    .line 771
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6$3;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    iget-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$6$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_22

    .line 773
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6$3;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->cancel()V

    :cond_22
    :goto_22
    return-void
.end method
