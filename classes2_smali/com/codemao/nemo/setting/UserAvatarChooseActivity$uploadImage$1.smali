.class public final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;
.super Ljava/lang/Object;
.source "UserAvatarChooseActivity.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->uploadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $imagePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    iput-object p2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;->$imagePath:Ljava/lang/String;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
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

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const-string p2, "图片上传失败"

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

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    const-string v0, "图片上传失败"

    const/4 v1, 0x0

    if-eqz p1, :cond_73

    .line 532
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/GetQiniuResponse;

    if-eqz p1, :cond_68

    .line 533
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_68

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2c

    goto :goto_68

    .line 538
    :cond_2c
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;->$imagePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/UploadFileTokenInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->getFile_path()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data.tokens[0].file_path"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/UploadFileTokenInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UploadFileTokenInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "data.tokens[0].token"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetQiniuResponse;->getBucket_url()Ljava/lang/String;

    move-result-object p1

    const-string v3, "data.bucket_url"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2, v2, v1, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$uploadBcmFile(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 534
    :cond_68
    :goto_68
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$showLoading(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V

    .line 535
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 541
    :cond_73
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$showLoading(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V

    .line 542
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_7d
    return-void
.end method
