.class public Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;
.super Ljava/lang/Object;
.source "SAFragmentUtils.java"


# static fields
.field private static sFragmentLruCache:Landroid/util/LruCache;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Landroid/util/LruCache;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->sFragmentLruCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fragmentGetUserVisibleHint(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 112
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUserVisibleHint"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 113
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    return v0
.end method

.method public static fragmentIsHidden(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 128
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isHidden"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 129
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    return v0
.end method

.method public static fragmentIsResumed(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 190
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isResumed"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 191
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    return v0
.end method

.method public static getActivityFromFragment(Ljava/lang/Object;)Landroid/app/Activity;
    .registers 5

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1c

    .line 217
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getActivity"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 218
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public static getFragmentFromCache(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 48
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_16

    .line 51
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->sFragmentLruCache:Landroid/util/LruCache;

    invoke-virtual {v3, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    goto :goto_17

    :cond_16
    move-object v3, v0

    :goto_17
    if-eqz v3, :cond_20

    .line 55
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_20

    return-object v3

    .line 60
    :cond_20
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    if-lt v1, v2, :cond_34

    .line 62
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->sFragmentLruCache:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    :cond_34
    return-object v3

    :catch_35
    move-exception p0

    .line 67
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_39
    return-object v0
.end method

.method public static getFragmentFromView(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    .line 204
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;
    .registers 6

    if-eqz p0, :cond_52

    .line 236
    :try_start_2
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    sget v2, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name2:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    move-object v1, v2

    .line 241
    :cond_19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    if-nez p1, :cond_29

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 246
    invoke-static {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    :cond_29
    if-eqz p1, :cond_49

    .line 249
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 250
    invoke-virtual {p1}, Landroid/view/Window;->isActive()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 251
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 253
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->traverseParentViewTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 258
    :cond_49
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getFragmentFromCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_4e

    return-object p0

    :catch_4e
    move-exception p0

    .line 261
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_52
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isFragment(Ljava/lang/Object;)Z
    .registers 6

    const-string v0, "androidx.fragment.app.Fragment"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    :try_start_7
    const-string v3, "android.app.Fragment"

    .line 151
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    move-object v3, v2

    .line 156
    :goto_f
    :try_start_f
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-object v4, v2

    .line 162
    :goto_15
    :try_start_15
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    nop

    :goto_1b
    if-nez v4, :cond_22

    if-nez v2, :cond_22

    if-nez v3, :cond_22

    return v1

    :cond_22
    if-eqz v4, :cond_2a

    .line 171
    :try_start_24
    invoke-virtual {v4, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_2a
    if-eqz v2, :cond_32

    .line 172
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_32
    if-eqz v3, :cond_3c

    .line 173
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_38} :catch_3c

    if-eqz p0, :cond_3c

    :cond_3a
    const/4 p0, 0x1

    return p0

    :catch_3c
    :cond_3c
    return v1
.end method

.method public static isFragmentVisible(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 81
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getParentFragment"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 82
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_19

    :catch_14
    move-exception v1

    .line 84
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    :goto_19
    const/4 v2, 0x1

    if-nez v1, :cond_2f

    .line 89
    :try_start_1c
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsHidden(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    return v2

    .line 93
    :cond_2f
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsHidden(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    .line 94
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsHidden(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_51} :catch_54

    if-eqz p0, :cond_58

    return v2

    :catch_54
    move-exception p0

    .line 99
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_58
    return v0
.end method

.method public static setFragmentToCache(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_18

    .line 42
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->sFragmentLruCache:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method private static traverseParentViewTag(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 268
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    .line 270
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 271
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    goto :goto_5

    :cond_1f
    return-object v0

    :catch_20
    move-exception p0

    .line 276
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const-string p0, ""

    return-object p0
.end method
