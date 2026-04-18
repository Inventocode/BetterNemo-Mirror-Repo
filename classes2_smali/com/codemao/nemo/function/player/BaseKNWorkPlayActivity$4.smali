.class Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$4;
.super Ljava/lang/Object;
.source "BaseKNWorkPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->beforeLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->executeLoadWork(Lcom/codemao/toolssdk/manager/StageType;)V

    return-void
.end method
