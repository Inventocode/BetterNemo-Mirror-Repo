.class public Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;
.super Ljava/lang/Object;
.source "SAExposedProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;,
        Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SA.SAExposedProcess"


# instance fields
.field private isActivityChange:Z

.field private mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

.field private mExposedPageWeakHashMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;",
            ">;"
        }
    .end annotation
.end field

.field private mExposedTransform:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;

.field private final mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

.field private mExposureRunnable:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

.field private mHandler:Landroid/os/Handler;

.field private mLastActivityUrl:Ljava/lang/String;

.field private mStayDurationRunnableWeakHashMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;",
            "Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V
    .registers 3

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mLastActivityUrl:Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mStayDurationRunnableWeakHashMap:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposureRunnable:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposureRunnable:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->removeStayDurationRunnable()V

    return-void
.end method

.method static synthetic access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedPageWeakHashMap:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->isActivityChange:Z

    return p0
.end method

.method static synthetic access$602(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->isActivityChange:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mLastActivityUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mLastActivityUrl:Ljava/lang/String;

    return-object p1
.end method

.method private exposureProcess(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;Z)Landroid/app/Activity;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c4

    if-nez p2, :cond_7

    goto/16 :goto_c4

    .line 222
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_19

    .line 224
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    :cond_19
    if-nez v1, :cond_1c

    return-object v0

    .line 229
    :cond_1c
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->init()V

    .line 230
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedPageWeakHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    if-nez v2, :cond_33

    .line 232
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;-><init>()V

    .line 233
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedPageWeakHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    if-eqz p3, :cond_40

    .line 236
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getExposureConfig()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    move-result-object v3

    if-nez v3, :cond_40

    .line 238
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    invoke-virtual {p2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->setExposureConfig(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    .line 242
    :cond_40
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_89

    .line 244
    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureView(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    move-result-object v3

    .line 245
    invoke-virtual {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureView(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    move-result-object v4

    if-eqz v4, :cond_7a

    .line 246
    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v6

    if-eqz v6, :cond_7a

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7a

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 247
    invoke-virtual {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setLastVisible(Z)V

    :cond_7a
    if-eqz v3, :cond_96

    .line 250
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->clone()Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setView(Landroid/view/View;)V

    if-eqz p3, :cond_96

    .line 253
    invoke-virtual {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setExposureData(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V

    goto :goto_96

    .line 256
    :cond_89
    invoke-virtual {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureView(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 257
    invoke-virtual {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureView(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setExposureData(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V

    :cond_96
    :goto_96
    if-nez v0, :cond_9d

    .line 261
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-direct {v0, p2, v5, v5, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;ZZLandroid/view/View;)V

    :cond_9d
    if-eqz p3, :cond_a3

    const/4 p3, 0x1

    .line 264
    invoke-virtual {v0, p3}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setAddExposureView(Z)V

    .line 266
    :cond_a3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addExposureView:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "SA.SAExposedProcess"

    invoke-static {v3, p3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->addExposureView(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V

    .line 268
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->addExposureView(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V

    return-object v1

    :cond_c4
    :goto_c4
    return-object v0
.end method

.method private declared-synchronized init()V
    .registers 3

    monitor-enter p0

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedPageWeakHashMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_46

    .line 93
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedPageWeakHashMap:Ljava/util/WeakHashMap;

    .line 94
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mStayDurationRunnableWeakHashMap:Ljava/util/WeakHashMap;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SA.Exposured"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    .line 188
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;

    invoke-direct {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedTransform:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;

    .line 189
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedTransform:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->addActivityLifeCallback(Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_42
    .catchall {:try_start_1 .. :try_end_3f} :catchall_40

    goto :goto_46

    :catchall_40
    move-exception v0

    goto :goto_48

    :catch_42
    move-exception v0

    .line 192
    :try_start_43
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    .line 194
    :cond_46
    :goto_46
    monitor-exit p0

    return-void

    :goto_48
    monitor-exit p0

    throw v0
.end method

.method private removeStayDurationRunnable()V
    .registers 7

    .line 201
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mStayDurationRunnableWeakHashMap:Ljava/util/WeakHashMap;

    if-nez v1, :cond_9

    .line 203
    monitor-exit v0

    return-void

    .line 205
    :cond_9
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    if-eqz v2, :cond_11

    .line 208
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->isViewLayoutChange()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "SA.SAExposedProcess"

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove ExposureView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mStayDurationRunnableWeakHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;

    .line 211
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 215
    :cond_4c
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private verifyExposureData(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "SA.SAExposedProcess"

    if-nez p1, :cond_b

    const-string p1, "SAExposureData is null"

    .line 316
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 319
    :cond_b
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string p1, "EventName is empty or null"

    .line 320
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 323
    :cond_1b
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getExposureConfig()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3e

    .line 325
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getAreaRate()F

    move-result p1

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_35

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getAreaRate()F

    move-result p1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_6d

    :cond_35
    const-string p1, "SAExposureConfig areaRate must be 0~1"

    .line 326
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->setAreaRate(F)V

    return v3

    .line 331
    :cond_3e
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    if-eqz v0, :cond_6d

    .line 332
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getAreaRate()F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_54

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getAreaRate()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6d

    :cond_54
    const-string v0, "Global SAExposureConfig areaRate must be 0~1"

    .line 333
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getStayDuration()D

    move-result-wide v1

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->isRepeated()Z

    move-result v5

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;-><init>(FDZ)V

    .line 335
    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->setExposureConfig(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    :cond_6d
    return v3
.end method


# virtual methods
.method public addExposureView(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V
    .registers 4

    .line 284
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->verifyExposureData(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 287
    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->exposureProcess(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;Z)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    .line 291
    :cond_f
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    invoke-interface {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;->viewLayoutChange(Landroid/app/Activity;)V

    .line 293
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedTransform:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;

    if-eqz p2, :cond_20

    .line 294
    invoke-virtual {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->observerWindow(Landroid/app/Activity;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 297
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public removeExposureView(Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 347
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_15

    .line 349
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_15
    if-nez v0, :cond_18

    return-void

    :cond_18
    const/4 v1, 0x0

    .line 355
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedPageWeakHashMap:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_24

    .line 356
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    :cond_24
    if-eqz v1, :cond_29

    .line 359
    invoke-virtual {v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->removeExposureView(Landroid/view/View;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public setExposureIdentifier(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    .line 274
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    const/4 p2, 0x0

    .line 276
    :try_start_7
    invoke-direct {p0, p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->exposureProcess(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;Z)Landroid/app/Activity;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 278
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_f
    return-void
.end method

.method public declared-synchronized updateExposureView(Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_5

    .line 303
    monitor-exit p0

    return-void

    .line 305
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->mExposedPageWeakHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    if-eqz v0, :cond_2e

    .line 307
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureView(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 308
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 309
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_30

    .line 312
    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method
