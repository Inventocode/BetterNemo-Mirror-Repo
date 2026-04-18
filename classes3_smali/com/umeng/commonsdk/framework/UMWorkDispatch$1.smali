.class final Lcom/umeng/commonsdk/framework/UMWorkDispatch$1;
.super Landroid/os/Handler;
.source "UMWorkDispatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/framework/UMWorkDispatch;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 203
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x300

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x310

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x302

    if-eq v0, v1, :cond_17

    const/16 v1, 0x303

    if-eq v0, v1, :cond_13

    goto :goto_22

    .line 221
    :cond_13
    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->access$000(Landroid/os/Message;)V

    goto :goto_22

    .line 217
    :cond_17
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->access$100()V

    goto :goto_22

    .line 225
    :cond_1b
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->access$200()V

    goto :goto_22

    .line 213
    :cond_1f
    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->access$000(Landroid/os/Message;)V

    :goto_22
    return-void
.end method
