.class Lcom/tencent/smtt/sdk/TbsLogReport$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/TbsLogReport;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/TbsLogReport;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/TbsLogReport;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$1;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_1b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    if-eqz v1, :cond_24

    :try_start_c
    check-cast v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$1;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-static {v1, p1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport;ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_24

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    :cond_1b
    const/16 p1, 0x259

    if-ne v0, p1, :cond_24

    iget-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$1;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    :cond_24
    :goto_24
    return-void
.end method
