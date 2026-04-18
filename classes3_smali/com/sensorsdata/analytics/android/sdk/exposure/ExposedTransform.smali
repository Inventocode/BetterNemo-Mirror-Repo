.class public Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;
.super Ljava/lang/Object;
.source "ExposedTransform.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile isMonitor:Z

.field private isResumedLayoutChanged:Z

.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

.field private final mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

.field private volatile windowCount:I


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SA.ExposedTransform"

    .line 22
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    .line 75
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    .line 76
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;

    invoke-direct {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;)V

    .line 90
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    invoke-direct {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;)V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;Landroid/app/Activity;)Z
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isViewChanged(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isResumedLayoutChanged:Z

    return p1
.end method

.method private isViewChanged(Landroid/app/Activity;)Z
    .registers 13

    const-string v0, ","

    const/4 v1, 0x1

    .line 207
    :try_start_3
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    invoke-interface {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;->getExposureViews(Landroid/app/Activity;)Ljava/util/Collection;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_93

    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_93

    .line 211
    :cond_14
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    .line 214
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_94

    if-eqz v4, :cond_92

    .line 216
    :try_start_1f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    .line 217
    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 219
    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 220
    sget v7, Lcom/sensorsdata/analytics/android/sdk/exposure/R$id;->sensors_analytics_tag_view_exposure_key:I

    invoke-virtual {v5, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 221
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget v10, v6, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v6, v1

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->viewVisibilityInParents(Landroid/view/View;)Z

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    iget-boolean v9, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isResumedLayoutChanged:Z

    if-eqz v9, :cond_86

    :cond_61
    const-string v9, "SA.ExposedTransform"

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", newSize = "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",view = "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_82} :catch_8d

    .line 225
    :try_start_82
    invoke-virtual {v4, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setViewLayoutChange(Z)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_8a

    const/4 v3, 0x1

    .line 227
    :cond_86
    :try_start_86
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8d

    goto :goto_19

    :catch_8a
    move-exception v4

    const/4 v3, 0x1

    goto :goto_8e

    :catch_8d
    move-exception v4

    .line 229
    :goto_8e
    :try_start_8e
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_94

    goto :goto_19

    :cond_92
    return v3

    :cond_93
    :goto_93
    return v2

    :catch_94
    move-exception p1

    .line 234
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v1
.end method

.method private processViews()[Landroid/view/View;
    .registers 3

    .line 56
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 57
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSortedWindowViews()[Landroid/view/View;

    move-result-object v0

    .line 58
    array-length v1, v0

    if-lez v1, :cond_e

    .line 59
    array-length v1, v0

    iput v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    goto :goto_11

    :cond_e
    const/4 v1, 0x0

    .line 61
    iput v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private viewRemoveTreeObserver(Landroid/view/View;)V
    .registers 4

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_14

    .line 130
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 132
    :cond_14
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 133
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method private viewTreeObserver(Landroid/view/View;)V
    .registers 4

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_14

    .line 120
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 122
    :cond_14
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 123
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method private viewsAddTreeObserver(Landroid/app/Activity;)V
    .registers 9

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewsAddTreeObserver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA.ExposedTransform"

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    if-nez v0, :cond_5e

    .line 139
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;->getExposureViewSize(Landroid/app/Activity;)I

    move-result v0

    if-gtz v0, :cond_25

    return-void

    .line 142
    :cond_25
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->processViews()[Landroid/view/View;

    .line 144
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSortedWindowViews()[Landroid/view/View;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_51

    .line 146
    array-length v3, v0

    if-lez v3, :cond_51

    .line 147
    array-length p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_3e
    if-ge v4, p1, :cond_4b

    aget-object v6, v0, v4

    if-ne v1, v6, :cond_45

    const/4 v5, 0x0

    .line 152
    :cond_45
    invoke-direct {p0, v6}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewTreeObserver(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_4b
    if-eqz v5, :cond_5c

    .line 155
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewTreeObserver(Landroid/view/View;)V

    goto :goto_5c

    .line 158
    :cond_51
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewTreeObserver(Landroid/view/View;)V

    .line 160
    :cond_5c
    :goto_5c
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    :cond_5e
    return-void
.end method

.method private viewsRemoveTreeObserver(Landroid/app/Activity;[Landroid/view/View;)V
    .registers 5

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewsRemoveTreeObserver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA.ExposedTransform"

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    if-nez p2, :cond_25

    .line 169
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSortedWindowViews()[Landroid/view/View;

    move-result-object p2

    :cond_25
    if-eqz p2, :cond_35

    .line 171
    array-length v1, p2

    if-lez v1, :cond_35

    .line 172
    array-length p1, p2

    :goto_2b
    if-ge v0, p1, :cond_40

    aget-object v1, p2, v0

    .line 173
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewRemoveTreeObserver(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 176
    :cond_35
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewRemoveTreeObserver(Landroid/view/View;)V

    :cond_40
    return-void
.end method


# virtual methods
.method public declared-synchronized observerWindow(Landroid/app/Activity;)V
    .registers 7

    monitor-enter p0

    .line 37
    :try_start_1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    .line 38
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->processViews()[Landroid/view/View;

    move-result-object v1

    const-string v2, "SA.ExposedTransform"

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "originWindowCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",windowCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    if-eq v0, v2, :cond_33

    .line 43
    invoke-direct {p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewsRemoveTreeObserver(Landroid/app/Activity;[Landroid/view/View;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_3c

    .line 46
    monitor-exit p0

    return-void

    .line 49
    :cond_33
    :try_start_33
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    if-nez v0, :cond_3a

    .line 50
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3c

    .line 52
    :cond_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 95
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "SA.ExposedTransform"

    const-string v1, "onActivityPaused"

    .line 183
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    monitor-enter p0

    const/4 v0, 0x0

    .line 185
    :try_start_9
    invoke-direct {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewsRemoveTreeObserver(Landroid/app/Activity;[Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;->onActivityPaused(Landroid/app/Activity;)V

    .line 187
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isResumedLayoutChanged:Z

    const-string v0, "SA.ExposedTransform"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    monitor-enter p0

    .line 110
    :try_start_21
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewsAddTreeObserver(Landroid/app/Activity;)V

    .line 111
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;->onActivityResumed(Landroid/app/Activity;)V

    .line 112
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method
