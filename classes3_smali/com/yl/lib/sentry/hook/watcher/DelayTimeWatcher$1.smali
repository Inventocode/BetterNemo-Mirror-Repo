.class final Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$1;
.super Ljava/lang/Object;
.source "DelayTimeWatcher.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;-><init>(JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;


# direct methods
.method constructor <init>(Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$1;->this$0:Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$1;->this$0:Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;

    invoke-static {v0}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->access$initCountDownTimer(Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;)V

    return-void
.end method
