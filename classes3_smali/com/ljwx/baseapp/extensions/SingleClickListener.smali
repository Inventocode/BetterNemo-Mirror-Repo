.class public Lcom/ljwx/baseapp/extensions/SingleClickListener;
.super Ljava/lang/Object;
.source "ViewClick.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final checkNetwork:Z

.field private lastTime:J

.field private final period:J


# direct methods
.method public constructor <init>(JZLkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/ljwx/baseapp/extensions/SingleClickListener;->period:J

    .line 35
    iput-boolean p3, p0, Lcom/ljwx/baseapp/extensions/SingleClickListener;->checkNetwork:Z

    .line 36
    iput-object p4, p0, Lcom/ljwx/baseapp/extensions/SingleClickListener;->block:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Lcom/ljwx/baseapp/extensions/SingleClickListener;->checkNetwork:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;->INSTANCE:Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;->checkNetworkEnable()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 p1, 0x0

    .line 43
    invoke-virtual {v0, p1}, Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;->onNotAvailable(I)V

    return-void

    .line 46
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    iget-wide v2, p0, Lcom/ljwx/baseapp/extensions/SingleClickListener;->lastTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/ljwx/baseapp/extensions/SingleClickListener;->period:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_2d

    .line 48
    iput-wide v0, p0, Lcom/ljwx/baseapp/extensions/SingleClickListener;->lastTime:J

    .line 49
    iget-object v0, p0, Lcom/ljwx/baseapp/extensions/SingleClickListener;->block:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2d

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return-void
.end method
