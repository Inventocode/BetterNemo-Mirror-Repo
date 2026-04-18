.class Lcom/codemao/nemo/util/MicUtils$1;
.super Ljava/lang/Object;
.source "MicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/MicUtils;->startRecording(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/MicUtils;

.field final synthetic val$timeInterval:F


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/MicUtils;F)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/util/MicUtils$1;->this$0:Lcom/codemao/nemo/util/MicUtils;

    iput p2, p0, Lcom/codemao/nemo/util/MicUtils$1;->val$timeInterval:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils$1;->this$0:Lcom/codemao/nemo/util/MicUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MicUtils;->access$000(Lcom/codemao/nemo/util/MicUtils;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils$1;->this$0:Lcom/codemao/nemo/util/MicUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MicUtils;->access$000(Lcom/codemao/nemo/util/MicUtils;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 74
    :try_start_14
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils$1;->this$0:Lcom/codemao/nemo/util/MicUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MicUtils;->access$100(Lcom/codemao/nemo/util/MicUtils;)Landroid/media/AudioRecord;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils$1;->this$0:Lcom/codemao/nemo/util/MicUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MicUtils;->access$000(Lcom/codemao/nemo/util/MicUtils;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 76
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils$1;->this$0:Lcom/codemao/nemo/util/MicUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/MicUtils;->access$002(Lcom/codemao/nemo/util/MicUtils;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 78
    :cond_2b
    iget v0, p0, Lcom/codemao/nemo/util/MicUtils$1;->val$timeInterval:F

    const/high16 v1, 0x447a0000  # 1000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils$1;->this$0:Lcom/codemao/nemo/util/MicUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MicUtils;->access$200(Lcom/codemao/nemo/util/MicUtils;)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 80
    iget-object v2, p0, Lcom/codemao/nemo/util/MicUtils$1;->this$0:Lcom/codemao/nemo/util/MicUtils;

    invoke-static {v2}, Lcom/codemao/nemo/util/MicUtils;->access$300(Lcom/codemao/nemo/util/MicUtils;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "decibel"

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    iput v1, v0, Landroid/os/Message;->what:I

    .line 85
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/codemao/nemo/util/MicUtils$1;->this$0:Lcom/codemao/nemo/util/MicUtils;

    invoke-static {v1}, Lcom/codemao/nemo/util/MicUtils;->access$300(Lcom/codemao/nemo/util/MicUtils;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_6a} :catch_6b

    goto :goto_0

    :catch_6b
    nop

    goto :goto_0

    :cond_6d
    return-void
.end method
