.class Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface$1;
.super Ljava/lang/Object;
.source "LocalWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;->onLoadFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;)V
    .registers 2

    .line 994
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 998
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

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

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$1100(Lcom/codemao/nemo/activity/LocalWebviewActivity;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_22

    .line 1002
    :catch_22
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
