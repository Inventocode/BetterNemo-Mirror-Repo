.class Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$2;
.super Ljava/lang/Object;
.source "LocalWebviewActivityX5.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;->onClickShare(Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$2;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyLink()V
    .registers 1

    return-void
.end method

.method public onClickDismiss()V
    .registers 3

    const-string/jumbo v0, "红包抽奖页-点击退出分享"

    const/4 v1, 0x0

    .line 385
    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onShareClick(ILjava/lang/String;)V
    .registers 4

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "红包抽奖页-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$2;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$100(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Lcom/codemao/nemo/bean/LocalWebClickShareEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->getShare_image_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setShareId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 396
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$2;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$400(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;->shareSuccess()V

    return-void
.end method
