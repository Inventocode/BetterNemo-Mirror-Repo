.class public Lcom/umeng/analytics/b;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lcom/umeng/analytics/pro/n;
.implements Lcom/umeng/analytics/pro/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "umsp_2"

.field private static final B:Ljava/lang/String; = "umsp_3"

.field private static final C:Ljava/lang/String; = "umsp_4"

.field private static final D:Ljava/lang/String; = "umsp_5"

.field private static a:Landroid/content/Context; = null

.field private static final h:Ljava/lang/String; = "sp_uapp"

.field private static final i:Ljava/lang/String; = "prepp_uapp"

.field private static final o:I = 0x80

.field private static final p:I = 0x100

.field private static q:Ljava/lang/String; = ""

.field private static r:Ljava/lang/String; = ""

.field private static final s:Ljava/lang/String; = "ekv_bl"

.field private static final t:Ljava/lang/String; = "ekv_bl_ver"

.field private static final v:Ljava/lang/String; = "ekv_wl"

.field private static final w:Ljava/lang/String; = "ekv_wl_ver"

.field private static final z:Ljava/lang/String; = "umsp_1"


# instance fields
.field private b:Lcom/umeng/common/ISysListener;

.field private c:Lcom/umeng/analytics/pro/p;

.field private d:Lcom/umeng/analytics/pro/v;

.field private e:Lcom/umeng/analytics/pro/k;

.field private f:Lcom/umeng/analytics/pro/u;

.field private g:Lcom/umeng/analytics/pro/l;

.field private j:Z

.field private volatile k:Lorg/json/JSONObject;

.field private volatile l:Lorg/json/JSONObject;

.field private volatile m:Lorg/json/JSONObject;

.field private n:Z

.field private u:Lcom/umeng/analytics/filter/a;

.field private x:Lcom/umeng/analytics/filter/b;

