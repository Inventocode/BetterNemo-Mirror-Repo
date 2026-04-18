.class public final Lcom/blankj/utilcode/util/AdaptScreenUtils;
.super Ljava/lang/Object;
.source "AdaptScreenUtils.java"


# static fields
.field private static sMetricsFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$000()V
    .registers 0

    .line 20
    invoke-static {}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->preLoad()V

    return-void
.end method

.method private static applyDisplayMetrics(Landroid/content/res/Resources;F)V
    .registers 3

    .line 101
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 102
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 103
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->applyOtherDisplayMetrics(Landroid/content/res/Resources;F)V

    return-void
.end method

.method private static applyMetricsFields(Landroid/content/res/Resources;F)V
    .registers 4

    .line 148
    sget-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->sMetricsFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 150
    :try_start_12
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_6

    .line 151
    iput p1, v1, Landroid/util/DisplayMetrics;->xdpi:F
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_6

    :catch_1d
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_22
    return-void
.end method

.method private static applyOtherDisplayMetrics(Landroid/content/res/Resources;F)V
    .registers 9

    .line 120
    sget-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->sMetricsFields:Ljava/util/List;

    if-nez v0, :cond_49

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->sMetricsFields:Ljava/util/List;

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    :goto_13
    if-eqz v1, :cond_4c

    .line 124
    array-length v2, v1

    if-lez v2, :cond_4c

    .line 125
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_3e

    aget-object v4, v1, v3

    .line 126
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v5, 0x1

    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-static {p0, v4}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->getMetricsFromField(Landroid/content/res/Resources;Ljava/lang/reflect/Field;)Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 130
    sget-object v6, Lcom/blankj/utilcode/util/AdaptScreenUtils;->sMetricsFields:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iput p1, v5, Landroid/util/DisplayMetrics;->xdpi:F

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 135
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_13

    .line 143
    :cond_49
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->applyMetricsFields(Landroid/content/res/Resources;F)V

    :cond_4c
    return-void
.end method

.method private static getMetricsFromField(Landroid/content/res/Resources;Ljava/lang/reflect/Field;)Landroid/util/DisplayMetrics;
    .registers 2

    .line 160
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const/4 p0, 0x0

    return-object p0
.end method

.method static getPreLoadRunnable()Ljava/lang/Runnable;
    .registers 1

    .line 107
    new-instance v0, Lcom/blankj/utilcode/util/AdaptScreenUtils$1;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/AdaptScreenUtils$1;-><init>()V

    return-object v0
.end method

.method private static preLoad()V
    .registers 2

    .line 116
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->applyDisplayMetrics(Landroid/content/res/Resources;F)V

    return-void
.end method
