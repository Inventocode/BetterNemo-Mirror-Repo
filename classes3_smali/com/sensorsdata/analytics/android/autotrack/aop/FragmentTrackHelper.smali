.class public Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;
.super Ljava/lang/Object;
.source "FragmentTrackHelper.java"


# static fields
.field private static final FRAGMENT_CALLBACKS:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFragmentCallbacks(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 134
    sget-object v0, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 41
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 44
    :cond_7
    sget-object v0, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;

    .line 46
    :try_start_19
    invoke-interface {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;->onViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_d

    :catch_1d
    move-exception v1

    .line 48
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_22
    return-void
.end method

.method public static removeFragmentCallbacks(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 145
    sget-object v0, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static trackFragmentPause(Ljava/lang/Object;)V
    .registers 3

    .line 77
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 80
    :cond_7
    sget-object v0, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;

    .line 82
    :try_start_19
    invoke-interface {v1, p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;->onPause(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_d

    :catch_1d
    move-exception v1

    .line 84
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_22
    return-void
.end method

.method public static trackFragmentResume(Ljava/lang/Object;)V
    .registers 3

    .line 59
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 62
    :cond_7
    sget-object v0, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;

    .line 64
    :try_start_19
    invoke-interface {v1, p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;->onResume(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_d

    :catch_1d
    move-exception v1

    .line 66
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_22
    return-void
.end method

.method public static trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V
    .registers 4

    .line 96
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 99
    :cond_7
    sget-object v0, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;

    .line 101
    :try_start_19
    invoke-interface {v1, p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;->setUserVisibleHint(Ljava/lang/Object;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_d

    :catch_1d
    move-exception v1

    .line 103
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_22
    return-void
.end method

.method public static trackOnHiddenChanged(Ljava/lang/Object;Z)V
    .registers 4

    .line 115
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 118
    :cond_7
    sget-object v0, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;

    .line 120
    :try_start_19
    invoke-interface {v1, p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;->onHiddenChanged(Ljava/lang/Object;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_d

    :catch_1d
    move-exception v1

    .line 122
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_22
    return-void
.end method