.field private y:Lcom/umeng/analytics/pro/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_c
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/umeng/analytics/pro/p;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/p;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/p;

    .line 76
    new-instance v0, Lcom/umeng/analytics/pro/v;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/v;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/v;

    .line 77
    new-instance v0, Lcom/umeng/analytics/pro/k;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/k;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/k;

    .line 78
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/u;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/l;

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->j:Z

    .line 83
    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 84
    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    .line 85
    iput-object v0, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    .line 86
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    .line 97
    iput-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    .line 103
    iput-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    .line 106
    iput-object v0, p0, Lcom/umeng/analytics/b;->y:Lcom/umeng/analytics/pro/m;

    .line 117
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/p;->a(Lcom/umeng/analytics/pro/t;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/b$1;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/umeng/analytics/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/b;
    .registers 1

    .line 125
    invoke-static {}, Lcom/umeng/analytics/b$a;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JZ)V"
        }
    .end annotation

    if-nez p1, :cond_8

    :try_start_2
    const-string p1, "context is null in onEventNoCheck, please check!"

    .line 742
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 746
    :cond_8
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 747
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 750
    :cond_12
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_1f

    .line 751
    :cond_1a
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 754
    :cond_1f
    invoke-direct {p0, p2}, Lcom/umeng/analytics/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    const-string p1, "MobclickRT"

    .line 755
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--->>> filter ekv ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_41
    const-string p1, ""

    .line 760
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_4f

    .line 761
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    goto :goto_55

    .line 763
    :cond_4f
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_55
    move-object v5, p1

    .line 765
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/s;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/s;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;Z)V
    :try_end_63
    .catchall {:try_start_2 .. :try_end_63} :catchall_64

    goto :goto_6c

    :catchall_64
    move-exception p1

    .line 767
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_6c

    .line 768
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 1238
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_b

    .line 1239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 1244
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d8

    .line 1245
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 1247
    check-cast p2, [Ljava/lang/String;

    .line 1248
    array-length v0, p2

    const/16 v2, 0xa

    if-le v0, v2, :cond_22

    return-void

    .line 1251
    :cond_22
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1252
    :goto_27
    array-length v2, p2

    if-ge v1, v2, :cond_40

    .line 1253
    aget-object v2, p2, v1

    if-eqz v2, :cond_3d

    aget-object v2, p2, v1

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->checkStrLen(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1254
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1257
    :cond_40
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_132

    .line 1258
    :cond_47
    instance-of v0, p2, [J

    if-eqz v0, :cond_64

    .line 1259
    check-cast p2, [J

    .line 1260
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1261
    :goto_52
    array-length v2, p2

    if-ge v1, v2, :cond_5d

    .line 1262
    aget-wide v2, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 1264
    :cond_5d
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_132

    .line 1265
    :cond_64
    instance-of v0, p2, [I

    if-eqz v0, :cond_81

    .line 1266
    check-cast p2, [I

    .line 1267
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1268
    :goto_6f
    array-length v2, p2

    if-ge v1, v2, :cond_7a

    .line 1269
    aget v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 1271
    :cond_7a
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_132

    .line 1272
    :cond_81
    instance-of v0, p2, [F

    if-eqz v0, :cond_9f

    .line 1273
    check-cast p2, [F

    .line 1274
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1275
    :goto_8c
    array-length v2, p2

    if-ge v1, v2, :cond_98

    .line 1276
    aget v2, p2, v1

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 1278
    :cond_98
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_132

    .line 1279
    :cond_9f
    instance-of v0, p2, [D

    if-eqz v0, :cond_bc

    .line 1280
    check-cast p2, [D

    .line 1281
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1282
    :goto_aa
    array-length v2, p2

    if-ge v1, v2, :cond_b5

    .line 1283
    aget-wide v2, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    .line 1285
    :cond_b5
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_132

    .line 1286
    :cond_bc
    instance-of v0, p2, [S

    if-eqz v0, :cond_132

    .line 1287
    check-cast p2, [S

    .line 1288
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1289
    :goto_c7
    array-length v2, p2

    if-ge v1, v2, :cond_d2

    .line 1290
    aget-short v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 1292
    :cond_d2
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_132

    .line 1297
    :cond_d8
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_115

    .line 1298
    check-cast p2, Ljava/util/List;

    .line 1299
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1301
    :goto_e3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10f

    .line 1302
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1303
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_105

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_105

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_105

    instance-of v3, v2, Ljava/lang/Float;

    if-nez v3, :cond_105

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_105

    instance-of v2, v2, Ljava/lang/Short;

    if-eqz v2, :cond_10c

    .line 1310
    :cond_105
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_10c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    .line 1313
    :cond_10f
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_132

    .line 1314
    :cond_115
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_12d

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_12d

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_12d

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_12d

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_12d

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_132

    .line 1321
    :cond_12d
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_132
    .catchall {:try_start_0 .. :try_end_132} :catchall_132

    :catchall_132
    :cond_132
    :goto_132
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 1849
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_a6

    const-string v3, ", please check key, illegal"

    if-eqz v2, :cond_23

    .line 1850
    :try_start_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_a6

    return v1

    .line 1855
    :cond_23
    :try_start_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_28} :catch_29
    .catchall {:try_start_23 .. :try_end_28} :catchall_a6

    goto :goto_2a

    :catch_29
    const/4 p1, 0x0

    :goto_2a
    const/16 v2, 0x80

    if-le p1, v2, :cond_46

    .line 1859
    :try_start_2e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key length is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return v1

    .line 1867
    :cond_46
    instance-of p1, p2, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_79

    .line 1868
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    const/16 v3, 0x100

    if-le p1, v3, :cond_78

    .line 1869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value length is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", please check value, illegal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return v1

    :cond_78
    return v2

    .line 1874
    :cond_79
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_7e

    return v2

    .line 1876
    :cond_7e
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_83

    return v2

    .line 1878
    :cond_83
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_88

    return v2

    .line 1880
    :cond_88
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_8d

    return v2

    .line 1883
    :cond_8d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "value is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", please check value, type illegal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_2e .. :try_end_a6} :catchall_a6

    :catchall_a6
    return v1
.end method

.method private c(Ljava/lang/String;)Z
    .registers 5

    .line 641
    iget-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/filter/EventList;->enabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 642
    iget-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/filter/a;->matchHit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 649
    :cond_12
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    invoke-virtual {v0}, Lcom/umeng/analytics/filter/EventList;->enabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 650
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/filter/b;->matchHit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> white list match! id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3a
    return v1

    :cond_3b
    return v2
.end method

.method private i(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_8

    :try_start_2
    const-string p1, "unexpected null context in getNativeSuperProperties"

    .line 213
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 216
    :cond_8
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 219
    :cond_12
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_21

    .line 222
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 224
    :cond_21
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    if-nez v0, :cond_2c

    .line 225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    :cond_2c
    const-string v0, "prepp_uapp"

    const/4 v1, 0x0

    .line 227
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_4b

    if-nez v0, :cond_40

    .line 230
    :try_start_39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_40} :catch_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4b

    .line 233
    :catch_40
    :cond_40
    :try_start_40
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    if-nez p1, :cond_4b

    .line 234
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_4b

    :catchall_4b
    :cond_4b
    return-void
.end method


# virtual methods
.method a(DD)V
    .registers 7

    .line 975
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 978
    :cond_5
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "setLocation can not be called in child process"

    .line 979
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 982
    :cond_11
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_1a

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 983
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 986
    :cond_1a
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    .line 987
    aput-wide p3, v0, p1

    return-void
.end method

.method a(J)V
    .registers 5

    .line 1055
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 1059
    :cond_5
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "setSessionContinueMillis can not be called in child process"

    .line 1060
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 1063
    :cond_11
    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 1064
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object p1

    sget-wide v0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/y;->a(J)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 135
    :cond_3
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 140
    :cond_d
    iget-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    if-nez v0, :cond_21

    .line 141
    new-instance v0, Lcom/umeng/analytics/filter/a;

    const-string v1, "ekv_bl"

    const-string v2, "ekv_bl_ver"

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/filter/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    .line 142
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/filter/EventList;->register(Landroid/content/Context;)V

    .line 147
    :cond_21
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    if-nez v0, :cond_35

    .line 148
    new-instance v0, Lcom/umeng/analytics/filter/b;

    const-string v1, "ekv_wl"

    const-string v2, "ekv_wl_ver"

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/filter/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    .line 149
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/filter/EventList;->register(Landroid/content/Context;)V

    .line 154
    :cond_35
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3e

    return-void

    .line 159
    :cond_3e
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4a

    .line 160
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->j:Z

    .line 164
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    .line 167
    :cond_4a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v0, v2, :cond_76

    .line 168
    monitor-enter p0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_90

    .line 169
    :try_start_51
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_71

    .line 170
    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/l;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/l;

    .line 171
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/l;->a()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 172
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    .line 176
    :cond_63
    invoke-static {}, Lcom/umeng/analytics/pro/m;->a()Lcom/umeng/analytics/pro/m;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->y:Lcom/umeng/analytics/pro/m;
    :try_end_69
    .catchall {:try_start_51 .. :try_end_69} :catchall_73

    .line 178
    :try_start_69
    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)V

    .line 179
    iget-object p1, p0, Lcom/umeng/analytics/b;->y:Lcom/umeng/analytics/pro/m;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/m;->a(Lcom/umeng/analytics/pro/n;)V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_71

    .line 187
    :catchall_71
    :cond_71
    :try_start_71
    monitor-exit p0

    goto :goto_78

    :catchall_73
    move-exception p1

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_73

    :try_start_75
    throw p1

    .line 190
    :cond_76
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    .line 193
    :goto_78
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_87

    const-string p1, "统计SDK常见问题索引贴 详见链接 http://developer.umeng.com/docs/66650/cate/66650"

    const/4 v0, 0x3

    const-string v1, ""

    const/4 v2, 0x0

    .line 195
    invoke-static {p1, v0, v1, v2, v2}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 198
    :cond_87
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->registerConnStateObserver(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V
    :try_end_90
    .catchall {:try_start_75 .. :try_end_90} :catchall_90

    :catchall_90
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "unexpected null context in setVerticalType"

    .line 297
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 301
    :cond_8
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 305
    :cond_12
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_20

    const-string p1, "setVerticalType can not be called in child process"

    .line 306
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 310
    :cond_20
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_28

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_2d

    .line 311
    :cond_28
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 313
    :cond_2d
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "unexpected null context in setScenarioType"

    .line 998
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 1002
    :cond_8
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 1003
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1008
    :cond_12
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_20

    const-string p1, "setScenarioType can not be called in child process"

    .line 1009
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_20
    if-eqz p2, :cond_2b

    .line 1013
    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result p1

    .line 1014
    sget-object p2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    .line 1016
    :cond_2b
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_33

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_38

    .line 1017
    :cond_33
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    :cond_38
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "\\|"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 471
    sget-object p1, Lcom/umeng/analytics/pro/j;->w:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 474
    :cond_b
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v2, :cond_15

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 479
    :cond_15
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "reportError can not be called in child process"

    .line 480
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 484
    :cond_23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 485
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 486
    sget-object p1, Lcom/umeng/analytics/pro/j;->x:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    :cond_34
    return-void

    .line 491
    :cond_35
    :try_start_35
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3d

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_42

    .line 492
    :cond_3d
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 494
    :cond_42
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ts"

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "error_source"

    const/4 v1, 0x2

    .line 496
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "context"

    .line 497
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "__ii"

    .line 498
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/u;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/u;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    sget-object p2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x100a

    .line 501
    invoke-static {p2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    .line 499
    invoke-static {p2, v0, v1, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_35 .. :try_end_71} :catchall_72

    goto :goto_7a

    :catchall_72
    move-exception p1

    .line 503
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_7a

    .line 504
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 1088
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/j;->af:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_29e

    .line 1089
    monitor-exit p0

    return-void

    .line 1091
    :cond_d
    :try_start_d
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 1092
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1095
    :cond_17
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "registerSuperProperty can not be called in child process"

    .line 1096
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_29e

    .line 1097
    monitor-exit p0

    return-void

    .line 1099
    :cond_26
    :try_start_26
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_33

    .line 1100
    :cond_2e
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1102
    :cond_33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_295

    if-nez p3, :cond_3d

    goto/16 :goto_295

    :cond_3d
    const-string p1, "umsp_1"

    .line 1107
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    const-string p1, "umsp_2"

    .line 1108
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    const-string p1, "umsp_3"

    .line 1109
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    const-string p1, "umsp_4"

    .line 1110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    const-string p1, "umsp_5"

    .line 1111
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    .line 1112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "property name is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", please check key, must be correct!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_26 .. :try_end_7e} :catchall_29e

    .line 1113
    monitor-exit p0

    return-void

    .line 1117
    :cond_80
    :try_start_80
    instance-of p1, p3, Ljava/lang/String;

    const/16 v1, 0x100

    if-eqz p1, :cond_ab

    .line 1118
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->checkStrLen(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_ab

    .line 1119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "property value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", please check value, lawless!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_80 .. :try_end_a9} :catchall_29e

    .line 1120
    monitor-exit p0

    return-void

    .line 1125
    :cond_ab
    :try_start_ab
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez p1, :cond_b6

    .line 1126
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 1131
    :cond_b6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_25e

    .line 1132
    instance-of p1, p3, [Ljava/lang/String;

    const/16 v2, 0xa

    if-eqz p1, :cond_12c

    .line 1133
    check-cast p3, [Ljava/lang/String;

    .line 1134
    array-length p1, p3

    if-le p1, v2, :cond_e7

    .line 1135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_ab .. :try_end_e5} :catchall_283

    .line 1136
    monitor-exit p0

    return-void

    .line 1138
    :cond_e7
    :try_start_e7
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1139
    :goto_ec
    array-length v2, p3

    if-ge v0, v2, :cond_125

    .line 1140
    aget-object v2, p3, v0

    if-eqz v2, :cond_104

    aget-object v2, p3, v0

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->checkStrLen(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_fc

    goto :goto_104

    .line 1144
    :cond_fc
    aget-object v2, p3, v0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_ec

    .line 1141
    :cond_104
    :goto_104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, length is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overlength 256!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_123
    .catchall {:try_start_e7 .. :try_end_123} :catchall_283

    .line 1142
    monitor-exit p0

    return-void

    .line 1147
    :cond_125
    :try_start_125
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_283

    .line 1148
    :cond_12c
    instance-of p1, p3, [J

    if-eqz p1, :cond_168

    .line 1149
    check-cast p3, [J

    .line 1150
    array-length p1, p3

    if-le p1, v2, :cond_151

    .line 1151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_14f
    .catchall {:try_start_125 .. :try_end_14f} :catchall_283

    .line 1152
    monitor-exit p0

    return-void

    .line 1154
    :cond_151
    :try_start_151
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1155
    :goto_156
    array-length v1, p3

    if-ge v0, v1, :cond_161

    .line 1156
    aget-wide v1, p3, v0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_156

    .line 1158
    :cond_161
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_283

    .line 1159
    :cond_168
    instance-of p1, p3, [I

    if-eqz p1, :cond_1a4

    .line 1160
    check-cast p3, [I

    .line 1161
    array-length p1, p3

    if-le p1, v2, :cond_18d

    .line 1162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_18b
    .catchall {:try_start_151 .. :try_end_18b} :catchall_283

    .line 1163
    monitor-exit p0

    return-void

    .line 1165
    :cond_18d
    :try_start_18d
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1166
    :goto_192
    array-length v1, p3

    if-ge v0, v1, :cond_19d

    .line 1167
    aget v1, p3, v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_192

    .line 1169
    :cond_19d
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_283

    .line 1170
    :cond_1a4
    instance-of p1, p3, [F

    if-eqz p1, :cond_1e1

    .line 1171
    check-cast p3, [F

    .line 1172
    array-length p1, p3

    if-le p1, v2, :cond_1c9

    .line 1173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1c7
    .catchall {:try_start_18d .. :try_end_1c7} :catchall_283

    .line 1174
    monitor-exit p0

    return-void

    .line 1176
    :cond_1c9
    :try_start_1c9
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1177
    :goto_1ce
    array-length v1, p3

    if-ge v0, v1, :cond_1da

    .line 1178
    aget v1, p3, v0

    float-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ce

    .line 1180
    :cond_1da
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_283

    .line 1181
    :cond_1e1
    instance-of p1, p3, [D

    if-eqz p1, :cond_21c

    .line 1182
    check-cast p3, [D

    .line 1183
    array-length p1, p3

    if-le p1, v2, :cond_206

    .line 1184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_204
    .catchall {:try_start_1c9 .. :try_end_204} :catchall_283

    .line 1185
    monitor-exit p0

    return-void

    .line 1187
    :cond_206
    :try_start_206
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1188
    :goto_20b
    array-length v1, p3

    if-ge v0, v1, :cond_216

    .line 1189
    aget-wide v1, p3, v0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20b

    .line 1191
    :cond_216
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_283

    .line 1192
    :cond_21c
    instance-of p1, p3, [S

    if-eqz p1, :cond_257

    .line 1193
    check-cast p3, [S

    .line 1194
    array-length p1, p3

    if-le p1, v2, :cond_241

    .line 1195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_23f
    .catchall {:try_start_206 .. :try_end_23f} :catchall_283

    .line 1196
    monitor-exit p0

    return-void

    .line 1198
    :cond_241
    :try_start_241
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1199
    :goto_246
    array-length v1, p3

    if-ge v0, v1, :cond_251

    .line 1200
    aget-short v1, p3, v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_246

    .line 1202
    :cond_251
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_283

    :cond_257
    const-string p1, "please check value, illegal type!"

    .line 1204
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_25c
    .catchall {:try_start_241 .. :try_end_25c} :catchall_283

    .line 1205
    monitor-exit p0

    return-void

    .line 1207
    :cond_25e
    :try_start_25e
    instance-of p1, p3, Ljava/lang/String;

    if-nez p1, :cond_27e

    instance-of p1, p3, Ljava/lang/Long;

    if-nez p1, :cond_27e

    instance-of p1, p3, Ljava/lang/Integer;

    if-nez p1, :cond_27e

    instance-of p1, p3, Ljava/lang/Float;

    if-nez p1, :cond_27e

    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_27e

    instance-of p1, p3, Ljava/lang/Short;

    if-eqz p1, :cond_277

    goto :goto_27e

    :cond_277
    const-string p1, "please check value, illegal type!"

    .line 1216
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_27c
    .catchall {:try_start_25e .. :try_end_27c} :catchall_283

    .line 1217
    monitor-exit p0

    return-void

    .line 1214
    :cond_27e
    :goto_27e
    :try_start_27e
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_283
    .catchall {:try_start_27e .. :try_end_283} :catchall_283

    .line 1225
    :catchall_283
    :goto_283
    :try_start_283
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x2003

    .line 1227
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-static {p1, p2, p3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_29e

    .line 1103
    :cond_295
    :goto_295
    sget-object p1, Lcom/umeng/analytics/pro/j;->ag:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_29c
    .catchall {:try_start_283 .. :try_end_29c} :catchall_29e

    .line 1104
    monitor-exit p0

    return-void

    .line 1234
    :catchall_29e
    :goto_29e
    monitor-exit p0

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    .line 670
    :cond_3
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 671
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 674
    :cond_d
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_1a

    .line 675
    :cond_15
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 678
    :cond_1a
    invoke-direct {p0, p2}, Lcom/umeng/analytics/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "MobclickRT"

    .line 679
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--->>> filter ekv ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    const-string p1, ""

    .line 684
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_4a

    .line 685
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    goto :goto_50

    .line 687
    :cond_4a
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_50
    move-object v6, p1

    .line 690
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/s;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/s;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5f

    goto :goto_67

    :catchall_5f
    move-exception p1

    .line 692
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_67

    .line 693
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 439
    :cond_3
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 444
    :cond_d
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1b

    const-string p1, "onGKVEvent can not be called in child process"

    .line 445
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 448
    :cond_1b
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_28

    .line 449
    :cond_23
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    :cond_28
    const-string p1, ""

    .line 454
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_36

    .line 455
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    goto :goto_3c

    .line 457
    :cond_36
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 460
    :goto_3c
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/s;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/s;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_46

    goto :goto_4e

    :catchall_46
    move-exception p1

    .line 462
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_4e

    .line 463
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 736
    invoke-direct/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JZ)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 701
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_57

    const-string v1, "\\|"

    const/4 v2, 0x0

    if-nez v0, :cond_51

    .line 702
    :try_start_9
    sget-object v0, Lcom/umeng/analytics/pro/d;->aF:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 704
    sget-object v0, Lcom/umeng/analytics/pro/j;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 713
    :cond_1b
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 715
    sget-object v0, Lcom/umeng/analytics/pro/j;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 718
    :cond_27
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 719
    sget-object v4, Lcom/umeng/analytics/pro/d;->aF:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 721
    sget-object v0, Lcom/umeng/analytics/pro/j;->e:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 709
    :cond_51
    sget-object v0, Lcom/umeng/analytics/pro/j;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_56
    .catchall {:try_start_9 .. :try_end_56} :catchall_57

    return-void

    :catchall_57
    move-exception v0

    .line 727
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_5f

    .line 728
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_5f
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    .line 732
    invoke-direct/range {v2 .. v8}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JZ)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_3d

    if-nez p2, :cond_5

    goto :goto_3d

    .line 520
    :cond_5
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 521
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 524
    :cond_f
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1d

    const-string p1, "reportError can not be called in child process"

    .line 525
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 529
    :cond_1d
    :try_start_1d
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_2a

    .line 530
    :cond_25
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 532
    :cond_2a
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception p1

    .line 534
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_3c

    .line 535
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    return-void

    .line 517
    :cond_3d
    :goto_3d
    sget-object p1, Lcom/umeng/analytics/pro/j;->y:Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "\\|"

    invoke-static {p1, p2, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_d

    .line 1585
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/j;->aj:Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "\\|"

    invoke-static {p1, p2, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3d

    .line 1586
    monitor-exit p0

    return-void

    .line 1588
    :cond_d
    :try_start_d
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_17

    .line 1589
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1592
    :cond_17
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "setFirstLaunchEvent can not be called in child process"

    .line 1593
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_3d

    .line 1594
    monitor-exit p0

    return-void

    .line 1596
    :cond_26
    :try_start_26
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_33

    .line 1597
    :cond_2e
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1599
    :cond_33
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/s;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/s;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/s;->a(Ljava/util/List;)V
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p1

    .line 1601
    :try_start_3e
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_43

    .line 1603
    :goto_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 1615
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/j;->al:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_b5

    .line 1616
    monitor-exit p0

    return-void

    .line 1618
    :cond_d
    :try_start_d
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 1619
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1622
    :cond_17
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "registerPreProperties can not be called in child process"

    .line 1623
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_b5

    .line 1624
    monitor-exit p0

    return-void

    .line 1626
    :cond_26
    :try_start_26
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_33

    .line 1627
    :cond_2e
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1629
    :cond_33
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    if-nez p1, :cond_3e

    .line 1630
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    :cond_3e
    if-eqz p2, :cond_ac

    .line 1633
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p1
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_b5

    if-gtz p1, :cond_47

    goto :goto_ac

    :cond_47
    const/4 p1, 0x0

    .line 1641
    :try_start_48
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_53} :catch_55
    .catchall {:try_start_48 .. :try_end_53} :catchall_b5

    move-object p1, v0

    goto :goto_56

    :catch_55
    nop

    :goto_56
    if-nez p1, :cond_5d

    .line 1645
    :try_start_58
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1653
    :cond_5d
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 1655
    :catch_63
    :cond_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_b5

    if-eqz v1, :cond_8f

    .line 1657
    :try_start_69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1658
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1659
    invoke-direct {p0, v1, v2}, Lcom/umeng/analytics/b;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_79} :catch_63
    .catchall {:try_start_69 .. :try_end_79} :catchall_b5

    if-nez v3, :cond_7d

    .line 1660
    monitor-exit p0

    return-void

    .line 1662
    :cond_7d
    :try_start_7d
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1663
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_63

    const-string v1, "please check propertics, size overlength!"

    .line 1664
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8d} :catch_63
    .catchall {:try_start_7d .. :try_end_8d} :catchall_b5

    .line 1665
    monitor-exit p0

    return-void

    .line 1673
    :cond_8f
    :try_start_8f
    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    .line 1686
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_aa

    .line 1687
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x2007

    .line 1689
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1687
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_aa
    .catchall {:try_start_8f .. :try_end_aa} :catchall_b5

    .line 1692
    :cond_aa
    monitor-exit p0

    return-void

    .line 1635
    :cond_ac
    :goto_ac
    :try_start_ac
    sget-object p1, Lcom/umeng/analytics/pro/j;->am:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_b5

    .line 1636
    monitor-exit p0

    return-void

    :catchall_b5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/umeng/common/ISysListener;)V
    .registers 3

    .line 288
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string p1, "setSysListener can not be called in child process"

    .line 289
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 292
    :cond_e
    iput-object p1, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/common/ISysListener;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    .line 1339
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-nez v0, :cond_7

    .line 1340
    monitor-exit p0

    return-void

    .line 1343
    :cond_7
    :try_start_7
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string p1, "registerSuperPropertyByCoreProtocol can not be called in child process"

    .line 1344
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_39

    .line 1345
    monitor-exit p0

    return-void

    :cond_14
    if-eqz p1, :cond_39

    .line 1348
    :try_start_16
    check-cast p1, Ljava/lang/String;

    .line 1349
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "sp_uapp"

    .line 1351
    iget-object v1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_39

    .line 1357
    :catchall_39
    :cond_39
    monitor-exit p0

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .line 258
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string p1, "onPageStart can not be called in child process"

    .line 259
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 263
    :cond_e
    :try_start_e
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_19

    .line 264
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/v;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/v;->a(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_19

    :catchall_19
    :cond_19
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 867
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 870
    :cond_5
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "onProfileSignIn can not be called in child process"

    .line 871
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 874
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 875
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "provider"

    .line 876
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    .line 877
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ts"

    .line 878
    invoke-virtual {v2, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 880
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x1005

    .line 882
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 880
    invoke-static {p1, p2, v0, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 884
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x1104

    .line 886
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 884
    invoke-static {p1, p2, v0, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    goto :goto_4a

    :catchall_40
    move-exception p1

    .line 888
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_4a

    const-string p2, " Excepthon  in  onProfileSignIn"

    .line 889
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 6

    .line 817
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 821
    :cond_5
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "onAppCrash can not be called in child process"

    .line 822
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 826
    :cond_11
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->enable:Z

    if-nez v0, :cond_16

    return-void

    .line 829
    :cond_16
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/v;

    if-eqz v0, :cond_1d

    .line 830
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/v;->b()V

    .line 832
    :cond_1d
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const-string v1, "onAppCrash"

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/k;

    if-eqz v0, :cond_2b

    .line 834
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/v;->b()V

    .line 836
    :cond_2b
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/l;

    if-eqz v0, :cond_32

    .line 837
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/l;->c()V

    .line 840
    :cond_32
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/u;

    if-eqz v0, :cond_43

    .line 841
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/pro/u;->c(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_43
    if-eqz p1, :cond_75

    .line 844
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ts"

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "error_source"

    const/4 v2, 0x1

    .line 846
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "context"

    .line 847
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 848
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    iget-object v1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/u;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 850
    :cond_75
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o;->d()V

    .line 851
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/v;->a(Landroid/content/Context;)V

    .line 853
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne p1, v0, :cond_8e

    .line 854
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->c(Landroid/content/Context;)V

    .line 856
    :cond_8e
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9b} :catch_9c

    goto :goto_a6

    :catch_9c
    move-exception p1

    .line 859
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_a6

    const-string v0, "Exception in onAppCrash"

    .line 860
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a6
    :goto_a6
    return-void
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    .line 945
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getGPU(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object p1

    .line 946
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    .line 947
    aget-object v0, p1, v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    const/4 v0, 0x1

    .line 948
    aget-object p1, p1, v0

    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method a(Z)V
    .registers 3

    .line 926
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 929
    :cond_5
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "setCatchUncaughtExceptions can not be called in child process"

    .line 930
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 933
    :cond_11
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CHANGE_CATCH_EXCEPTION_NOTALLOW:Z

    if-nez v0, :cond_17

    .line 935
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    :cond_17
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "unexpected null context in onResume"

    .line 335
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 339
    :cond_8
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne v0, v1, :cond_f

    return-void

    .line 343
    :cond_f
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_19

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 348
    :cond_19
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string p1, "onResume can not be called in child process"

    .line 349
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 353
    :cond_27
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 354
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_32

    goto :goto_3a

    .line 357
    :cond_32
    sget-object v0, Lcom/umeng/analytics/pro/j;->o:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "\\|"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 362
    :cond_3a
    :goto_3a
    :try_start_3a
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_45

    .line 363
    :cond_42
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 366
    :cond_45
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_MANUAL:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_58

    .line 367
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/v;->a(Ljava/lang/String;)V

    .line 370
    :cond_58
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->h()V

    .line 373
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 374
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_76

    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->q:Ljava/lang/String;
    :try_end_6f
    .catchall {:try_start_3a .. :try_end_6f} :catchall_70

    goto :goto_76

    :catchall_70
    move-exception p1

    const-string v0, "Exception occurred in Mobclick.onResume(). "

    .line 379
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    const-string v0, "\\|"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    :try_start_5
    const-string p1, "MobclickAgent.onDeepLinkReceived方法Context参数不能为null。|参数Context需要指定ApplicationContext值。"

    .line 602
    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 606
    :cond_b
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v2, :cond_15

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 611
    :cond_15
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "onDeepLinkReceived can not be called in child process"

    .line 612
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 616
    :cond_23
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2b

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_30

    .line 617
    :cond_2b
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 619
    :cond_30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4c

    .line 620
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string p1, "_$!link"

    .line 621
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v3, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const-string v4, "_$!deep_link"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JZ)V

    goto :goto_5a

    :cond_4c
    const-string p1, "MobclickAgent.onDeepLinkReceived方法link参数不能为null，也不能为空字符串。|参数link必须为非空字符串。"

    .line 624
    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_52

    goto :goto_5a

    :catchall_52
    move-exception p1

    .line 628
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_5a

    .line 629
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    .line 1816
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3f

    if-nez v0, :cond_7

    .line 1817
    monitor-exit p0

    return-void

    .line 1820
    :cond_7
    :try_start_7
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string p1, "updateNativePrePropertiesByCoreProtocol can not be called in child process"

    .line 1821
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_3f

    .line 1822
    monitor-exit p0

    return-void

    .line 1824
    :cond_14
    :try_start_14
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_34

    .line 1826
    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 1827
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "prepp_uapp"

    .line 1828
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3f

    :cond_34
    if-eqz v0, :cond_3f

    const-string p1, "prepp_uapp"

    .line 1832
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_3f

    .line 1837
    :catchall_3f
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    .line 273
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string p1, "onPageEnd can not be called in child process"

    .line 274
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 278
    :cond_e
    :try_start_e
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_19

    .line 279
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/v;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/v;->b(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_19

    :catchall_19
    :cond_19
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    return-object v0
.end method

.method c(Landroid/content/Context;)V
    .registers 5

    const-string v0, "\\|"

    if-nez p1, :cond_b

    .line 385
    sget-object p1, Lcom/umeng/analytics/pro/j;->p:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 390
    :cond_b
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v2, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne v1, v2, :cond_12

    return-void

    .line 394
    :cond_12
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1c

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 399
    :cond_1c
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string p1, "onPause can not be called in child process"

    .line 400
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 403
    :cond_2a
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 404
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_35

    goto :goto_3b

    .line 407
    :cond_35
    sget-object v1, Lcom/umeng/analytics/pro/j;->q:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    :cond_3b
    :goto_3b
    :try_start_3b
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_46

    .line 412
    :cond_43
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 415
    :cond_46
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_MANUAL:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_59

    .line 416
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/v;->b(Ljava/lang/String;)V

    .line 419
    :cond_59
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->i()V
    :try_end_5c
    .catchall {:try_start_3b .. :try_end_5c} :catchall_5d

    goto :goto_67

    :catchall_5d
    move-exception v0

    .line 421
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_67

    const-string v1, "Exception occurred in Mobclick.onRause(). "

    .line 422
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    :cond_67
    :goto_67
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 426
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_7b

    .line 427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->r:Ljava/lang/String;

    :cond_7b
    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_b

    const/4 p1, 0x0

    const-string p2, "MobclickAgent.setSecret方法参数context不能为null|参数Context需要指定ApplicationContext值。"

    const-string v0, "\\|"

    .line 1031
    invoke-static {p2, p1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1034
    :cond_b
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 1035
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1039
    :cond_15
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "setSecret can not be called in child process"

    .line 1040
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 1043
    :cond_23
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2b

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_30

    .line 1044
    :cond_2b
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1046
    :cond_30
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 778
    :cond_3
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 779
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 782
    :cond_d
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string p1, "onKillProcess can not be called in child process"

    .line 783
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 786
    :cond_1b
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/l;

    if-eqz v0, :cond_22

    .line 787
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/l;->c()V

    :cond_22
    const-string v0, "onKillProcess"

    .line 789
    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 790
    iget-object p1, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/k;

    if-eqz p1, :cond_2e

    .line 791
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/v;->b()V

    .line 793
    :cond_2e
    iget-object p1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/v;

    if-eqz p1, :cond_35

    .line 794
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/v;->b()V

    .line 796
    :cond_35
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_6e

    .line 797
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/u;

    if-eqz v0, :cond_48

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/umeng/analytics/pro/u;->c(Landroid/content/Context;Ljava/lang/Object;)V

    .line 800
    :cond_48
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o;->d()V

    .line 801
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/v;->a(Landroid/content/Context;)V

    .line 803
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne p1, v0, :cond_61

    .line 804
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->c(Landroid/content/Context;)V

    .line 806
    :cond_61
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6e

    :catchall_6e
    :cond_6e
    return-void
.end method

.method public declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 1373
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/j;->ah:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_95

    .line 1374
    monitor-exit p0

    return-void

    .line 1376
    :cond_d
    :try_start_d
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 1377
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1380
    :cond_17
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "unregisterSuperProperty can not be called in child process"

    .line 1381
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_95

    .line 1382
    monitor-exit p0

    return-void

    .line 1384
    :cond_26
    :try_start_26
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_33

    .line 1385
    :cond_2e
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1388
    :cond_33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1390
    sget-object p1, Lcom/umeng/analytics/pro/j;->ag:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_95

    .line 1391
    monitor-exit p0

    return-void

    :cond_42
    :try_start_42
    const-string p1, "umsp_1"

    .line 1394
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "umsp_2"

    .line 1395
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "umsp_3"

    .line 1396
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "umsp_4"

    .line 1397
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "umsp_5"

    .line 1398
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "please check key or value, must be correct!"

    .line 1399
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_42 .. :try_end_6f} :catchall_95

    .line 1400
    monitor-exit p0

    return-void

    .line 1405
    :cond_71
    :try_start_71
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez p1, :cond_7c

    .line 1406
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 1408
    :cond_7c
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 1409
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1411
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2005

    .line 1413
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    .line 1411
    invoke-static {p1, v0, v1, p2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_94
    .catchall {:try_start_71 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception p1

    .line 1417
    :try_start_96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9b

    .line 1419
    :cond_99
    :goto_99
    monitor-exit p0

    return-void

    :catchall_9b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 1450
    :try_start_5
    sget-object p1, Lcom/umeng/analytics/pro/j;->ai:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_80

    .line 1451
    monitor-exit p0

    return-object v1

    .line 1453
    :cond_e
    :try_start_e
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v2, :cond_18

    .line 1454
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1457
    :cond_18
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "getSuperProperty can not be called in child process"

    .line 1458
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_80

    .line 1459
    monitor-exit p0

    return-object v1

    .line 1461
    :cond_27
    :try_start_27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1463
    sget-object p1, Lcom/umeng/analytics/pro/j;->ag:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_80

    .line 1464
    monitor-exit p0

    return-object v1

    :cond_36
    :try_start_36
    const-string p1, "umsp_1"

    .line 1467
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "umsp_2"

    .line 1468
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "umsp_3"

    .line 1469
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "umsp_4"

    .line 1470
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "umsp_5"

    .line 1471
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "please check key or value, must be correct!"

    .line 1472
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_36 .. :try_end_63} :catchall_80

    .line 1473
    monitor-exit p0

    return-object v1

    .line 1476
    :cond_65
    :try_start_65
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-eqz p1, :cond_79

    .line 1477
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 1478
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_77
    .catchall {:try_start_65 .. :try_end_77} :catchall_80

    monitor-exit p0

    return-object p1

    .line 1481
    :cond_79
    :try_start_79
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_80

    .line 1486
    :catchall_80
    :cond_80
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 1493
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/j;->ai:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\|"

    invoke-static {p1, v1, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_3a

    .line 1494
    monitor-exit p0

    return-object v0

    .line 1496
    :cond_e
    :try_start_e
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_18

    .line 1497
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1500
    :cond_18
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "getSuperProperties can not be called in child process"

    .line 1501
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_3a

    .line 1502
    monitor-exit p0

    return-object v0

    .line 1504
    :cond_27
    :try_start_27
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-eqz p1, :cond_33

    .line 1505
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3a

    monitor-exit p0

    return-object p1

    .line 1507
    :cond_33
    :try_start_33
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3a

    .line 1512
    :catchall_3a
    monitor-exit p0

    return-object v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 318
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "getOnResumedActivityName can not be called in child process"

    .line 319
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_f
    sget-object v0, Lcom/umeng/analytics/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized f(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_d

    .line 1542
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/j;->ah:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\\|"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_48

    .line 1543
    monitor-exit p0

    return-void

    .line 1545
    :cond_d
    :try_start_d
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_17

    .line 1546
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1549
    :cond_17
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "clearSuperProperties can not be called in child process"

    .line 1550
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_48

    .line 1551
    monitor-exit p0

    return-void

    .line 1553
    :cond_26
    :try_start_26
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_33

    .line 1554
    :cond_2e
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1556
    :cond_33
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 1557
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2004

    .line 1559
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 1557
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_48

    .line 1560
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 1703
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/j;->an:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_7c

    .line 1704
    monitor-exit p0

    return-void

    .line 1706
    :cond_d
    :try_start_d
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 1707
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1710
    :cond_17
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "unregisterPreProperty can not be called in child process"

    .line 1711
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_7c

    .line 1712
    monitor-exit p0

    return-void

    .line 1714
    :cond_26
    :try_start_26
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_33

    .line 1715
    :cond_2e
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1717
    :cond_33
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    if-nez p1, :cond_3e

    .line 1718
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    :cond_3e
    if-eqz p2, :cond_75

    .line 1721
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_47

    goto :goto_75

    .line 1726
    :cond_47
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 1727
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1729
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x2008

    .line 1731
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1729
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_73

    .line 1733
    :cond_66
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 1734
    sget-object p1, Lcom/umeng/analytics/pro/j;->ao:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_73
    .catchall {:try_start_26 .. :try_end_73} :catchall_7c

    .line 1738
    :cond_73
    :goto_73
    monitor-exit p0

    return-void

    :cond_75
    :goto_75
    :try_start_75
    const-string p1, "please check propertics, property is null!"

    .line 1722
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_7c

    .line 1723
    monitor-exit p0

    return-void

    :catchall_7c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 326
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "getOnPausedActivityName can not be called in child process"

    .line 327
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 330
    :cond_f
    sget-object v0, Lcom/umeng/analytics/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized g(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_d

    .line 1748
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/j;->ap:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\\|"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_50

    .line 1749
    monitor-exit p0

    return-void

    .line 1751
    :cond_d
    :try_start_d
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_17

    .line 1752
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1755
    :cond_17
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "clearPreProperties can not be called in child process"

    .line 1756
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_50

    .line 1757
    monitor-exit p0

    return-void

    .line 1759
    :cond_26
    :try_start_26
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_33

    .line 1760
    :cond_2e
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1762
    :cond_33
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_47

    .line 1763
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2009

    .line 1765
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 1763
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 1767
    :cond_47
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_50

    .line 1769
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 1781
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/j;->aq:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\|"

    invoke-static {p1, v1, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_5a

    .line 1782
    monitor-exit p0

    return-object v0

    .line 1784
    :cond_e
    :try_start_e
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_18

    .line 1785
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1788
    :cond_18
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "getPreProperties can not be called in child process"

    .line 1789
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_5a

    .line 1790
    monitor-exit p0

    return-object v0

    .line 1792
    :cond_27
    :try_start_27
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_34

    .line 1793
    :cond_2f
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1796
    :cond_34
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    if-nez p1, :cond_3f

    .line 1797
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    .line 1799
    :cond_3f
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1800
    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_5a

    if-lez v0, :cond_58

    .line 1802
    :try_start_4c
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_57} :catch_58
    .catchall {:try_start_4c .. :try_end_57} :catchall_5a

    move-object p1, v0

    .line 1806
    :catch_58
    :cond_58
    monitor-exit p0

    return-object p1

    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h()V
    .registers 7

    .line 542
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_32

    .line 544
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "onStartSessionInternal can not be called in child process"

    .line 545
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 555
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 559
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v3, 0x1100

    .line 561
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 559
    invoke-static {v2, v3, v4, v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 563
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v3, 0x1007

    .line 565
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 563
    invoke-static {v2, v3, v4, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 567
    :cond_32
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/common/ISysListener;

    if-eqz v0, :cond_39

    invoke-interface {v0}, Lcom/umeng/common/ISysListener;->onAppResume()V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_39

    :catchall_39
    :cond_39
    return-void
.end method

.method public i()V
    .registers 6

    .line 573
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_47

    .line 575
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "onEndSessionInternal can not be called in child process"

    .line 576
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 579
    :cond_10
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1008

    .line 581
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 579
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 582
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1004

    .line 584
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 582
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 585
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1003

    .line 587
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    .line 585
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 588
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1009

    .line 590
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    .line 588
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_46

    goto :goto_47

    :catchall_46
    nop

    .line 595
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/common/ISysListener;

    if-eqz v0, :cond_4e

    invoke-interface {v0}, Lcom/umeng/common/ISysListener;->onAppPause()V

    :cond_4e
    return-void
.end method

.method j()V
    .registers 5

    .line 896
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 899
    :cond_5
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "onProfileSignOff can not be called in child process"

    .line 900
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 903
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 904
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ts"

    .line 905
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 907
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1006

    .line 909
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 907
    invoke-static {v0, v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 910
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1104

    .line 912
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 910
    invoke-static {v0, v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    goto :goto_40

    :catchall_36
    move-exception v0

    .line 914
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_40

    const-string v1, " Excepthon  in  onProfileSignOff"

    .line 915
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public declared-synchronized k()V
    .registers 4

    monitor-enter p0

    .line 1426
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_38

    if-nez v0, :cond_7

    .line 1427
    monitor-exit p0

    return-void

    .line 1430
    :cond_7
    :try_start_7
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "unregisterSuperPropertyByCoreProtocol can not be called in child process"

    .line 1431
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_38

    .line 1432
    monitor-exit p0

    return-void

    .line 1434
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-eqz v0, :cond_31

    .line 1435
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1436
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_uapp"

    .line 1437
    iget-object v2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1438
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_38

    .line 1440
    :cond_31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_38

    .line 1444
    :catchall_38
    :goto_38
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized l()Lorg/json/JSONObject;
    .registers 3

    monitor-enter p0

    .line 1517
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1518
    monitor-exit p0

    return-object v1

    .line 1521
    :cond_8
    :try_start_8
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "getSuperPropertiesJSONObject can not be called in child process"

    .line 1522
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_20

    .line 1523
    monitor-exit p0

    return-object v1

    .line 1525
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_20

    .line 1526
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_20

    .line 1530
    :catchall_20
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()V
    .registers 3

    monitor-enter p0

    .line 1564
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_24

    .line 1566
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "clearSuperPropertiesByCoreProtocol can not be called in child process"

    .line 1567
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_24

    .line 1568
    monitor-exit p0

    return-void

    .line 1571
    :cond_12
    :try_start_12
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1572
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_uapp"

    .line 1573
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1574
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_24

    .line 1579
    :catchall_24
    :cond_24
    monitor-exit p0

    return-void
.end method

.method public n()V
    .registers 5

    const-string v0, "MobclickRT"

    const-string v1, "--->>> onIntoBackground triggered."

    .line 1892
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->enable:Z

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->b()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_37

    :cond_12
    const-string v1, "header_ekv_send_on_exit"

    .line 1897
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x2012

    .line 1899
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "--->>> 退出时发送策略 被触发！"

    .line 1900
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1903
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 1901
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_37

    :cond_32
    const-string v1, "--->>> 退出发送策略: 云控控制字关闭。功能不生效"

    .line 1906
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method
