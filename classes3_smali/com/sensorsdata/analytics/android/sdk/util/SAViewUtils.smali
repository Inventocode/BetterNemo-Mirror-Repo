.class public Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;
.super Ljava/lang/Object;
.source "SAViewUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SAViewUtils"

.field private static sOSViewPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils$1;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils$1;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->sOSViewPackage:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;
    .registers 4

    .line 768
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "$screen_name"

    .line 770
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 771
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    .line 772
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "$title"

    .line 773
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    :cond_21
    return-object v0

    :catch_22
    move-exception p0

    .line 776
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 777
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private static exceptionCollect(Landroid/view/View;)V
    .registers 4

    const-string v0, "SA.SAViewUtils"

    if-eqz p0, :cond_8a

    .line 632
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewClass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 636
    instance-of p0, v1, Landroid/view/View;

    if-eqz p0, :cond_8a

    .line 637
    check-cast v1, Landroid/view/View;

    .line 638
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewParentClass->ID:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 641
    :cond_59
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8a

    .line 642
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_8a

    .line 644
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "childView->ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p0

    .line 651
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public static getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    .line 195
    :try_start_3
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_b

    .line 196
    check-cast p0, Landroid/app/Activity;

    :goto_9
    move-object v0, p0

    goto :goto_25

    .line 197
    :cond_b
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_25

    .line 198
    :goto_f
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1e

    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1e

    .line 199
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_f

    .line 201
    :cond_1e
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_25

    .line 202
    check-cast p0, Landroid/app/Activity;

    goto :goto_9

    :cond_25
    :goto_25
    if-nez v0, :cond_3d

    if-eqz p1, :cond_3d

    .line 207
    sget p0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_activity:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 209
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_3d

    .line 210
    check-cast p0, Landroid/app/Activity;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_39

    move-object v0, p0

    goto :goto_3d

    :catch_39
    move-exception p0

    .line 216
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public static getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I
    .registers 9

    const/4 v0, -0x1

    .line 550
    :try_start_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    return v0

    .line 553
    :cond_6
    check-cast p0, Landroid/view/ViewGroup;

    .line 554
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 558
    :goto_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_40

    .line 559
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 560
    invoke-static {v5, v2}, Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder;->hasClassName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_3d

    .line 563
    :cond_2b
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_38

    .line 564
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_41

    if-nez v6, :cond_38

    goto :goto_3b

    :cond_38
    if-ne v5, p1, :cond_3b

    return v4

    :cond_3b
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_40
    return v0

    :catch_41
    move-exception p0

    .line 575
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v0
.end method

