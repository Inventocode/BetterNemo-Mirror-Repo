.class Lcom/codemao/nemo/util/UserLevelupHelper$9;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserLevelupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;->postOver30()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cur:J


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper;J)V
    .registers 4

    .line 464
    iput-wide p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper$9;->val$cur:J

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

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 464
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/util/UserLevelupHelper$9;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 4

    .line 467
    iget-wide v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$9;->val$cur:J

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/SprefUtil;->putPostTime(J)V

    return-void
.end method
