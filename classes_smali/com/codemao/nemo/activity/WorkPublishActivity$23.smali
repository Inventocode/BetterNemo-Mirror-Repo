.class Lcom/codemao/nemo/activity/WorkPublishActivity$23;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadCoverJPG(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1448
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 4

    .line 1451
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1452
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->val$baseUrl:Ljava/lang/String;

    iget-object p3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->val$path:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/codemao/nemo/util/StringUtil;->appendUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2602(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "第一次上传成功的uploadImageUrl:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2600(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "流程-发布"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2700(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    goto :goto_48

    .line 1456
    :cond_37
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1457
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$23;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const-string/jumbo p2, "发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_48
    return-void
.end method
