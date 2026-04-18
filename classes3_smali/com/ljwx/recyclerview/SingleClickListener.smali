.class public final Lcom/ljwx/recyclerview/SingleClickListener;
.super Ljava/lang/Object;
.source "SingleClick.kt"

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

.field private final interval:J

.field private lastTime:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/ljwx/recyclerview/SingleClickListener;->interval:J

    .line 27
    iput-object p3, p0, Lcom/ljwx/recyclerview/SingleClickListener;->unit:Ljava/util/concurrent/TimeUnit;

    .line 28
    iput-object p4, p0, Lcom/ljwx/recyclerview/SingleClickListener;->block:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    iget-wide v2, p0, Lcom/ljwx/recyclerview/SingleClickListener;->lastTime:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/ljwx/recyclerview/SingleClickListener;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/ljwx/recyclerview/SingleClickListener;->interval:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_20

    .line 38
    iput-wide v0, p0, Lcom/ljwx/recyclerview/SingleClickListener;->lastTime:J

    .line 39
    iget-object v0, p0, Lcom/ljwx/recyclerview/SingleClickListener;->block:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method
