.class public Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;
.super Ljava/lang/Object;
.source "FragmentAPI.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentAPI"


# instance fields
.field private mAutoTrackFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoTrackIgnoredFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackFragmentAppViewScreen:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableAutoTrackFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 58
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    if-nez v0, :cond_e

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    .line 62
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 64
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public enableAutoTrackFragments(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_40

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_40

    .line 77
    :cond_9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    if-nez v0, :cond_14

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    .line 83
    :cond_14
    :try_start_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 86
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_3c

    goto :goto_18

    :catch_3c
    move-exception p1

    .line 90
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public ignoreAutoTrackFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 164
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-nez v0, :cond_e

    .line 165
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    .line 168
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 170
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p1

    .line 173
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public ignoreAutoTrackFragments(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_42

    .line 136
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_42

    .line 140
    :cond_9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-nez v0, :cond_14

    .line 141
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    .line 144
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_18

    .line 146
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 148
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_3e

    goto :goto_18

    :catch_3e
    move-exception p1

    .line 153
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public isFragmentAutoTrackAppViewScreen(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    .line 100
    :try_start_5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v2

    if-nez v2, :cond_6f

    iget-boolean v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mTrackFragmentAppViewScreen:Z

    if-nez v2, :cond_16

    goto :goto_6f

    .line 105
    :cond_16
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    if-eqz v2, :cond_39

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_39

    .line 106
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 108
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 112
    :cond_39
    const-class v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_42

    return v0

    .line 116
    :cond_42
    const-class v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreenAndAppClick;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_4b

    return v0

    .line 120
    :cond_4b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-eqz v0, :cond_74

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_74

    .line 121
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 123
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6d} :catch_70

    xor-int/2addr p1, v1

    return p1

    :cond_6f
    :goto_6f
    return v0

    :catch_70
    move-exception p1

    .line 127
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_74
    return v1
.end method

.method public isTrackFragmentAppViewScreenEnabled()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mTrackFragmentAppViewScreen:Z

    return v0
.end method

.method public resumeIgnoredAutoTrackFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_23

    .line 201
    :try_start_2
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-nez v0, :cond_7

    goto :goto_23

    .line 205
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 207
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    .line 210
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public resumeIgnoredAutoTrackFragments(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3b

    .line 180
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-nez v0, :cond_d

    goto :goto_3b

    .line 185
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_11

    .line 187
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 189
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_11

    :catch_37
    move-exception p1

    .line 194
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public trackFragmentAppViewScreen()V
    .registers 2

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;->mTrackFragmentAppViewScreen:Z

    return-void
.end method
