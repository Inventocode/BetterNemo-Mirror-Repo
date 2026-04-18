.class Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface$1;
.super Ljava/lang/Object;
.source "LocalWebviewActivityX5.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;->onLoadFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;)V
    .registers 2

    .line 749
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:set_token(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$800(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_22

    .line 763
    :catch_22
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
