.class public Lcom/umeng/analytics/pro/s;
.super Ljava/lang/Object;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/s$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "fs_lc_tl_uapp"

.field private static final f:Ljava/lang/String; = "-1"

.field private static g:Landroid/content/Context;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private h:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 45
    iput v0, p0, Lcom/umeng/analytics/pro/s;->b:I

    const/16 v0, 0x100

    .line 46
    iput v0, p0, Lcom/umeng/analytics/pro/s;->c:I

    const/16 v0, 0x400

    .line 47
    iput v0, p0, Lcom/umeng/analytics/pro/s;->d:I

    const/16 v0, 0xa

    .line 48
    iput v0, p0, Lcom/umeng/analytics/pro/s;->e:I

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    .line 57
    :try_start_16
    sget-object v0, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/s;->b(Landroid/content/Context;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1b

    :catchall_1b
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/s$1;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/umeng/analytics/pro/s;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/s;
    .registers 2

    .line 68
    sget-object v0, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    .line 74
    :cond_c
    invoke-static {}, Lcom/umeng/analytics/pro/s$a;->a()Lcom/umeng/analytics/pro/s;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 628
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 631
    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 634
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_139

    if-eqz v1, :cond_139

    .line 636
    :try_start_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 637
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_d

    const/16 v3, 0x80

    .line 640
    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 642
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 645
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_bd

    .line 646
    instance-of v3, v1, [I

    if-eqz v3, :cond_52

    .line 647
    check-cast v1, [I

    .line 648
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 649
    :goto_43
    array-length v5, v1

    if-ge v4, v5, :cond_4e

    .line 650
    aget v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 652
    :cond_4e
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 653
    :cond_52
    instance-of v3, v1, [D

    if-eqz v3, :cond_6c

    .line 654
    check-cast v1, [D

    .line 655
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 656
    :goto_5d
    array-length v5, v1

    if-ge v4, v5, :cond_68

    .line 657
    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 659
    :cond_68
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 660
    :cond_6c
    instance-of v3, v1, [J

    if-eqz v3, :cond_86

    .line 661
    check-cast v1, [J

    .line 662
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 663
    :goto_77
    array-length v5, v1

    if-ge v4, v5, :cond_82

    .line 664
    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 666
    :cond_82
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 667
    :cond_86
    instance-of v3, v1, [F

    if-eqz v3, :cond_a2

    .line 668
    check-cast v1, [F

    .line 669
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 670
    :goto_91
    array-length v5, v1

    if-ge v4, v5, :cond_9d

    .line 671
    aget v5, v1, v4

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    .line 673
    :cond_9d
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_d

    .line 674
    :cond_a2
    instance-of v3, v1, [S

    if-eqz v3, :cond_d

    .line 675
    check-cast v1, [S

    .line 676
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 677
    :goto_ad
    array-length v5, v1

    if-ge v4, v5, :cond_b8

    .line 678
    aget-short v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    .line 680
    :cond_b8
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_d

    .line 687
    :cond_bd
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_ff

    .line 688
    check-cast v1, Ljava/util/List;

    .line 689
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 691
    :goto_c8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f4

    .line 692
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 693
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_ea

    instance-of v6, v5, Ljava/lang/Long;

    if-nez v6, :cond_ea

    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_ea

    instance-of v6, v5, Ljava/lang/Float;

    if-nez v6, :cond_ea

    instance-of v6, v5, Ljava/lang/Double;

    if-nez v6, :cond_ea

    instance-of v5, v5, Ljava/lang/Short;

    if-eqz v5, :cond_f1

    .line 700
    :cond_ea
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_f1
    add-int/lit8 v4, v4, 0x1

    goto :goto_c8

    .line 703
    :cond_f4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 704
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_d

    .line 706
    :cond_ff
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_112

    .line 707
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x100

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_d

    .line 710
    :cond_112
    instance-of v3, v1, Ljava/lang/Long;

    if-nez v3, :cond_12e

    instance-of v3, v1, Ljava/lang/Integer;

    if-nez v3, :cond_12e

    instance-of v3, v1, Ljava/lang/Float;

    if-nez v3, :cond_12e

    instance-of v3, v1, Ljava/lang/Double;

    if-nez v3, :cond_12e

    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_127

    goto :goto_12e

    :cond_127
    const-string v1, "The param has not support type. please check !"

    .line 741
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 716
    :cond_12e
    :goto_12e
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_131} :catch_133

    goto/16 :goto_d

    :catch_133
    move-exception v1

    .line 751
    :try_start_134
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_137} :catch_139

    goto/16 :goto_d

    :catch_139
    :cond_139
    return-object v0
.end method

.method private a()V
    .registers 7

    .line 467
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    const-string v1, "track_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "!"

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 470
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 472
    iget-object v2, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_40

    const/4 v2, 0x0

    .line 474
    :goto_21
    array-length v4, v0

    if-ge v2, v4, :cond_40

    .line 475
    aget-object v4, v0, v2

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 476
    iget-object v5, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 477
    iget-object v5, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 483
    :cond_40
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    .line 484
    array-length v2, v0

    const/16 v4, 0xa

    if-lt v2, v4, :cond_56

    :goto_4c
    if-ge v3, v4, :cond_61

    .line 486
    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 489
    :cond_56
    :goto_56
    array-length v2, v0

    if-ge v3, v2, :cond_61

    .line 490
    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 494
    :cond_61
    sget-object v0, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/s;->c(Landroid/content/Context;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_66

    :catch_66
    :cond_66
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 508
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 509
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 510
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;Z)V

    goto :goto_1e

    :cond_1a
    const/4 p2, 0x0

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;Z)V

    :goto_1e
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4

    :try_start_0
    const-string v0, "$st_fl"

    .line 518
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "du"

    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "id"

    .line 520
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "ts"

    .line 521
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 522
    iget-object v0, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 523
    iget-object v0, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_13

    .line 765
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_13

    if-lez v0, :cond_13

    const/16 v1, 0x80

    if-gt v0, v1, :cond_13

    const/4 p1, 0x1

    return p1

    .line 779
    :catch_13
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", please check key, illegal"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    .line 449
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "fs_lc_tl_uapp"

    const/4 v1, 0x0

    .line 450
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 452
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    .line 457
    :cond_18
    invoke-direct {p0}, Lcom/umeng/analytics/pro/s;->a()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 787
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_12

    const/16 v2, 0x100

    if-gt v1, v2, :cond_12

    return v0

    .line 796
    :catch_12
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", please check value, illegal"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "\\|"

    const/4 v1, 0x0

    if-eqz p1, :cond_9b

    .line 820
    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_9b

    .line 826
    :cond_d
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 829
    sget-object p1, Lcom/umeng/analytics/pro/j;->h:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 833
    :cond_33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 835
    sget-object p1, Lcom/umeng/analytics/pro/j;->i:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 839
    :cond_3f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_15

    const-string v3, "_$!link"

    .line 841
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 842
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/s;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string p1, "MobclickAgent.onDeepLinkReceived方法link参数长度超过限制。|参数link长度不能超过1024字符。"

    .line 843
    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_67
    const-string v3, "_$!url"

    .line 847
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 848
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/s;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string p1, "url参数长度超过限制。|参数url长度不能超过1024字符。"

    .line 849
    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 854
    :cond_87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 855
    sget-object p1, Lcom/umeng/analytics/pro/j;->j:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 822
    :cond_9b
    :goto_9b
    sget-object p1, Lcom/umeng/analytics/pro/j;->g:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a0} :catch_a1

    return v1

    :catch_a1
    :cond_a1
    const/4 p1, 0x1

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .registers 4

    .line 540
    :try_start_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    if-eqz p1, :cond_1d

    .line 541
    sget-object p1, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 542
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fs_lc_tl_uapp"

    iget-object v1, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1d

    :catchall_1d
    :cond_1d
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 805
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_12

    const/16 v1, 0x400

    if-gt p1, v1, :cond_12

    return v0

    :catch_12
    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .registers 13

    .line 80
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;)Z

    move-result p5
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_104

    const-string v0, "\\|"

    const/4 v1, 0x0

    if-eqz p5, :cond_ff

    :try_start_9
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/s;->b(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_11

    goto/16 :goto_ff

    .line 84
    :cond_11
    sget-object p5, Lcom/umeng/analytics/pro/d;->aG:[Ljava/lang/String;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3c

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "key is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", please check key, illegal"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 86
    sget-object p1, Lcom/umeng/analytics/pro/j;->m:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 89
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    .line 91
    invoke-virtual {p5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    .line 92
    invoke-virtual {p5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_5a

    const-string v0, "du"

    .line 94
    invoke-virtual {p5, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_5a
    const-string p3, "__t"

    const/16 p4, 0x801

    .line 96
    invoke-virtual {p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6a

    .line 98
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_6a
    sget-object p2, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_81

    .line 105
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8f

    .line 107
    :cond_81
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, v2, v3}, Lcom/umeng/analytics/pro/y;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    :goto_8f
    const-string p3, "__i"

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_99

    const-string p2, "-1"

    :cond_99
    invoke-virtual {p5, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_a0
    .catchall {:try_start_9 .. :try_end_a0} :catchall_104

    if-nez p2, :cond_b2

    .line 115
    :try_start_a2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_b2

    const-string p3, "_$sp"

    .line 117
    invoke-virtual {p5, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b2
    .catch Lorg/json/JSONException; {:try_start_a2 .. :try_end_b2} :catch_b2
    .catchall {:try_start_a2 .. :try_end_b2} :catchall_104

    :catch_b2
    :cond_b2
    :try_start_b2
    const-string p2, "ds"

    .line 124
    invoke-virtual {p5, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "pn"

    .line 125
    sget-object p3, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p3

    sget-object p4, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-virtual {p3, p4}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-direct {p0}, Lcom/umeng/analytics/pro/s;->a()V

    .line 131
    iget-object p2, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    if-eqz p2, :cond_f3

    .line 132
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f3

    .line 133
    iget-object p2, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_f3

    const-string p2, "$st_fl"

    const/4 p3, 0x1

    .line 139
    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    iget-object p2, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    sget-object p1, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/s;->c(Landroid/content/Context;)V

    .line 146
    :cond_f3
    sget-object p1, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    const/16 p2, 0x1001

    .line 147
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 146
    invoke-static {p1, p2, p3, p5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_104

    .line 81
    :cond_ff
    :goto_ff
    sget-object p1, Lcom/umeng/analytics/pro/j;->l:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_104
    .catchall {:try_start_b2 .. :try_end_104} :catchall_104

    :catchall_104
    :goto_104
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "ts"

    .line 157
    :try_start_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_2d6

    const-string v2, "\\|"

    const/4 v3, 0x0

    if-nez v1, :cond_11

    .line 158
    :try_start_b
    sget-object p1, Lcom/umeng/analytics/pro/j;->f:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 161
    :cond_11
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/s;->b(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_18

    return-void

    .line 166
    :cond_18
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_3e

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "map size is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", please check"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 171
    :cond_3e
    sget-object v1, Lcom/umeng/analytics/pro/d;->aG:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "key is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", please check key, illegal"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 173
    sget-object p1, Lcom/umeng/analytics/pro/j;->b:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 177
    :cond_69
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 178
    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v4, 0x0

    cmp-long v6, p3, v4

    if-lez v6, :cond_85

    const-string v4, "du"

    .line 181
    invoke-virtual {v1, v4, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_85
    const-string p3, "__t"

    const/16 p4, 0x801

    .line 183
    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "befort ekv map, event is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 187
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 191
    :goto_ac
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_218

    .line 192
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 193
    sget-object p4, Lcom/umeng/analytics/pro/d;->aG:[Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_212

    .line 194
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 195
    instance-of v4, p4, Ljava/lang/String;

    if-nez v4, :cond_207

    instance-of v4, p4, Ljava/lang/Integer;

    if-nez v4, :cond_207

    instance-of v4, p4, Ljava/lang/Long;

    if-nez v4, :cond_207

    instance-of v4, p4, Ljava/lang/Short;

    if-nez v4, :cond_207

    instance-of v4, p4, Ljava/lang/Float;

    if-nez v4, :cond_207

    instance-of v4, p4, Ljava/lang/Double;

    if-eqz v4, :cond_e6

    goto/16 :goto_207

    .line 202
    :cond_e6
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4
    :try_end_ee
    .catchall {:try_start_b .. :try_end_ee} :catchall_2d6

    const-string v5, "please check key or value, illegal type!"

    if-eqz v4, :cond_203

    .line 203
    :try_start_f2
    instance-of v4, p4, [I
    :try_end_f4
    .catchall {:try_start_f2 .. :try_end_f4} :catchall_2d6

    const-string v6, "please check key or value, size overlength!"

    const/16 v7, 0xa

    if-eqz v4, :cond_11e

    .line 204
    :try_start_fa
    check-cast p4, [I

    .line 205
    array-length v4, p4

    if-le v4, v7, :cond_103

    .line 206
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 209
    :cond_103
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 210
    :goto_109
    array-length v6, p4

    if-ge v5, v6, :cond_114

    .line 211
    aget v6, p4, v5

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_109

    .line 213
    :cond_114
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ac

    .line 214
    :cond_11e
    instance-of v4, p4, [D

    if-eqz v4, :cond_147

    .line 215
    check-cast p4, [D

    .line 216
    array-length v4, p4

    if-le v4, v7, :cond_12b

    .line 217
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_12b
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 221
    :goto_131
    array-length v6, p4

    if-ge v5, v6, :cond_13c

    .line 222
    aget-wide v6, p4, v5

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_131

    .line 224
    :cond_13c
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_ac

    .line 225
    :cond_147
    instance-of v4, p4, [J

    if-eqz v4, :cond_170

    .line 226
    check-cast p4, [J

    .line 227
    array-length v4, p4

    if-le v4, v7, :cond_154

    .line 228
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 231
    :cond_154
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 232
    :goto_15a
    array-length v6, p4

    if-ge v5, v6, :cond_165

    .line 233
    aget-wide v6, p4, v5

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_15a

    .line 235
    :cond_165
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_ac

    .line 236
    :cond_170
    instance-of v4, p4, [F

    if-eqz v4, :cond_19a

    .line 237
    check-cast p4, [F

    .line 238
    array-length v4, p4

    if-le v4, v7, :cond_17d

    .line 239
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 242
    :cond_17d
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 243
    :goto_183
    array-length v6, p4

    if-ge v5, v6, :cond_18f

    .line 244
    aget v6, p4, v5

    float-to-double v6, v6

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_183

    .line 246
    :cond_18f
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_ac

    .line 247
    :cond_19a
    instance-of v4, p4, [S

    if-eqz v4, :cond_1c3

    .line 248
    check-cast p4, [S

    .line 249
    array-length v4, p4

    if-le v4, v7, :cond_1a7

    .line 250
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_1a7
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 254
    :goto_1ad
    array-length v6, p4

    if-ge v5, v6, :cond_1b8

    .line 255
    aget-short v6, p4, v5

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ad

    .line 257
    :cond_1b8
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_ac

    .line 258
    :cond_1c3
    instance-of v4, p4, [Ljava/lang/String;

    if-eqz v4, :cond_1ff

    .line 259
    check-cast p4, [Ljava/lang/String;

    .line 260
    array-length v4, p4

    if-le v4, v7, :cond_1d0

    .line 261
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 264
    :cond_1d0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 265
    :goto_1d6
    array-length v6, p4

    if-ge v5, v6, :cond_1f4

    .line 266
    aget-object v6, p4, v5

    if-nez v6, :cond_1e3

    const-string p1, "please check array, null item!"

    .line 267
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 270
    :cond_1e3
    aget-object v6, p4, v5

    invoke-direct {p0, v6}, Lcom/umeng/analytics/pro/s;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1ec

    return-void

    .line 273
    :cond_1ec
    aget-object v6, p4, v5

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d6

    .line 275
    :cond_1f4
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_ac

    .line 277
    :cond_1ff
    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 281
    :cond_203
    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_207
    :goto_207
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_ac

    .line 286
    :cond_212
    sget-object p1, Lcom/umeng/analytics/pro/j;->e:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 293
    :cond_218
    sget-object p2, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_22f

    .line 296
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_241

    .line 298
    :cond_22f
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, p3, v4, v5}, Lcom/umeng/analytics/pro/y;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    :goto_241
    const-string p3, "__i"

    .line 301
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_24b

    const-string p2, "-1"

    :cond_24b
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_252
    .catchall {:try_start_fa .. :try_end_252} :catchall_2d6

    if-nez p2, :cond_264

    .line 306
    :try_start_254
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_264

    const-string p3, "_$sp"

    .line 308
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_264
    .catch Lorg/json/JSONException; {:try_start_254 .. :try_end_264} :catch_264
    .catchall {:try_start_254 .. :try_end_264} :catchall_2d6

    :catch_264
    :cond_264
    :try_start_264
    const-string p2, "ds"

    .line 315
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "pn"

    .line 316
    sget-object p3, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p3

    sget-object p4, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-virtual {p3, p4}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    invoke-direct {p0}, Lcom/umeng/analytics/pro/s;->a()V

    .line 322
    iget-object p2, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    if-eqz p2, :cond_2a5

    .line 323
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2a5

    .line 324
    iget-object p2, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2a5

    const-string p2, "$st_fl"

    const/4 p3, 0x1

    .line 330
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    iget-object p2, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 332
    sget-object p1, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/s;->c(Landroid/content/Context;)V

    .line 337
    :cond_2a5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----->>>>>ekv event json is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    if-nez p6, :cond_2cb

    .line 340
    sget-object p1, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    const/16 p2, 0x1001

    .line 341
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 340
    invoke-static {p1, p2, p3, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_2d6

    .line 343
    :cond_2cb
    sget-object p1, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    const/16 p2, 0x1103

    .line 344
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 343
    invoke-static {p1, p2, p3, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_2d6
    .catchall {:try_start_264 .. :try_end_2d6} :catchall_2d6

    :catchall_2d6
    :goto_2d6
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "du"

    const-string v1, "ts"

    const-string v2, "id"

    .line 352
    :try_start_6
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    .line 355
    :cond_d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 356
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 358
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "__t"

    const/16 v5, 0x802

    .line 359
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "befort gkv map, event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 363
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    :goto_48
    const/16 v5, 0xa

    if-ge v4, v5, :cond_9e

    .line 367
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 368
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const-string v6, "$st_fl"

    .line 369
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 370
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 371
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 372
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 373
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 374
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_92

    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_92

    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_9b

    .line 375
    :cond_92
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 383
    :cond_9e
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "__i"

    .line 385
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string p2, "-1"

    :cond_b6
    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_bd
    .catchall {:try_start_6 .. :try_end_bd} :catchall_108

    if-nez p2, :cond_cf

    .line 390
    :try_start_bf
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_cf

    const-string p3, "_$sp"

    .line 392
    invoke-virtual {v3, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_cf
    .catch Lorg/json/JSONException; {:try_start_bf .. :try_end_cf} :catch_cf
    .catchall {:try_start_bf .. :try_end_cf} :catchall_108

    :catch_cf
    :cond_cf
    :try_start_cf
    const-string p2, "ds"

    .line 399
    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pn"

    .line 400
    sget-object p2, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----->>>>>gkv event json is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 426
    sget-object p1, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    const/16 p2, 0x1002

    .line 427
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 426
    invoke-static {p1, p2, p3, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_108
    .catchall {:try_start_cf .. :try_end_108} :catchall_108

    :catchall_108
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_89

    .line 559
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    goto/16 :goto_89

    .line 563
    :cond_b
    invoke-direct {p0}, Lcom/umeng/analytics/pro/s;->a()V

    .line 565
    iget-object v1, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    const/16 v2, 0x80

    const/4 v3, 0x5

    if-nez v1, :cond_52

    .line 566
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    .line 567
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v1, :cond_4c

    .line 570
    iget-object v5, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    if-nez v5, :cond_2f

    .line 571
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    goto :goto_36

    .line 573
    :cond_2f
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lt v5, v3, :cond_36

    goto :goto_4c

    .line 578
    :cond_36
    :goto_36
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 579
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 580
    invoke-static {v5, v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 581
    invoke-direct {p0, v5, v0}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;Z)V

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 584
    :cond_4c
    :goto_4c
    sget-object p1, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/s;->c(Landroid/content/Context;)V

    goto :goto_90

    .line 586
    :cond_52
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lt v1, v3, :cond_5e

    const-string p1, "already setFistLaunchEvent, igone."

    .line 587
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    return-void

    :cond_5e
    const/4 v1, 0x0

    .line 590
    :goto_5f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_83

    .line 591
    iget-object v4, p0, Lcom/umeng/analytics/pro/s;->h:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lt v4, v3, :cond_73

    const-string p1, " add setFistLaunchEvent over."

    .line 592
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    return-void

    .line 595
    :cond_73
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-direct {p0, v4, v0}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 599
    :cond_83
    sget-object p1, Lcom/umeng/analytics/pro/s;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/s;->c(Landroid/content/Context;)V

    goto :goto_90

    .line 560
    :cond_89
    :goto_89
    sget-object p1, Lcom/umeng/analytics/pro/j;->ak:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_90} :catch_90

    :catch_90
    :goto_90
    return-void
.end method