.method public static getElementSelector(Landroid/view/View;)Ljava/lang/String;
    .registers 6

    .line 508
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getSelectPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 515
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 516
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 517
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    goto :goto_19

    :cond_18
    move-object v1, v2

    :goto_19
    if-eqz v1, :cond_23

    .line 521
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getSelectPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 523
    :cond_23
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_6e

    if-nez v2, :cond_3e

    .line 527
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getElementSelectorOrigin(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->setSelectPath(Landroid/view/View;Ljava/lang/String;)V

    .line 530
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_55

    const-string v4, ""

    .line 531
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_55
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I

    move-result v0

    .line 536
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    .line 539
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_72

    .line 542
    :cond_6e
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getElementSelectorOrigin(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_72
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->setSelectPath(Landroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getElementSelectorOrigin(Landroid/view/View;)Ljava/lang/String;
    .registers 6

    .line 582
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 584
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 585
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I

    move-result v2

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_38

    .line 588
    check-cast v1, Landroid/view/ViewGroup;

    move-object p0, v1

    :cond_38
    if-nez v2, :cond_5

    .line 592
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 594
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 595
    :goto_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_62

    .line 596
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v2, v3, :cond_5f

    const-string v3, "/"

    .line 598
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 601
    :cond_62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMenuItemData(Landroid/view/View;)Ljava/lang/Object;
    .registers 5

    .line 476
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getItemData"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 477
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScreenNameAndTitle(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 744
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_16

    .line 746
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    :cond_16
    if-eqz v1, :cond_3e

    .line 748
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 749
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 751
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getFragmentPageInfo(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_3e

    .line 753
    :cond_33
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getActivityPageInfo(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 754
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getRNPageInfo()Lorg/json/JSONObject;

    move-result-object p0

    .line 755
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeDuplicateProperty(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method private static getTabLayoutContent(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const-string v0, "com.google.android.material.tabs.TabLayout$Tab"

    const/4 v1, 0x0

    .line 678
    :try_start_3
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_50

    const-string v2, "getText"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 681
    invoke-static {p0, v2, v4}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 683
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1c
    const-string v2, "mCustomView"

    const-string v4, "customView"

    .line 685
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_50

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4c

    .line 689
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_50

    .line 691
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_50

    .line 694
    :cond_4c
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_50} :catch_50

    :catch_50
    :cond_50
    :goto_50
    return-object v1
.end method

.method public static getViewContent(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 250
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getViewContent(Landroid/view/View;Z)Ljava/lang/String;
    .registers 7

    const-string v0, "androidx.appcompat.widget.SwitchCompat"

    const-string v1, ""

    if-nez p0, :cond_e

    :try_start_6
    const-string p0, "SA.SAViewUtils"

    const-string p1, "getViewContent view is null"

    .line 256
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 259
    :cond_e
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getViewType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_22

    if-nez v3, :cond_1fc

    .line 264
    :cond_22
    instance-of v2, p0, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    .line 265
    move-object v0, p0

    check-cast v0, Landroid/widget/CheckBox;

    .line 266
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1c7

    .line 267
    :cond_30
    instance-of v2, p0, Landroid/widget/RadioButton;

    if-eqz v2, :cond_3d

    .line 268
    move-object v0, p0

    check-cast v0, Landroid/widget/RadioButton;

    .line 269
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1c7

    .line 270
    :cond_3d
    instance-of v2, p0, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_56

    .line 271
    move-object v0, p0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 272
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 274
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_53

    .line 276
    :cond_4f
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v0

    :catch_53
    :cond_53
    :goto_53
    move-object v3, v0

    goto/16 :goto_1c7

    .line 278
    :cond_56
    instance-of v2, p0, Landroid/widget/CompoundButton;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_58} :catch_212

    const/4 v4, 0x0

    if-eqz v2, :cond_a3

    .line 281
    :try_start_5b
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_60

    goto :goto_61

    :catch_60
    nop

    :goto_61
    if-nez v3, :cond_67

    .line 288
    :try_start_63
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_67} :catch_67

    .line 293
    :catch_67
    :cond_67
    :try_start_67
    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_72

    .line 294
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    :cond_72
    instance-of v2, p0, Landroid/widget/Switch;

    if-eqz v2, :cond_9e

    .line 296
    :cond_76
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getTextOn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_95

    .line 299
    :cond_89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getTextOff"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_95
    new-array v2, v4, [Ljava/lang/Object;

    .line 301
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_53

    .line 303
    :cond_9e
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_53

    .line 305
    :cond_a3
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_b0

    .line 306
    move-object v0, p0

    check-cast v0, Landroid/widget/Button;

    .line 307
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1c7

    .line 308
    :cond_b0
    instance-of v0, p0, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_bd

    .line 309
    move-object v0, p0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 310
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1c7

    .line 311
    :cond_bd
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_dc

    .line 312
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "androidx.appcompat.widget.AppCompatTextView"

    .line 313
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "mPrecomputedTextFuture"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c7

    .line 315
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1c7

    .line 317
    :cond_dc
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_fd

    .line 318
    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    .line 319
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c7

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isWeexView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 320
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c7

    .line 322
    :cond_fd
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_10e

    .line 323
    move-object v0, p0

    check-cast v0, Landroid/widget/RatingBar;

    .line 324
    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c7

    .line 325
    :cond_10e
    instance-of v0, p0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_11f

    .line 326
    move-object v0, p0

    check-cast v0, Landroid/widget/SeekBar;

    .line 327
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c7

    .line 328
    :cond_11f
    instance-of v0, p0, Landroid/widget/Spinner;

    if-eqz v0, :cond_145

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 332
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53

    .line 334
    :cond_145
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfTabView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_151

    .line 335
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getTabLayoutContent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c7

    .line 336
    :cond_151
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfBottomNavigationItemView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 337
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getMenuItemData(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_15b} :catch_212

    if-eqz v0, :cond_1c7

    :try_start_15d
    const-string v2, "androidx.appcompat.view.menu.MenuItemImpl"

    .line 340
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1c7

    const-string v4, "mTitle"

    .line 342
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_179} :catch_1c7

    if-nez v2, :cond_1c7

    goto/16 :goto_53

    .line 351
    :cond_17d
    :try_start_17d
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfNavigationView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    .line 352
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18d

    const-string v0, "Open"

    goto/16 :goto_53

    :cond_18d
    const-string v0, "Close"

    goto/16 :goto_53

    .line 353
    :cond_191
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c7

    .line 354
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isWeexView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_19f

    .line 355
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 357
    :cond_19f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_1a3} :catch_212

    if-eqz v0, :cond_1c7

    .line 359
    :try_start_1a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1b1} :catch_1c7

    .line 361
    :try_start_1b1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 362
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1c5} :catch_53

    goto/16 :goto_53

    .line 370
    :catch_1c7
    :cond_1c7
    :goto_1c7
    :try_start_1c7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1d8

    .line 371
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    .line 374
    :cond_1d8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 375
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isWeexView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isWeexTextView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 376
    :cond_1ea
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    :cond_1ee
    if-nez v3, :cond_1f1

    move-object v3, v1

    .line 383
    :cond_1f1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->setViewText(Landroid/view/View;Ljava/lang/String;)V

    .line 388
    :cond_1fc
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_20a

    if-eqz p1, :cond_209

    .line 391
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    goto :goto_20a

    :cond_209
    move-object v3, v1

    :cond_20a
    :goto_20a
    if-nez v3, :cond_20d

    move-object v3, v1

    .line 400
    :cond_20d
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_211} :catch_212

    return-object p0

    :catch_212
    move-exception p0

    .line 402
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static getViewGroupTypeByReflect(Landroid/view/View;)Ljava/lang/String;
    .registers 5

    .line 229
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.cardview.widget.CardView"

    .line 230
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "CardView"

    if-eqz v2, :cond_21

    .line 231
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 232
    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 234
    :cond_21
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 235
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 236
    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    const-string v1, "com.google.android.material.navigation.NavigationView"

    .line 238
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "NavigationView"

    if-eqz v2, :cond_47

    .line 239
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 240
    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 242
    :cond_47
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 243
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    .line 244
    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_58
    return-object v0
.end method

.method public static getViewId(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 607
    :try_start_1
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_3d

    .line 608
    :try_start_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 609
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 610
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_3b

    if-nez v0, :cond_47

    .line 612
    :try_start_23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->setViewId(Landroid/view/View;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3a} :catch_3d

    goto :goto_47

    :catch_3b
    move-object v0, v1

    goto :goto_3e

    :catch_3d
    nop

    .line 618
    :goto_3e
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 619
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->exceptionCollect(Landroid/view/View;)V

    :cond_47
    :goto_47
    move-object v1, v0

    :cond_48
    return-object v1
.end method

.method public static getViewType(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 408
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getViewType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_bb

    .line 411
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 412
    instance-of v1, p0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_22

    const-string v1, "CheckBox"

    .line 413
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b4

    .line 414
    :cond_22
    instance-of v1, p0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_2e

    const-string v1, "RadioButton"

    .line 415
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b4

    .line 416
    :cond_2e
    instance-of v1, p0, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_3a

    const-string v1, "ToggleButton"

    .line 417
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b4

    .line 418
    :cond_3a
    instance-of v1, p0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_44

    .line 419
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewTypeByReflect(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b4

    .line 420
    :cond_44
    instance-of v1, p0, Landroid/widget/Button;

    if-eqz v1, :cond_50

    const-string v1, "Button"

    .line 421
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b4

    .line 422
    :cond_50
    instance-of v1, p0, Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_5b

    const-string v1, "CheckedTextView"

    .line 423
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b4

    .line 424
    :cond_5b
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_66

    const-string v1, "TextView"

    .line 425
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b4

    .line 426
    :cond_66
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_71

    const-string v1, "ImageView"

    .line 427
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b4

    .line 428
    :cond_71
    instance-of v1, p0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_7c

    const-string v1, "RatingBar"

    .line 429
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b4

    .line 430
    :cond_7c
    instance-of v1, p0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_87

    const-string v1, "SeekBar"

    .line 431
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b4

    .line 432
    :cond_87
    instance-of v1, p0, Landroid/widget/Spinner;

    if-eqz v1, :cond_92

    const-string v1, "Spinner"

    .line 433
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b4

    .line 434
    :cond_92
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfTabView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9f

    const-string v1, "TabLayout"

    .line 435
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b4

    .line 436
    :cond_9f
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfNavigationView(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    const-string v1, "NavigationView"

    .line 437
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b4

    .line 438
    :cond_ac
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b4

    .line 439
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewGroupTypeByReflect(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_b4
    :goto_b4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->setViewType(Landroid/view/View;Ljava/lang/String;)V

    :cond_bb
    return-object v0
.end method

.method private static getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 727
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isOSViewByPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-object p0

    :cond_e
    :goto_e
    return-object p1
.end method

.method public static getViewTypeByReflect(Landroid/view/View;)Ljava/lang/String;
    .registers 5

    .line 175
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.widget.Switch"

    .line 176
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string p0, "Switch"

    .line 178
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-string v1, "androidx.appcompat.widget.SwitchCompat"

    .line 180
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SwitchCompat"

    if-eqz v2, :cond_36

    .line 181
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 182
    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 184
    :cond_36
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 185
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 186
    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_47
    return-object v0
.end method

.method public static instanceOfActionMenuItem(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "androidx.appcompat.view.menu.ActionMenuItem"

    .line 467
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static instanceOfAndroidXListMenuItemView(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "androidx.appcompat.view.menu.ListMenuItemView"

    .line 463
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static instanceOfBottomNavigationItemView(Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "com.google.android.material.bottomnavigation.BottomNavigationItemView"

    const-string v1, "com.google.android.material.internal.NavigationMenuItemView"

    .line 451
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static instanceOfNavigationView(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "com.google.android.material.navigation.NavigationView"

    .line 455
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static instanceOfSupportListMenuItemView(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "androidx.appcompat.view.menu.ListMenuItemView"

    .line 459
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static instanceOfTabView(Landroid/view/View;)Ljava/lang/Object;
    .registers 5

    const-string v0, "com.google.android.material.tabs.TabLayout$TabView"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 709
    :cond_6
    :try_start_6
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 710
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "mTab"

    const-string v3, "tab"

    .line 711
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 714
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2b
    return-object v1
.end method

.method public static instanceOfToolbar(Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "androidx.appcompat.widget.Toolbar"

    const-string v1, "android.widget.Toolbar"

    .line 471
    filled-new-array {v0, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isOSViewByPackage(Ljava/lang/String;)Z
    .registers 4

    .line 662
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "."

    const-string v2, "##"

    .line 665
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 666
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->sOSViewPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 667
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_2a
    return v1
.end method

.method private static isValid(I)Z
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_f

    const/high16 v0, 0xff0000

    and-int/2addr p0, v0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static isViewIgnored(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 124
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getIgnoredViewTypeList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v0

    :cond_29
    const-string v1, "1"

    .line 134
    sget v2, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_ignored:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_36

    return p0

    :catch_36
    move-exception p0

    .line 136
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v0
.end method

.method public static isViewIgnored(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 153
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getIgnoredViewTypeList()Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 156
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_2b

    if-eqz v2, :cond_16

    return v0

    :cond_29
    const/4 p0, 0x0

    return p0

    :catch_2b
    return v0
.end method

.method public static isViewSelfVisible(Landroid/view/View;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5d

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    goto :goto_5d

    .line 492
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    return v2

    .line 495
    :cond_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3f

    .line 496
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_3e

    if-nez v1, :cond_3f

    :cond_3e
    return v0

    .line 501
    :cond_3f
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_5c

    :cond_55
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_5c

    return v0

    :cond_5c
    return v2

    :cond_5d
    :goto_5d
    return v0
.end method

.method public static isWeexTextView(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 794
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.taobao.weex.ui.view.WXTextView"

    .line 795
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "org.apache.weex.ui.view.WXTextView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public static isWeexView(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 786
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.taobao.weex.ui.view"

    .line 787
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "org.apache.weex.ui.view"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public static traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_b

    .line 72
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object p0, v0

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_52

    :cond_b
    :goto_b
    if-nez p1, :cond_12

    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_4d

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_4a

    .line 85
    :cond_20
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_4a

    .line 89
    :cond_27
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_31

    .line 90
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    goto :goto_4a

    .line 92
    :cond_31
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_4a

    .line 96
    :cond_38
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 98
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 103
    :cond_4d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_51
    .catchall {:try_start_2 .. :try_end_51} :catchall_9

    return-object p0

    .line 105
    :goto_52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SA.SAViewUtils"

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_62

    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_64

    :cond_62
    const-string p0, ""

    :goto_64
    return-object p0
.end method
