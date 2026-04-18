.class Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;
.super Ljava/lang/Object;
.source "LocalWebviewActivityX5.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;->onFinishUserAgreement(Lcom/codemao/nemo/bean/GetUserLevelMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;

.field final synthetic val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;Lcom/codemao/nemo/bean/GetUserLevelMessage;)V
    .registers 3

    .line 295
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;

    iput-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v2, "签订协议页-点击确认签订"

    .line 298
    invoke-static {v2, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/GetUserLevelMessage;->getSignature_img_link()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserSignature(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/GetUserLevelMessage;->getUser_level()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/LocalUserHelper;->updateAuthorLevelInfo(II)V

    .line 302
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 303
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getConsumeLevel()I

    move-result v0

    move v7, v0

    goto :goto_2d

    :cond_2c
    const/4 v7, 0x0

    .line 305
    :goto_2d
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    const-string v1, "AUTHOR"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->postLevelupShow(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/GetUserLevelMessage;->getUser_level()I

    move-result v0

    invoke-static {v0, v2}, Lcom/codemao/nemo/util/LocalUserHelper;->updateAuthorLevelInfo(II)V

    .line 307
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;

    iget-object v4, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-static {v4}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$000(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)I

    move-result v5

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/GetUserLevelMessage;->getUser_level()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v10, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1$1;

    invoke-direct {v10, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1$1;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;)V

    new-instance v11, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1$2;

    invoke-direct {v11, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1$2;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;)V

    invoke-virtual/range {v3 .. v11}, Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelUp(Landroid/content/Context;IIIZZLcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method
