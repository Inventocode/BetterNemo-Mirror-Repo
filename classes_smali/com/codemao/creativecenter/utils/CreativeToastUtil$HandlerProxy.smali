.class Lcom/codemao/creativecenter/utils/CreativeToastUtil$HandlerProxy;
.super Landroid/os/Handler;
.source "CreativeToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/CreativeToastUtil;
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

    .line 168
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeToastUtil$HandlerProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 2

    .line 184
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeToastUtil$HandlerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
