.class final Lcom/polidea/rxandroidble2_codemao/internal/serialization/RxBleThreadFactory$RxBleNonBlockingThread;
.super Ljava/lang/Thread;
.source "RxBleThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/internal/serialization/RxBleThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RxBleNonBlockingThread"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
