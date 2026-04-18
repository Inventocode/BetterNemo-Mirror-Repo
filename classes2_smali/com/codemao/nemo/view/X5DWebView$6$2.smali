.class Lcom/codemao/nemo/view/X5DWebView$6$2;
.super Ljava/lang/Object;
.source "X5DWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/X5DWebView$6;->onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/view/X5DWebView$6;

.field final synthetic val$result:Lcom/tencent/smtt/export/external/interfaces/JsResult;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/X5DWebView$6;Lcom/tencent/smtt/export/external/interfaces/JsResult;)V
    .registers 3

    .line 717
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6$2;->this$1:Lcom/codemao/nemo/view/X5DWebView$6;

    iput-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$6$2;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 720
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6$2;->this$1:Lcom/codemao/nemo/view/X5DWebView$6;

    iget-object p1, p1, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {p1}, Lcom/codemao/nemo/view/X5DWebView;->access$500(Lcom/codemao/nemo/view/X5DWebView;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, -0x1

    if-ne p2, p1, :cond_13

    .line 722
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6$2;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsResult;

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->confirm()V

    goto :goto_18

    .line 724
    :cond_13
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6$2;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsResult;

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->cancel()V

    :cond_18
    :goto_18
    return-void
.end method
