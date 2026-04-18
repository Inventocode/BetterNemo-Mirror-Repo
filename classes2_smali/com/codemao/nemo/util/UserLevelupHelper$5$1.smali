.class Lcom/codemao/nemo/util/UserLevelupHelper$5$1;
.super Ljava/lang/Object;
.source "UserLevelupHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper$5;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/util/UserLevelupHelper$5;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper$5;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$5$1;->this$1:Lcom/codemao/nemo/util/UserLevelupHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$5$1;->this$1:Lcom/codemao/nemo/util/UserLevelupHelper$5;

    iget-object v0, v0, Lcom/codemao/nemo/util/UserLevelupHelper$5;->val$checkUserLevelCallBack:Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;

    if-eqz v0, :cond_9

    .line 325
    invoke-interface {v0}, Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;->onError()V

    :cond_9
    return-void
.end method
