.class Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory$1;
.super Ljava/lang/Thread;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 188
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 192
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_b

    :catchall_4
    const-string v0, "ThreadUtils"

    const-string v1, "Request threw uncaught throwable"

    .line 194
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void
.end method
