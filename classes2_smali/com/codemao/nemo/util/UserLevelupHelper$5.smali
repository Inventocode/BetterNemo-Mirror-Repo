.class Lcom/codemao/nemo/util/UserLevelupHelper$5;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserLevelupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;->checkoutUserLevelInfo(Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/UserLevelInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

.field final synthetic val$checkUserLevelCallBack:Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;)V
    .registers 3

    .line 301
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$5;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    iput-object p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper$5;->val$checkUserLevelCallBack:Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 320
    iget-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$5;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/UserLevelupHelper;->access$400(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    .line 321
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/util/UserLevelupHelper$5$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$5$1;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper$5;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 333
    iget-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$5;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/UserLevelupHelper;->access$400(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    .line 334
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/util/UserLevelupHelper$5$2;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$5$2;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper$5;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/UserLevelInfo;)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$5;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->access$400(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    if-eqz p1, :cond_4d

    .line 305
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_4d

    .line 310
    :cond_e
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AuthorLevelInfo;->getSignature_img_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AuthorLevelInfo;->getSignature_img_link()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skip first publish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 311
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AuthorLevelInfo;->getSignature_img_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserSignature(Ljava/lang/String;)V

    .line 313
    :cond_37
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$5;->val$checkUserLevelCallBack:Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;

    if-eqz v0, :cond_4c

    .line 314
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AuthorLevelInfo;->getSignature_img_link()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;->answerFriendlyProtocolStatus(Z)V

    :cond_4c
    return-void

    .line 306
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$5;->val$checkUserLevelCallBack:Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;

    if-eqz p1, :cond_54

    .line 307
    invoke-interface {p1}, Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;->onError()V

    :cond_54
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 301
    check-cast p1, Lcom/codemao/nemo/bean/UserLevelInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/util/UserLevelupHelper$5;->onSuccess(Lcom/codemao/nemo/bean/UserLevelInfo;)V

    return-void
.end method
