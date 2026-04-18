.class public Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;
.super Ljava/lang/Object;
.source "LocalWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaScriptinterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;Landroid/content/Context;)V
    .registers 3

    .line 986
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$1302(Lcom/codemao/nemo/activity/LocalWebviewActivity;Z)Z

    return-void
.end method

.method public onLoadFinished()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 993
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$1202(Lcom/codemao/nemo/activity/LocalWebviewActivity;Z)Z

    .line 994
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface$1;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
