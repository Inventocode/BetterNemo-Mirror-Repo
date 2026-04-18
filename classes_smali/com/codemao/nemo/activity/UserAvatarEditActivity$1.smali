.class Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;
.super Ljava/lang/Object;
.source "UserAvatarEditActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserAvatarEditActivity;->uploadImage(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

.field final synthetic val$imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserAvatarEditActivity;Ljava/lang/String;)V
    .registers 3

    .line 330
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;->val$imagePath:Ljava/lang/String;

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

    .line 345
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->access$000(Lcom/codemao/nemo/activity/UserAvatarEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 346
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    const-string/jumbo p2, "图片上传失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

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

    .line 333
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 334
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/GetQiniuResponse;

    .line 335
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;->val$imagePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

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

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->uploadBcmFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 338
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->access$000(Lcom/codemao/nemo/activity/UserAvatarEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 339
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    const-string/jumbo p2, "图片上传失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_4b
    return-void
.end method
