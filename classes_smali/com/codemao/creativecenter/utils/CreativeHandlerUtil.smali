.class public Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;
.super Landroid/os/Handler;
.source "CreativeHandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/CreativeHandlerUtil$HandleBack;
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
.field private mHandleBack:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil$HandleBack;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/codemao/creativecenter/utils/CreativeHandlerUtil$HandleBack;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/codemao/creativecenter/utils/CreativeHandlerUtil$HandleBack;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object p2, p0, Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;->mHandleBack:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil$HandleBack;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;->mHandleBack:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil$HandleBack;

    if-eqz v0, :cond_7

    .line 31
    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeHandlerUtil$HandleBack;->handleMessage(Landroid/os/Message;)V

    :cond_7
    return-void
.end method
