.class Lcom/codemao/nemo/util/UserLevelupHelper$4;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserLevelupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;->getUserLevelInfo()V
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


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$4;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/UserLevelInfo;)V
    .registers 8

    if-eqz p1, :cond_57

    .line 251
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getConsume_level_info()Lcom/codemao/nemo/bean/ConsumeLevelInfo;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_57

    .line 254
    :cond_f
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AuthorLevelInfo;->getSignature_img_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 255
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AuthorLevelInfo;->getSignature_img_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserSignature(Ljava/lang/String;)V

    .line 257
    :cond_28
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$4;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/AuthorLevelInfo;->getLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getConsume_level_info()Lcom/codemao/nemo/bean/ConsumeLevelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->getLevel()I

    move-result v2

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/AuthorLevelInfo;->getUpgrade_hint()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_48

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    :goto_49
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserLevelInfo;->getConsume_level_info()Lcom/codemao/nemo/bean/ConsumeLevelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->getUpgrade_hint()I

    move-result p1

    if-ne p1, v5, :cond_54

    const/4 v4, 0x1

    :cond_54
    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/util/UserLevelupHelper;->access$300(Lcom/codemao/nemo/util/UserLevelupHelper;IIZZ)V

    :cond_57
    :goto_57
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 248
    check-cast p1, Lcom/codemao/nemo/bean/UserLevelInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/util/UserLevelupHelper$4;->onSuccess(Lcom/codemao/nemo/bean/UserLevelInfo;)V

    return-void
.end method
