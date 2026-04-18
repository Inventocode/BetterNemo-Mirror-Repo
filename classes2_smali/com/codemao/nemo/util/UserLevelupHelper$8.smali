.class Lcom/codemao/nemo/util/UserLevelupHelper$8;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserLevelupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;->postLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V
    .registers 2

    .line 429
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

.method public onNext(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
