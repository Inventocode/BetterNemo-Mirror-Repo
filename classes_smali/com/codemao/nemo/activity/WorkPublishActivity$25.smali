.class Lcom/codemao/nemo/activity/WorkPublishActivity$25;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadCover64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/codemao/nemo/bean/UploadResponseVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

.field final synthetic val$baseUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/String;)V
    .registers 3

    .line 1499
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->val$baseUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/codemao/nemo/bean/UploadResponseVO;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1515
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1516
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const-string/jumbo p2, "发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/codemao/nemo/bean/UploadResponseVO;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/UploadResponseVO;",
            ">;)V"
        }
    .end annotation

    .line 1502
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 1503
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->val$baseUrl:Ljava/lang/String;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/UploadResponseVO;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UploadResponseVO;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/codemao/nemo/util/StringUtil;->appendUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2902(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCoverUrl,uploadCover64成功:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "流程-发布"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->setCoverUrl(Ljava/lang/String;)V

    .line 1506
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2400(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkCover(Ljava/lang/String;)V

    goto :goto_68

    .line 1508
    :cond_57
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1509
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const-string/jumbo p2, "发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_68
    return-void
.end method
