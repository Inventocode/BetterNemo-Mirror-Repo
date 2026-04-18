.class Lcom/codemao/nemo/activity/LocalWebviewActivity$1;
.super Ljava/lang/Object;
.source "LocalWebviewActivity.java"

# interfaces
.implements Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserTokenmessage()Ljava/lang/String;
    .registers 3

    .line 182
    :try_start_0
    new-instance v0, Lcom/codemao/nemo/bean/SetUserTokenMessage;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/SetUserTokenMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    const-string v0, ""

    return-object v0
.end method

.method public onClickShare(Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$202(Lcom/codemao/nemo/activity/LocalWebviewActivity;Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)Lcom/codemao/nemo/bean/LocalWebClickShareEvent;

    .line 224
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$300(Lcom/codemao/nemo/activity/LocalWebviewActivity;Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V

    .line 225
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$400(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Lcom/codemao/nemo/dialog/ShareDialog;

    move-result-object p1

    if-nez p1, :cond_2c

    .line 226
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    new-instance v0, Lcom/codemao/nemo/dialog/ShareDialog;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$600(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Lcom/codemao/nemo/bean/ShareModel;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/nemo/dialog/ShareDialog;-><init>(Landroid/app/Activity;Lcom/codemao/nemo/bean/ShareModel;I)V

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$2;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ShareDialog;->setCopyListener(Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;)Lcom/codemao/nemo/dialog/ShareDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$402(Lcom/codemao/nemo/activity/LocalWebviewActivity;Lcom/codemao/nemo/dialog/ShareDialog;)Lcom/codemao/nemo/dialog/ShareDialog;

    .line 245
    :cond_2c
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$400(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Lcom/codemao/nemo/dialog/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/ShareDialog;->show()V

    return-void
.end method

.method public onCopyContent(Ljava/lang/String;)V
    .registers 4

    const-string v0, "simple text"

    .line 191
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1e

    .line 194
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 195
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    const-string/jumbo v0, "复制成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 197
    :cond_1e
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    const-string/jumbo v0, "复制失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_26
    return-void
.end method

.method public onFinishUserAgreement(Lcom/codemao/nemo/bean/GetUserLevelMessage;)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$1;Lcom/codemao/nemo/bean/GetUserLevelMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReportCustomEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3c

    .line 203
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 204
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    .line 205
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 208
    :cond_38
    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_40

    :cond_3c
    const/4 p2, 0x0

    .line 210
    invoke-static {p1, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    :goto_40
    return-void
.end method

.method public onReportPageVist(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 216
    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewCommonViewEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendMatomoViewEvent(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
