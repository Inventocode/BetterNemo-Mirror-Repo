.class public Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static sHaveCustomRecyclerView:Z = false

.field private static final sHaveRecyclerView:Z

.field private static sRecyclerViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

.field private static final sViewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->haveRecyclerView()Z

    move-result v0

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sHaveRecyclerView:Z

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndInvalidate(Landroid/view/View;)V
    .registers 3

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_f

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_f
    return-void
.end method

.method private static checkCustomRecyclerView(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 183
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sHaveRecyclerView:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sHaveCustomRecyclerView:Z

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    const-string v0, "RecyclerView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 185
    :try_start_12
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->findRecyclerInSuper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_21

    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_21

    .line 186
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    const/4 p0, 0x1

    .line 187
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sHaveCustomRecyclerView:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    return-void
.end method

.method public static clear()V
    .registers 2

    .line 465
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 466
    :try_start_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 467
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static findRecyclerInSuper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_3a

    .line 196
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_c
    const-string v2, "getChildAdapterPosition"

    new-array v3, v1, [Ljava/lang/Class;

    .line 198
    const-class v4, Landroid/view/View;

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    nop

    .line 202
    :goto_1c
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_30

    :try_start_20
    const-string v2, "getChildPosition"

    new-array v1, v1, [Ljava/lang/Class;

    .line 204
    const-class v3, Landroid/view/View;

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    nop

    .line 209
    :cond_30
    :goto_30
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_35

    return-object p0

    .line 212
    :cond_35
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCanonicalAndCheckCustomView(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 99
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->checkCustomRecyclerView(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_d
    return-object v0
.end method

.method private static getChildAdapterPositionInRecyclerView(Landroid/view/View;Landroid/view/ViewGroup;)I
    .registers 8

    .line 120
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 122
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getChildAdapterPosition"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    nop

    .line 126
    :goto_1c
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_32

    .line 128
    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getChildPosition"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_32} :catch_32

    .line 134
    :catch_32
    :cond_32
    :try_start_32
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_50

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 135
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 137
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_46} :catch_50
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_46} :catch_50

    return p0

    .line 145
    :cond_47
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sHaveCustomRecyclerView:Z

    if-eqz v0, :cond_50

    .line 146
    invoke-static {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->invokeCRVGetChildAdapterPositionMethod(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0

    :catch_50
    :cond_50
    const/4 p0, -0x1

    return p0
.end method

.method private static getCurrentItem(Landroid/view/View;)I
    .registers 5

    .line 153
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCurrentItem"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 154
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 156
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method public static getMainWindowCount([Landroid/view/View;)I
    .registers 6

    .line 289
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 290
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_1c

    aget-object v3, p0, v1

    if-eqz v3, :cond_19

    .line 292
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    add-int/2addr v2, v3

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return v2
.end method

.method public static getViewNode(Landroid/view/View;IZ)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    .registers 17

    move-object v0, p0

    .line 379
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getViewPosition(Landroid/view/View;I)I

    move-result v1

    .line 380
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_d

    return-object v3

    .line 384
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1b

    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_266

    .line 385
    :cond_1b
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_266

    .line 386
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getCanonicalAndCheckCustomView(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 394
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 395
    instance-of v9, v8, Landroid/view/View;

    if-eqz v9, :cond_57

    .line 396
    check-cast v8, Landroid/view/View;

    .line 397
    sget-object v9, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    monitor-enter v9

    .line 398
    :try_start_41
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 399
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_52

    move-object v3, v8

    .line 402
    :cond_52
    monitor-exit v9

    goto :goto_57

    :catchall_54
    move-exception v0

    monitor-exit v9
    :try_end_56
    .catchall {:try_start_41 .. :try_end_56} :catchall_54

    throw v0

    .line 404
    :cond_57
    :goto_57
    instance-of v8, v4, Landroid/widget/ExpandableListView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_163

    .line 405
    move-object v2, v4

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 406
    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v11

    .line 407
    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v8

    const/4 v13, 0x2

    if-eq v8, v13, :cond_fa

    .line 409
    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 410
    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c3

    .line 412
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v8, "%d:%d"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v3, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v8, "/ELVG["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]/ELVC[-]/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "[0]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/ELVG["

    .line 414
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]/ELVC["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_160

    .line 416
    :cond_c3
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v3, "%d"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, "/ELVG[-]/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[0]"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/ELVG["

    .line 418
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    goto :goto_160

    .line 420
    :cond_fa
    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v8

    if-ge v1, v8, :cond_12b

    const-string v2, "/ELH["

    .line 421
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[0]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ELH["

    .line 422
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]/"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15f

    .line 424
    :cond_12b
    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v8, v2

    sub-int/2addr v1, v8

    const-string v2, "/ELF["

    .line 425
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[0]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ELF["

    .line 426
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]/"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15f
    const/4 v9, 0x0

    :goto_160
    move v8, v9

    goto/16 :goto_21b

    .line 428
    :cond_163
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->isListView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1a2

    .line 430
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v3, "%d"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v10

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[-]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    .line 432
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v1

    const/4 v8, 0x1

    goto/16 :goto_21b

    .line 433
    :cond_1a2
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfSupportSwipeRefreshLayout(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c3

    const-string v1, "/"

    .line 434
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 435
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21a

    .line 436
    :cond_1c3
    invoke-static {v4, p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfFragmentRootView(Landroid/view/View;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1ec

    .line 437
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getCanonicalAndCheckCustomView(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 438
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[0]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    .line 439
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21a

    .line 441
    :cond_1ec
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I

    move-result v1

    const-string v2, "/"

    .line 442
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    .line 443
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_21a
    const/4 v8, 0x0

    .line 445
    :goto_21b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_237

    .line 446
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_22e

    .line 447
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 449
    :cond_22e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_237

    .line 450
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 453
    :cond_237
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24c

    .line 454
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 455
    :try_start_240
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    monitor-exit v1

    goto :goto_24c

    :catchall_249
    move-exception v0

    monitor-exit v1
    :try_end_24b
    .catchall {:try_start_240 .. :try_end_24b} :catchall_249

    throw v0

    .line 458
    :cond_24c
    :goto_24c
    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v1, p2

    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v9

    :cond_266
    return-object v3
.end method

.method public static getViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    .registers 15

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_e
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1d

    .line 323
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_e

    .line 325
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 326
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    instance-of v5, v2, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-eqz v5, :cond_b0

    .line 332
    check-cast v2, Landroid/view/ViewGroup;

    add-int/lit8 v1, v1, -0x1

    move-object v5, v6

    :goto_3d
    if-ltz v1, :cond_9e

    .line 334
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 335
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 336
    invoke-static {v7, v2, p1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getViewNode(Landroid/view/View;IZ)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object v2

    if-eqz v2, :cond_93

    .line 339
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 340
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_7b

    add-int/lit8 v8, v5, 0x1

    .line 342
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v8, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_7b
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewOriginalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    move-object v5, v2

    .line 350
    :cond_93
    instance-of v2, v7, Landroid/view/ViewGroup;

    if-nez v2, :cond_98

    goto :goto_9e

    .line 353
    :cond_98
    move-object v2, v7

    check-cast v2, Landroid/view/ViewGroup;

    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    :cond_9e
    :goto_9e
    move-object v12, v5

    move-object v9, v6

    .line 355
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_b0
    return-object v6
.end method

.method private static getViewPosition(Landroid/view/View;I)I
    .registers 4

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3f

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 364
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfAndroidXViewPager(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfSupportViewPager(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_3b

    .line 366
    :cond_21
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_2d

    .line 367
    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_3f

    .line 368
    :cond_2d
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 369
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getChildAdapterPositionInRecyclerView(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result p0

    if-ltz p0, :cond_3f

    move p1, p0

    goto :goto_3f

    .line 365
    :cond_3b
    :goto_3b
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getCurrentItem(Landroid/view/View;)I

    move-result p1

    :cond_3f
    :goto_3f
    return p1
.end method

.method private static haveRecyclerView()Z
    .registers 2

    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    const/4 v1, 0x1

    .line 170
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_6} :catch_7

    return v1

    .line 174
    :catch_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_a} :catch_b

    return v1

    :catch_b
    const/4 v0, 0x0

    return v0
.end method

.method private static instanceOfAndroidXViewPager(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 59
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static instanceOfFlutterActivity(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "io.flutter.embedding.android.FlutterActivity"

    .line 83
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static instanceOfFlutterSurfaceView(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "io.flutter.embedding.android.FlutterSurfaceView"

    .line 87
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static instanceOfFragmentRootView(Landroid/view/View;Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    .line 108
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getFragmentFromView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    .line 109
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getFragmentFromView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_d

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static instanceOfRecyclerView(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    .line 75
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 77
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sHaveCustomRecyclerView:Z

    if-eqz v0, :cond_23

    if-eqz p0, :cond_23

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    const/4 v0, 0x0

    :cond_25
    :goto_25
    return v0
.end method

.method private static instanceOfSupportSwipeRefreshLayout(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout"

    .line 51
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static instanceOfSupportViewPager(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 55
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static instanceOfUCWebView(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "com.alipay.mobile.nebulauc.impl.UCWebView$WebViewEx"

    .line 71
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static instanceOfWebView(Ljava/lang/Object;)Z
    .registers 2

    .line 63
    instance-of v0, p0, Landroid/webkit/WebView;

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfX5WebView(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfUCWebView(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static instanceOfX5WebView(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "com.tencent.smtt.sdk.WebView"

    .line 67
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static invalidateLayerTypeView([Landroid/view/View;)V
    .registers 5

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_27

    .line 256
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_27

    aget-object v2, p0, v1

    .line 257
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->viewVisibilityInParents(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 258
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->checkAndInvalidate(Landroid/view/View;)V

    .line 259
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_24

    .line 260
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->invalidateViewGroup(Landroid/view/ViewGroup;)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_27
    return-void
.end method

.method private static invalidateViewGroup(Landroid/view/ViewGroup;)V
    .registers 4

    const/4 v0, 0x0

    .line 276
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 277
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 279
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->checkAndInvalidate(Landroid/view/View;)V

    .line 280
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1d

    .line 281
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->invalidateViewGroup(Landroid/view/ViewGroup;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    return-void
.end method

.method private static invokeCRVGetChildAdapterPositionMethod(Landroid/view/View;Landroid/view/View;)I
    .registers 5

    .line 219
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_1b

    .line 220
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method private static isListView(Landroid/view/View;)Z
    .registers 2

    .line 231
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-nez v0, :cond_19

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfAndroidXViewPager(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfSupportViewPager(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public static isWindowNeedTraverse(Landroid/view/View;Ljava/lang/String;Z)Z
    .registers 6

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getCurrentRootWindowsHashCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_10

    return v2

    .line 302
    :cond_10
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3c

    if-nez p2, :cond_17

    return v2

    .line 306
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3c

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3c

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz p1, :cond_3c

    return v2

    .line 310
    :cond_3c
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4f

    .line 311
    :cond_48
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isCustomWindow(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4f

    return v2

    :cond_4f
    const/4 p0, 0x0

    return p0
.end method

.method public static viewVisibilityInParents(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 238
    :cond_4
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 241
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 242
    :cond_f
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_24

    .line 243
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v0

    .line 246
    :cond_1d
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_f

    return v0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method
