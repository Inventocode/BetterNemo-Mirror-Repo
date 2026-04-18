.class Lcom/codemao/nemo/util/UserLevelupHelper$11;
.super Ljava/lang/Object;
.source "UserLevelupHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/UserLevelupHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V
    .registers 2

    .line 546
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$11;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 548
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$11;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->updateOnlineTime()V

    return-void
.end method
