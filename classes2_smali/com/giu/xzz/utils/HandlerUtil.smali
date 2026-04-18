.class public Lcom/giu/xzz/utils/HandlerUtil;
.super Landroid/os/Handler;
.source "HandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giu/xzz/utils/HandlerUtil$HandleBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private mHandleBack:Lcom/giu/xzz/utils/HandlerUtil$HandleBack;

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/giu/xzz/utils/HandlerUtil$HandleBack;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/giu/xzz/utils/HandlerUtil;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 19
    iput-object p2, p0, Lcom/giu/xzz/utils/HandlerUtil;->mHandleBack:Lcom/giu/xzz/utils/HandlerUtil$HandleBack;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/giu/xzz/utils/HandlerUtil;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/giu/xzz/utils/HandlerUtil;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/giu/xzz/utils/HandlerUtil;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_12

    .line 31
    :cond_b
    iget-object v0, p0, Lcom/giu/xzz/utils/HandlerUtil;->mHandleBack:Lcom/giu/xzz/utils/HandlerUtil$HandleBack;

    if-eqz v0, :cond_12

    .line 32
    invoke-interface {v0, p1}, Lcom/giu/xzz/utils/HandlerUtil$HandleBack;->handleMessage(Landroid/os/Message;)V

    :cond_12
    :goto_12
    return-void
.end method
