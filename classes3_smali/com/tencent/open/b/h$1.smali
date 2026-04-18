.class Lcom/tencent/open/b/h$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/b/h;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/h;Landroid/os/Looper;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/tencent/open/b/h$1;->a:Lcom/tencent/open/b/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_b

    goto :goto_16

    .line 140
    :cond_b
    iget-object v0, p0, Lcom/tencent/open/b/h$1;->a:Lcom/tencent/open/b/h;

    invoke-virtual {v0}, Lcom/tencent/open/b/h;->d()V

    goto :goto_16

    .line 137
    :cond_11
    iget-object v0, p0, Lcom/tencent/open/b/h$1;->a:Lcom/tencent/open/b/h;

    invoke-virtual {v0}, Lcom/tencent/open/b/h;->b()V

    .line 145
    :goto_16
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
