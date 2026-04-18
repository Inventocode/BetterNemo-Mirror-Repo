.class Lcom/codemao/nemo/activity/WorkPublishActivity$22;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/codemao/nemo/bean/GetQiniuResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V
    .registers 2

    .line 1424
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

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
            "Lcom/codemao/nemo/bean/GetQiniuResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1440
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1441
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const-string/jumbo p2, "发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/codemao/nemo/bean/GetQiniuResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/GetQiniuResponse;",
            ">;)V"
        }
    .end annotation

    .line 1427
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 1428
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/GetQiniuResponse;

    .line 1429
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "要上传的图片文件:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "流程-发布"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/UploadFileTokenInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->getFile_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/UploadFileTokenInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getBucket_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, v1, v2, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2500(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 1433
    :cond_64
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1434
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const-string/jumbo p2, "发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_75
    return-void
.end method
