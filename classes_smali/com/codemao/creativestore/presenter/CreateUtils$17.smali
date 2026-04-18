.class Lcom/codemao/creativestore/presenter/CreateUtils$17;
.super Landroid/os/CountDownTimer;
.source "CreateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->startAutoSaveTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;JJ)V
    .registers 6

    .line 2779
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$17;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 2786
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$17;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$200(Lcom/codemao/creativestore/presenter/CreateUtils;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2787
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$17;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->saveBcmAuto(Z)V

    :cond_e
    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
