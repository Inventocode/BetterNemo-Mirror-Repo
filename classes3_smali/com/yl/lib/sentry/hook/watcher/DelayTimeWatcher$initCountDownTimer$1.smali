.class public final Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$initCountDownTimer$1;
.super Landroid/os/CountDownTimer;
.source "DelayTimeWatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->initCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;


# direct methods
.method constructor <init>(Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$initCountDownTimer$1;->this$0:Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 42
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "DelayTimeWatcher onFinish"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$initCountDownTimer$1;->this$0:Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;

    invoke-static {v0}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->access$getCallBack$p(Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_12
    return-void
.end method

.method public onTick(J)V
    .registers 6

    .line 37
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DelayTimeWatcher onTick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$initCountDownTimer$1;->this$0:Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;

    invoke-static {p1}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->access$getCallBack$p(Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_21
    return-void
.end method
