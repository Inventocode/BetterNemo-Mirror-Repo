.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$25;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadBase64Cover()V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 2

    .line 1054
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$25;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

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

    .line 1068
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$25;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1069
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$25;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    const-string/jumbo p2, "发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
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

    .line 1057
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 1058
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/GetQiniuResponse;

    .line 1059
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$25;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UploadFileTokenInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->getFile_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/UploadFileTokenInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getBucket_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2800(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 1061
    :cond_33
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$25;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1062
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$25;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    const-string/jumbo p2, "发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_44
    return-void
.end method
