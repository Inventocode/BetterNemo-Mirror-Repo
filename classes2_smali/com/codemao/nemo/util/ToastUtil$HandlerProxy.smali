.class Lcom/codemao/nemo/util/ToastUtil$HandlerProxy;
.super Landroid/os/Handler;
.source "ToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/ToastUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerProxy"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 217
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/codemao/nemo/util/ToastUtil$HandlerProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 2

    .line 233
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 235
    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/util/ToastUtil$HandlerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 226
    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :goto_a
    return-void
.end method
