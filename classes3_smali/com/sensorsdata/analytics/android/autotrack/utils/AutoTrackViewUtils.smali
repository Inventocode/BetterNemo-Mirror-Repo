.class public Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;
.super Ljava/lang/Object;
.source "AutoTrackViewUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findTabLayout(Landroid/view/View;)Landroid/view/View;
    .registers 5

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 206
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    .line 207
    :goto_9
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 208
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewPager"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 210
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->findTabLayoutView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_30

    return-object v0

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 218
    :cond_30
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_38

    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_38
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->findTabLayout(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static findTabLayoutView(Landroid/view/View;)Landroid/view/View;
    .registers 4

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mOnPageChangeListeners"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_45

    .line 226
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 227
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tabLayoutRef"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    .line 229
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 230
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_45
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAndroidXTabLayout(Ljava/lang/Object;)Landroid/view/View;
    .registers 5

    const-string v0, "com.google.android.material.tabs.TabLayout$Tab"

    const-string v1, "com.google.android.material.tabs.TabLayout"

    const/4 v2, 0x0

    .line 185
    :try_start_5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 186
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-object v2

    .line 190
    :cond_10
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 191
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "parent"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_3e

    if-eqz p0, :cond_3d

    .line 192
    :try_start_2c
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 193
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Landroid/view/View;)Z

    move-result v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_3d

    if-eqz v0, :cond_3d

    return-object v2

    :catch_3d
    :cond_3d
    move-object v2, p0

    :catch_3e
    :cond_3e
    return-object v2
.end method

.method private static getSupportTabLayout(Ljava/lang/Object;)Landroid/view/View;
    .registers 6

    const-string v0, "com.google.android.material.tabs.TabLayout$Tab"

    const-string v1, "com.google.android.material.tabs.TabLayout"

    const/4 v2, 0x0

    .line 162
    :try_start_5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 164
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-object v2

    .line 169
    :cond_10
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 170
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "mParent"

    const-string v4, "parent"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_40

    if-eqz p0, :cond_3f

    .line 171
    :try_start_2e
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 172
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Landroid/view/View;)Z

    move-result v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_3f

    if-eqz v0, :cond_3f

    return-object v2

    :catch_3f
    :cond_3f
    move-object v2, p0

    :catch_40
    :cond_40
    return-object v2
.end method

.method public static getTabLayout(Ljava/lang/Object;)Landroid/view/View;
    .registers 2

    .line 139
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->getAndroidXTabLayout(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    .line 141
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->getSupportTabLayout(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static getTabLayoutContext(Ljava/lang/Object;Landroid/view/View;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;
    .registers 8

    const/4 v0, 0x0

    .line 48
    :try_start_1
    instance-of v1, p0, Landroid/content/Context;

    if-eqz v1, :cond_d

    .line 49
    check-cast p0, Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    :goto_b
    move-object v4, v0

    goto :goto_47

    .line 51
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 52
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_45

    aget-object v4, v1, v3

    const/4 v5, 0x1

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 55
    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_2b

    .line 56
    move-object p0, v4

    check-cast p0, Landroid/app/Activity;

    goto :goto_b

    .line 58
    :cond_2b
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    move-object p0, v0

    goto :goto_47

    .line 61
    :cond_33
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_42

    .line 62
    check-cast v4, Landroid/view/View;

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_b

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_45
    move-object p0, v0

    move-object v4, p0

    :goto_47
    if-eqz p1, :cond_59

    if-nez p0, :cond_53

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    :cond_53
    if-nez v4, :cond_59

    .line 76
    invoke-static {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    :cond_59
    if-nez p0, :cond_61

    if-eqz v4, :cond_61

    .line 81
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getActivityFromFragment(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object p0

    .line 83
    :cond_61
    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    invoke-direct {v1, p0, v4, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;-><init>(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_66} :catch_67

    return-object v1

    :catch_67
    move-exception p0

    .line 85
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static getTabLayoutText(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_2e

    .line 115
    :try_start_4
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_25

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2e

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_2e

    .line 122
    :cond_25
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 126
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 129
    :cond_2e
    :goto_2e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_42

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "getText"

    .line 130
    invoke-static {p1, v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_42
    return-object v1
.end method

.method public static getTabView(Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 92
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getClickView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_28

    const/4 v0, 0x0

    move-object v2, p0

    move-object v1, v0

    :cond_9
    :goto_9
    if-nez v1, :cond_1f

    if-eqz v2, :cond_1f

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 99
    instance-of v3, v2, Landroid/widget/TabHost;

    if-eqz v3, :cond_9

    move-object v1, v2

    goto :goto_9

    :cond_1f
    if-eqz v1, :cond_28

    .line 104
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_28

    return-object v0

    :cond_28
    return-object p0
.end method

.method public static isBindViewPager(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 150
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "viewPager"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    return v2

    .line 154
    :cond_18
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->findTabLayout(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-ne p0, v1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method
