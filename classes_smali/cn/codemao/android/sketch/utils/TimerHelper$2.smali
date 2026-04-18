.class Lcn/codemao/android/sketch/utils/TimerHelper$2;
.super Ljava/util/TimerTask;
.source "TimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/utils/TimerHelper;->startTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/utils/TimerHelper;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/utils/TimerHelper;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/TimerHelper$2;->this$0:Lcn/codemao/android/sketch/utils/TimerHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/TimerHelper$2;->this$0:Lcn/codemao/android/sketch/utils/TimerHelper;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/TimerHelper;->access$000(Lcn/codemao/android/sketch/utils/TimerHelper;)Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 42
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/TimerHelper$2;->this$0:Lcn/codemao/android/sketch/utils/TimerHelper;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/TimerHelper;->access$000(Lcn/codemao/android/sketch/utils/TimerHelper;)Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;->process()V

    :cond_11
    return-void
.end method
