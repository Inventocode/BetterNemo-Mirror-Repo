.class Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;
.super Ljava/lang/Object;
.source "LocalWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->onFinishUserAgreement(Lcom/codemao/nemo/bean/GetUserLevelMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

.field final synthetic val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$1;Lcom/codemao/nemo/bean/GetUserLevelMessage;)V
    .registers 3

    .line 137
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iput-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 140
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$002(Lcom/codemao/nemo/activity/LocalWebviewActivity;Z)Z

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "签订协议页-点击确认签订"

    .line 141
    invoke-static {v3, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/GetUserLevelMessage;->getSignature_img_link()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserSignature(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/GetUserLevelMessage;->getUser_level()I

    move-result v2

    invoke-static {v2, v1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateAuthorLevelInfo(II)V

    .line 145
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 146
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getConsumeLevel()I

    move-result v0

    move v6, v0

    goto :goto_34

    :cond_33
    const/4 v6, 0x0

    .line 148
    :goto_34
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    const-string v2, "AUTHOR"

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/util/UserLevelupHelper;->postLevelupShow(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/GetUserLevelMessage;->getUser_level()I

    move-result v0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateAuthorLevelInfo(II)V

    const v0, 0x7f1202c3

    .line 150
    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    .line 151
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object v3, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$100(Lcom/codemao/nemo/activity/LocalWebviewActivity;)I

    move-result v4

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->val$getUserLevelMessage:Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/GetUserLevelMessage;->getUser_level()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v9, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$1;

    invoke-direct {v9, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$1;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;)V

    new-instance v10, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;

    invoke-direct {v10, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$2;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;)V

    invoke-virtual/range {v2 .. v10}, Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelUp(Landroid/content/Context;IIIZZLcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method
