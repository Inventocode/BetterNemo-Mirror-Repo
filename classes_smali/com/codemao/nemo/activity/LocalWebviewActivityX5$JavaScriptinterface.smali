.class public Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;
.super Ljava/lang/Object;
.source "LocalWebviewActivityX5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivityX5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaScriptinterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Landroid/content/Context;)V
    .registers 3

    .line 741
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$1002(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Z)Z

    return-void
.end method

.method public onLoadFinished()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$902(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Z)Z

    .line 749
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface$1;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
