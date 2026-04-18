.class public Lcom/umeng/analytics/pro/i;
.super Ljava/lang/Object;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/i$a;,
        Lcom/umeng/analytics/pro/i$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x801

.field public static final b:I = 0x802

.field private static final c:I = 0x3e8

.field private static d:Landroid/content/Context; = null

.field private static e:Ljava/lang/String; = null

.field private static final f:Ljava/lang/String; = "umeng+"

.field private static final g:Ljava/lang/String; = "ek__id"

.field private static final h:Ljava/lang/String; = "ek_key"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
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
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->k:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/i$1;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    .line 103
    :try_start_3
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 104
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1a

    :catchall_1a
    :cond_1a
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;
    .registers 3

    .line 80
    invoke-static {}, Lcom/umeng/analytics/pro/i$b;->a()Lcom/umeng/analytics/pro/i;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    if-nez v1, :cond_13

    if-eqz p0, :cond_13

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    .line 84
    invoke-direct {v0}, Lcom/umeng/analytics/pro/i;->k()V

    :cond_13
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .registers 24

    move-object/from16 v11, p0

    const/4 v0, 0x0

    .line 990
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_d} :catch_221
    .catchall {:try_start_3 .. :try_end_d} :catchall_212

    .line 991
    :try_start_d
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "__sd"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v3, v12

    .line 995
    invoke-direct/range {v1 .. v10}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d .. :try_end_20} :catch_210
    .catchall {:try_start_d .. :try_end_20} :catchall_20e

    if-eqz v1, :cond_204

    .line 1000
    :try_start_22
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1003
    :goto_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1d7

    .line 1004
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "__f"

    .line 1005
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__e"

    .line 1006
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "__g"

    .line 1007
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "__ii"

    .line 1009
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_22 .. :try_end_5a} :catch_202
    .catchall {:try_start_22 .. :try_end_5a} :catchall_200

    .line 1012
    :try_start_5a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c7

    .line 1013
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v8, v13

    const-wide/16 v13, 0x0

    cmp-long v10, v8, v13

    if-lez v10, :cond_1be

    const-string v8, "__a"

    .line 1015
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "__b"

    .line 1017
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__c"

    .line 1019
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v15, "__d"

    .line 1021
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1022
    iget-object v4, v11, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "__sp"

    .line 1023
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v13, "__pp"

    .line 1024
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "id"

    .line 1025
    invoke-virtual {v3, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "start_time"

    .line 1026
    invoke-virtual {v3, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "end_time"

    .line 1027
    invoke-virtual {v3, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "header_foreground_count"

    .line 1028
    invoke-static {v14}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v14
    :try_end_cb
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5a .. :try_end_cb} :catch_1d4
    .catchall {:try_start_5a .. :try_end_cb} :catchall_1d1

    move-object/from16 v18, v0

    const-string v0, "duration"

    if-eqz v14, :cond_10f

    .line 1029
    :try_start_d1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    const-wide/16 v16, 0x0

    cmp-long v14, v19, v16

    if-gtz v14, :cond_ec

    .line 1032
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long v5, v16, v5

    .line 1031
    invoke-virtual {v3, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_e8
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d1 .. :try_end_e8} :catch_10a
    .catchall {:try_start_d1 .. :try_end_e8} :catchall_105

    move-object v14, v1

    move-object/from16 v16, v2

    goto :goto_11e

    :cond_ec
    move-object v14, v1

    move-object/from16 v16, v2

    .line 1034
    :try_start_ef
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "duration_old"

    .line 1036
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 1035
    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_11e

    :catchall_105
    move-object v14, v1

    :catchall_106
    move-object/from16 v0, v18

    goto/16 :goto_214

    :catch_10a
    move-object v14, v1

    :catch_10b
    move-object/from16 v0, v18

    goto/16 :goto_223

    :cond_10f
    move-object v14, v1

    move-object/from16 v16, v2

    .line 1041
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 1040
    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1044
    :goto_11e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_132

    .line 1045
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v11, v8}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v1, "pages"

    .line 1046
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_132
    const/4 v0, 0x0

    .line 1049
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v2, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne v1, v2, :cond_13a

    const/4 v0, 0x1

    .line 1053
    :cond_13a
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15f

    if-eqz v0, :cond_15f

    .line 1054
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v11, v9}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1055
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1057
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_15a

    .line 1058
    invoke-direct {v11, v0}, Lcom/umeng/analytics/pro/i;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    :cond_15a
    const-string v0, "autopages"

    .line 1060
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1062
    :cond_15f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_173

    const-string v0, "traffic"

    .line 1063
    new-instance v1, Lorg/json/JSONObject;

    .line 1064
    invoke-virtual {v11, v10}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    :cond_173
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_187

    const-string v0, "locations"

    .line 1067
    new-instance v1, Lorg/json/JSONArray;

    .line 1068
    invoke-virtual {v11, v15}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    :cond_187
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19b

    const-string v0, "_$sp"

    .line 1071
    new-instance v1, Lorg/json/JSONObject;

    .line 1072
    invoke-virtual {v11, v4}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1074
    :cond_19b
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "_$pp"

    .line 1075
    new-instance v1, Lorg/json/JSONObject;

    .line 1076
    invoke-virtual {v11, v13}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1078
    :cond_1af
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1bb

    move-object/from16 v1, v16

    .line 1079
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1ba
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_ef .. :try_end_1ba} :catch_10b
    .catchall {:try_start_ef .. :try_end_1ba} :catchall_106

    goto :goto_1c2

    :cond_1bb
    move-object/from16 v1, v16

    goto :goto_1c2

    :cond_1be
    move-object/from16 v18, v0

    move-object v14, v1

    move-object v1, v2

    :goto_1c2
    if-eqz p2, :cond_1cb

    move-object/from16 v0, v18

    goto :goto_1d9

    :cond_1c7
    move-object/from16 v18, v0

    move-object v14, v1

    move-object v1, v2

    :cond_1cb
    move-object v2, v1

    move-object v1, v14

    move-object/from16 v0, v18

    goto/16 :goto_27

    :catchall_1d1
    move-object/from16 v18, v0

    goto :goto_200

    :catch_1d4
    move-object/from16 v18, v0

    goto :goto_202

    :cond_1d7
    move-object v14, v1

    move-object v1, v2

    .line 1089
    :goto_1d9
    :try_start_1d9
    iget-object v2, v11, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1df
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1d9 .. :try_end_1df} :catch_223
    .catchall {:try_start_1d9 .. :try_end_1df} :catchall_214

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1f2

    .line 1107
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1111
    :try_start_1e5
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1e8
    .catchall {:try_start_1e5 .. :try_end_1e8} :catchall_1e8

    .line 1114
    :catchall_1e8
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    return-object v0

    .line 1092
    :cond_1f2
    :try_start_1f2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_205

    const-string v2, "sessions"

    move-object/from16 v3, p1

    .line 1093
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_205

    :catchall_200
    :goto_200
    move-object v14, v1

    goto :goto_214

    :catch_202
    :goto_202
    move-object v14, v1

    goto :goto_223

    :cond_204
    move-object v14, v1

    .line 1098
    :cond_205
    :goto_205
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_208
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1f2 .. :try_end_208} :catch_223
    .catchall {:try_start_1f2 .. :try_end_208} :catchall_214

    if-eqz v14, :cond_22f

    .line 1107
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_22f

    :catchall_20e
    move-object v14, v0

    goto :goto_214

    :catch_210
    move-object v14, v0

    goto :goto_223

    :catchall_212
    move-object v12, v0

    move-object v14, v12

    .line 1104
    :catchall_214
    :goto_214
    :try_start_214
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_219
    .catchall {:try_start_214 .. :try_end_219} :catchall_23c

    if-eqz v14, :cond_21e

    .line 1107
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_21e
    if-eqz v12, :cond_232

    goto :goto_22f

    :catch_221
    move-object v12, v0

    move-object v14, v12

    .line 1102
    :catch_223
    :goto_223
    :try_start_223
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_228
    .catchall {:try_start_223 .. :try_end_228} :catchall_23c

    if-eqz v14, :cond_22d

    .line 1107
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_22d
    if-eqz v12, :cond_232

    .line 1111
    :cond_22f
    :goto_22f
    :try_start_22f
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_232
    .catchall {:try_start_22f .. :try_end_232} :catchall_232

    .line 1114
    :catchall_232
    :cond_232
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    return-object v0

    :catchall_23c
    move-exception v0

    if-eqz v14, :cond_242

    .line 1107
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_242
    if-eqz v12, :cond_247

    .line 1111
    :try_start_244
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_247
    .catchall {:try_start_244 .. :try_end_247} :catchall_247

    .line 1114
    :catchall_247
    :cond_247
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16

    const-string v0, "__pp"

    const-string v1, "__sp"

    const-string v2, "__g"

    const-string v3, "\", "

    const-string v4, "=\""

    :try_start_a
    const-string v5, "__f"

    .line 324
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 326
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_28

    .line 328
    instance-of v10, v9, Ljava/lang/Long;

    if-eqz v10, :cond_28

    .line 329
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 333
    :cond_28
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 334
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_a1

    const-string v10, ""

    if-eqz v9, :cond_43

    .line 337
    :try_start_34
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_43

    .line 338
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_44

    :cond_43
    move-object v9, v10

    :goto_44
    if-eqz p2, :cond_54

    .line 340
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_54

    .line 341
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 344
    :cond_54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update __sd set __f=\""

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" where "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__ii"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_34 .. :try_end_a1} :catchall_a1

    :catchall_a1
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    move-object/from16 v12, p4

    const-string v13, "=\""

    const-string v1, "__b"

    const-string v2, "__a"

    const/4 v14, 0x0

    .line 514
    :try_start_f
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 515
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 516
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_22

    goto :goto_24

    :cond_22
    move-object v15, v0

    goto :goto_39

    :cond_24
    :goto_24
    return-void

    .line 519
    :cond_25
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 520
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 521
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_22

    :cond_37
    return-void

    :cond_38
    move-object v15, v14

    :goto_39
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v3, v16

    const-string v1, "__sd"

    const-string v4, "__ii=? "

    new-array v5, v0, [Ljava/lang/String;

    aput-object v11, v5, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 530
    invoke-direct/range {v0 .. v9}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_f .. :try_end_54} :catchall_e2

    if-eqz v0, :cond_6c

    .line 535
    :goto_56
    :try_start_56
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 536
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {v10, v1}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_56

    :catchall_69
    move-object v14, v0

    goto/16 :goto_e3

    .line 542
    :cond_6c
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 543
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 544
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 548
    :cond_7c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_80
    .catchall {:try_start_56 .. :try_end_80} :catchall_69

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_8a

    if-eqz v0, :cond_89

    .line 579
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_89
    return-void

    :cond_8a
    const/4 v2, 0x0

    .line 553
    :goto_8b
    :try_start_8b
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_69

    if-ge v2, v3, :cond_9d

    .line 557
    :try_start_91
    invoke-virtual {v15, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_95} :catch_9a
    .catchall {:try_start_91 .. :try_end_95} :catchall_69

    if-eqz v3, :cond_9a

    .line 563
    :try_start_97
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :catch_9a
    :cond_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 568
    :cond_9d
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update __sd set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" where "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__ii"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p3

    .line 573
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_97 .. :try_end_dc} :catchall_69

    :cond_dc
    if-eqz v0, :cond_e8

    .line 579
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e8

    :catchall_e2
    nop

    :goto_e3
    if-eqz v14, :cond_e8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_e8
    :goto_e8
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 16

    const/4 v0, 0x0

    .line 701
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_183
    .catchall {:try_start_1 .. :try_end_b} :catchall_175

    .line 702
    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 711
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v12, 0x0

    if-nez v2, :cond_2a

    const-string v3, "__et"

    const/4 v5, 0x0

    const-string v6, "__i=? "

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    aput-object p2, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v4, v1

    .line 712
    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_39

    :cond_2a
    const-string v3, "__et"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v4, v1

    .line 716
    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_39
    move-object v0, p2

    if-eqz v0, :cond_16c

    .line 727
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 728
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 729
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/u;->b()Ljava/lang/String;

    move-result-object v3

    .line 731
    :cond_4e
    :goto_4e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_ea

    const-string v4, "__t"

    .line 732
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "__i"

    .line 733
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__s"

    .line 734
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 740
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_80

    const-string v7, "-1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 741
    :cond_80
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e

    move-object v5, v3

    .line 748
    :cond_87
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 750
    iget-object v8, p0, Lcom/umeng/analytics/pro/i;->j:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x801

    if-eq v4, v7, :cond_c3

    const/16 v7, 0x802

    if-eq v4, v7, :cond_9d

    goto :goto_4e

    .line 766
    :cond_9d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 767
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 769
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_bc

    .line 771
    :cond_b7
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 773
    :goto_bc
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 774
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4e

    .line 754
    :cond_c3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 755
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 757
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_e2

    .line 759
    :cond_dd
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 761
    :goto_e2
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 762
    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4e

    .line 782
    :cond_ea
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_12b

    .line 783
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 784
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 786
    :cond_f9
    :goto_f9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_120

    .line 787
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 788
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 789
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 790
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_f9

    .line 792
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f9

    .line 795
    :cond_120
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_12b

    const-string p2, "ekv"

    .line 796
    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    :cond_12b
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_16c

    .line 800
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 801
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 803
    :cond_13a
    :goto_13a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_161

    .line 804
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 805
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 806
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 807
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_13a

    .line 809
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13a

    .line 812
    :cond_161
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_16c

    const-string v2, "gkv"

    .line 813
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    :cond_16c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_16f} :catch_184
    .catchall {:try_start_b .. :try_end_16f} :catchall_176

    if-eqz v0, :cond_190

    .line 830
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_190

    :catchall_175
    move-object v1, v0

    .line 827
    :catchall_176
    :try_start_176
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_17b
    .catchall {:try_start_176 .. :try_end_17b} :catchall_19d

    if-eqz v0, :cond_180

    .line 830
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_180
    if-eqz v1, :cond_193

    goto :goto_190

    :catch_183
    move-object v1, v0

    .line 825
    :catch_184
    :try_start_184
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_189
    .catchall {:try_start_184 .. :try_end_189} :catchall_19d

    if-eqz v0, :cond_18e

    .line 830
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_18e
    if-eqz v1, :cond_193

    .line 834
    :cond_190
    :goto_190
    :try_start_190
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_193
    .catchall {:try_start_190 .. :try_end_193} :catchall_193

    .line 837
    :catchall_193
    :cond_193
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    return-void

    :catchall_19d
    move-exception p1

    if-eqz v0, :cond_1a3

    .line 830
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1a3
    if-eqz v1, :cond_1a8

    .line 834
    :try_start_1a5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1a8
    .catchall {:try_start_1a5 .. :try_end_1a8} :catchall_1a8

    .line 837
    :catchall_1a8
    :cond_1a8
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method private b(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .registers 15

    const/4 v0, 0x0

    .line 1131
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_d8
    .catchall {:try_start_1 .. :try_end_b} :catchall_c9

    .line 1132
    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "__is"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v4, v1

    .line 1136
    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_1d} :catch_c7
    .catchall {:try_start_b .. :try_end_1d} :catchall_c5

    if-eqz v2, :cond_aa

    .line 1141
    :try_start_1f
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1144
    :cond_24
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 1145
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "__e"

    .line 1147
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__ii"

    .line 1149
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1152
    iget-object v6, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "__sp"

    .line 1153
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "__pp"

    .line 1154
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1155
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_70

    const-string v8, "_$sp"

    .line 1156
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1159
    :cond_70
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_84

    const-string v6, "_$pp"

    .line 1160
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1163
    :cond_84
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    const-string v6, "id"

    .line 1165
    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "start_time"

    .line 1166
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1168
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_9d

    .line 1169
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_9d
    if-eqz p2, :cond_24

    .line 1182
    :cond_9f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_aa

    const-string p2, "sessions"

    .line 1183
    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    :cond_aa
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ad
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1f .. :try_end_ad} :catch_c2
    .catchall {:try_start_1f .. :try_end_ad} :catchall_bf

    if-eqz v2, :cond_b2

    .line 1197
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1201
    :cond_b2
    :try_start_b2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b5

    .line 1204
    :catchall_b5
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_f3

    :catchall_bf
    move-object p1, v0

    move-object v0, v2

    goto :goto_cb

    :catch_c2
    move-object p1, v0

    move-object v0, v2

    goto :goto_da

    :catchall_c5
    move-object p1, v0

    goto :goto_cb

    :catch_c7
    move-object p1, v0

    goto :goto_da

    :catchall_c9
    move-object p1, v0

    move-object v1, p1

    .line 1194
    :goto_cb
    :try_start_cb
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_f4

    if-eqz v0, :cond_d5

    .line 1197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_d5
    if-eqz v1, :cond_e9

    goto :goto_e6

    :catch_d8
    move-object p1, v0

    move-object v1, p1

    .line 1192
    :goto_da
    :try_start_da
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_df
    .catchall {:try_start_da .. :try_end_df} :catchall_f4

    if-eqz v0, :cond_e4

    .line 1197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_e4
    if-eqz v1, :cond_e9

    .line 1201
    :goto_e6
    :try_start_e6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_e9

    .line 1204
    :catchall_e9
    :cond_e9
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    move-object v0, p1

    :goto_f3
    return-object v0

    :catchall_f4
    move-exception p1

    if-eqz v0, :cond_fa

    .line 1197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_fa
    if-eqz v1, :cond_ff

    .line 1201
    :try_start_fc
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_ff

    .line 1204
    :catchall_ff
    :cond_ff
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method private b(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 11

    .line 963
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 964
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_24

    .line 968
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_21

    const-string v4, "duration"

    .line 970
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_21

    .line 972
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_24
    return-object v0
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12

    const-string v0, "__pp"

    const-string v1, "__sp"

    const-string v2, "__e"

    .line 365
    :try_start_6
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 367
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 368
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_73

    const-string v6, ""

    if-eqz v5, :cond_2b

    .line 371
    :try_start_1c
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_2b

    .line 372
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    :cond_2b
    move-object v5, v6

    :goto_2c
    if-eqz p2, :cond_3c

    .line 374
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_3c

    .line 375
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 378
    :cond_3c
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "__ii"

    .line 379
    invoke-virtual {p2, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__av"

    .line 383
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__vc"

    .line 384
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__is"

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p3, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_73
    .catchall {:try_start_1c .. :try_end_73} :catchall_73

    :catchall_73
    return-void
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 15

    const/4 v0, 0x0

    .line 852
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_86
    .catchall {:try_start_1 .. :try_end_b} :catchall_78

    .line 853
    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 863
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v3, "__er"

    const/4 v5, 0x0

    const-string v6, "__i=? "

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v4, v1

    .line 864
    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_39

    :cond_2a
    const-string v3, "__er"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v4, v1

    .line 868
    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_39
    move-object v0, p2

    if-eqz v0, :cond_6f

    .line 875
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 876
    :cond_41
    :goto_41
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v2, "__a"

    .line 877
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 879
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_41

    .line 882
    :cond_64
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6f

    const-string v2, "error"

    .line 883
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    :cond_6f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_72
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_72} :catch_87
    .catchall {:try_start_b .. :try_end_72} :catchall_79

    if-eqz v0, :cond_93

    .line 896
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_93

    :catchall_78
    move-object v1, v0

    .line 893
    :catchall_79
    :try_start_79
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_a0

    if-eqz v0, :cond_83

    .line 896
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_83
    if-eqz v1, :cond_96

    goto :goto_93

    :catch_86
    move-object v1, v0

    .line 891
    :catch_87
    :try_start_87
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_a0

    if-eqz v0, :cond_91

    .line 896
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_91
    if-eqz v1, :cond_96

    .line 900
    :cond_93
    :goto_93
    :try_start_93
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_96

    .line 903
    :catchall_96
    :cond_96
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    return-void

    :catchall_a0
    move-exception p1

    if-eqz v0, :cond_a6

    .line 896
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a6
    if-eqz v1, :cond_ab

    .line 900
    :try_start_a8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ab

    .line 903
    :catchall_ab
    :cond_ab
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 23

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "__d"

    .line 438
    :try_start_a
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_53

    .line 447
    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "__sd"

    const-string v4, "__ii=? "

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v11, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object v15, v9

    move-object/from16 v9, v16

    .line 448
    invoke-direct/range {v0 .. v9}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_114

    if-eqz v0, :cond_4f

    const/16 v17, 0x0

    .line 452
    :goto_32
    :try_start_32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 453
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-virtual {v10, v1}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_4c

    goto :goto_32

    :cond_45
    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    goto :goto_57

    :catchall_4c
    move-object v15, v0

    goto/16 :goto_115

    :cond_4f
    move-object/from16 v17, v0

    const/4 v0, 0x0

    goto :goto_57

    :cond_53
    move-object v15, v9

    const/4 v0, 0x0

    const/16 v17, 0x0

    :goto_57
    const-string v1, "\""

    const-string v2, "=\""

    const-string v3, "__ii"

    const-string v4, "\" where "

    if-eqz v15, :cond_a5

    .line 460
    :try_start_61
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 462
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 464
    :cond_71
    invoke-virtual {v5, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 466
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update  __sd set __d=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-virtual {v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a5
    const-string v0, "__c"

    .line 475
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 477
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_de

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update  __sd set __c=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_de
    const-string v0, "__f"

    .line 485
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __f=\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_61 .. :try_end_10b} :catchall_111

    if-eqz v17, :cond_11a

    .line 493
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_11a

    :catchall_111
    move-object/from16 v15, v17

    goto :goto_115

    :catchall_114
    const/4 v15, 0x0

    :goto_115
    if-eqz v15, :cond_11a

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_11a
    :goto_11a
    return-void
.end method

.method private k()V
    .registers 2

    .line 91
    monitor-enter p0

    .line 92
    :try_start_1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->l()V

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private l()V
    .registers 9

    const-string v0, "ek_key"

    const-string v1, "ek__id"

    .line 1492
    :try_start_4
    sget-object v2, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 1494
    sget-object v2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1495
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1498
    sget-object v2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    .line 1499
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1500
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1501
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genId()Ljava/lang/String;

    move-result-object v2

    .line 1503
    :cond_2d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 1505
    sget-object v3, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_84

    const/16 v1, 0x9

    .line 1509
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 1512
    :goto_4c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_7e

    .line 1513
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1514
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 1515
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6a

    .line 1516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 1518
    :cond_6a
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 1521
    :cond_78
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 1524
    :cond_7e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    .line 1526
    :cond_84
    sget-object v1, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dc

    .line 1527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    .line 1532
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1533
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_b8
    .catchall {:try_start_4 .. :try_end_b8} :catchall_dc

    const-string v5, "umeng+"

    if-eqz v2, :cond_c6

    .line 1535
    :try_start_bc
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    .line 1537
    :cond_c6
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 1538
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    .line 1539
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    .line 1540
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->h()V

    .line 1541
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->i()V
    :try_end_dc
    .catchall {:try_start_bc .. :try_end_dc} :catchall_dc

    :catchall_dc
    :cond_dc
    :goto_dc
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .registers 17

    const-string v0, "__f"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 404
    :try_start_5
    sget-object v4, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_55
    .catchall {:try_start_5 .. :try_end_f} :catchall_3f

    .line 405
    :try_start_f
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 406
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v6, "__sd"

    const-string v9, "__ii=? "

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, p0

    move-object v7, v4

    .line 407
    invoke-direct/range {v5 .. v14}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 413
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 414
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_37} :catch_56
    .catchall {:try_start_f .. :try_end_37} :catchall_3d

    :cond_37
    if-eqz v1, :cond_5d

    .line 422
    :try_start_39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_60

    goto :goto_5d

    :catchall_3d
    move-exception v0

    goto :goto_41

    :catchall_3f
    move-exception v0

    move-object v4, v1

    :goto_41
    if-eqz v1, :cond_46

    :try_start_43
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    if-eqz v4, :cond_4b

    .line 425
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4b} :catch_4b

    .line 428
    :catch_4b
    :cond_4b
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0

    :catch_55
    move-object v4, v1

    :catch_56
    if-eqz v1, :cond_5b

    .line 422
    :try_start_58
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5b
    if-eqz v4, :cond_60

    .line 425
    :cond_5d
    :goto_5d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_60

    .line 428
    :catch_60
    :cond_60
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    return-wide v2
.end method

.method public a(Z)Lorg/json/JSONObject;
    .registers 4

    .line 596
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    .line 597
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 599
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_1a

    .line 602
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    const/4 p1, 0x0

    .line 603
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/i;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 604
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2a

    .line 615
    :cond_1a
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 617
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/i;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 618
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public a()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 12

    const-string v0, "__t"

    const-string v1, "__i"

    const/4 v2, 0x0

    .line 136
    :try_start_5
    sget-object v3, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_f} :catch_a7
    .catchall {:try_start_5 .. :try_end_f} :catchall_98

    .line 137
    :try_start_f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    .line 138
    :goto_13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_f .. :try_end_17} :catch_96
    .catchall {:try_start_f .. :try_end_17} :catchall_94

    if-ge v4, v5, :cond_8d

    .line 140
    :try_start_19
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 141
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 142
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_8a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_94

    const-string v9, "-1"

    if-nez v8, :cond_34

    :try_start_2e
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 147
    :cond_34
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v7

    invoke-virtual {v7}, Lcom/umeng/analytics/pro/u;->b()Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_43

    move-object v7, v9

    .line 152
    :cond_43
    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "__e"

    const-string v8, "id"

    .line 153
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "__av"

    .line 156
    sget-object v8, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "__vc"

    .line 157
    sget-object v8, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "__s"

    .line 161
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "__et"

    .line 162
    invoke-virtual {v3, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_8a} :catch_8a
    .catchall {:try_start_2e .. :try_end_8a} :catchall_94

    :catch_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 166
    :cond_8d
    :try_start_8d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_90
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8d .. :try_end_90} :catch_96
    .catchall {:try_start_8d .. :try_end_90} :catchall_94

    .line 174
    :try_start_90
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_9d

    :catchall_94
    move-object v2, v3

    goto :goto_98

    :catch_96
    move-object v2, v3

    goto :goto_a7

    :catchall_98
    :goto_98
    if-eqz v2, :cond_9d

    :goto_9a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9d
    .catchall {:try_start_90 .. :try_end_9d} :catchall_9d

    .line 177
    :catchall_9d
    :cond_9d
    :goto_9d
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_af

    .line 169
    :catch_a7
    :goto_a7
    :try_start_a7
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_b0

    if-eqz v2, :cond_9d

    goto :goto_9a

    :goto_af
    return-void

    :catchall_b0
    move-exception p1

    if-eqz v2, :cond_b6

    .line 174
    :try_start_b3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b6

    .line 177
    :catchall_b6
    :cond_b6
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method public a(ZLjava/lang/String;)V
    .registers 6

    const-string p1, "\""

    const/4 v0, 0x0

    .line 1420
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1421
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1422
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __er where __i=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1426
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __et where __i=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1432
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __sd where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1437
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1440
    :cond_60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_63} :catch_73
    .catchall {:try_start_3 .. :try_end_63} :catchall_64

    goto :goto_66

    :catchall_64
    if-eqz v0, :cond_69

    .line 1448
    :goto_66
    :try_start_66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_69

    .line 1451
    :catchall_69
    :cond_69
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_7b

    .line 1443
    :catch_73
    :try_start_73
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_7c

    if-eqz v0, :cond_69

    goto :goto_66

    :goto_7b
    return-void

    :catchall_7c
    move-exception p1

    if-eqz v0, :cond_82

    .line 1448
    :try_start_7f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_82

    .line 1451
    :catchall_82
    :cond_82
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method public a(ZZ)V
    .registers 8

    const/4 v0, 0x0

    .line 1218
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_18

    if-eqz p1, :cond_53

    const-string p1, "delete from __is"

    .line 1225
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_53

    .line 1232
    :cond_18
    iget-object p1, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_4c

    const/4 v1, 0x0

    :goto_22
    if-ge p2, p1, :cond_4b

    .line 1235
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2f

    const/4 v1, 0x1

    .line 1239
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __is where __ii=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1242
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_22

    :cond_4b
    move p2, v1

    :cond_4c
    if-eqz p2, :cond_53

    const-string p1, "delete from __is where __ii is null"

    .line 1250
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1255
    :cond_53
    :goto_53
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_56} :catch_5f
    .catchall {:try_start_1 .. :try_end_56} :catchall_57

    goto :goto_66

    .line 1261
    :catchall_57
    :try_start_57
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_69

    goto :goto_66

    .line 1258
    :catch_5f
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_64
    .catchall {:try_start_57 .. :try_end_64} :catchall_73

    if-eqz v0, :cond_69

    .line 1266
    :goto_66
    :try_start_66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_69

    .line 1269
    :catchall_69
    :cond_69
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    return-void

    :catchall_73
    move-exception p1

    if-eqz v0, :cond_79

    .line 1266
    :try_start_76
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_79

    .line 1269
    :catchall_79
    :cond_79
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    .line 192
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_65
    .catchall {:try_start_1 .. :try_end_b} :catchall_56

    .line 193
    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 194
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "__i"

    .line 195
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4b

    const-string p2, "__a"

    .line 198
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__t"

    .line 199
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "__av"

    .line 202
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__vc"

    .line 203
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__er"

    .line 205
    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 207
    :cond_4b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_4e} :catch_54
    .catchall {:try_start_b .. :try_end_4e} :catchall_52

    .line 215
    :try_start_4e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5b

    :catchall_52
    move-object v0, v1

    goto :goto_56

    :catch_54
    move-object v0, v1

    goto :goto_65

    :catchall_56
    :goto_56
    if-eqz v0, :cond_5b

    :goto_58
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_5b

    .line 218
    :catchall_5b
    :cond_5b
    :goto_5b
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_6d

    .line 210
    :catch_65
    :goto_65
    :try_start_65
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_6f

    if-eqz v0, :cond_5b

    goto :goto_58

    :goto_6d
    const/4 p1, 0x0

    return p1

    :catchall_6f
    move-exception p1

    if-eqz v0, :cond_75

    .line 215
    :try_start_72
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_75

    .line 218
    :catchall_75
    :cond_75
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/i$a;)Z
    .registers 10

    const-string v0, "__e"

    const/4 v1, 0x0

    if-nez p2, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    .line 277
    :try_start_7
    sget-object v3, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_11} :catch_94
    .catchall {:try_start_7 .. :try_end_11} :catchall_85

    .line 278
    :try_start_11
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 279
    sget-object v4, Lcom/umeng/analytics/pro/i$a;->c:Lcom/umeng/analytics/pro/i$a;

    if-ne p3, v4, :cond_4f

    .line 281
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 282
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "__ii"

    .line 283
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__av"

    .line 286
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__vc"

    .line 287
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__sd"

    .line 289
    invoke-virtual {v3, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_7a

    .line 290
    :cond_4f
    sget-object v0, Lcom/umeng/analytics/pro/i$a;->f:Lcom/umeng/analytics/pro/i$a;

    if-ne p3, v0, :cond_57

    .line 292
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/i;->b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_7a

    .line 293
    :cond_57
    sget-object v0, Lcom/umeng/analytics/pro/i$a;->d:Lcom/umeng/analytics/pro/i$a;

    if-ne p3, v0, :cond_5f

    .line 295
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_7a

    .line 297
    :cond_5f
    sget-object v0, Lcom/umeng/analytics/pro/i$a;->b:Lcom/umeng/analytics/pro/i$a;

    if-ne p3, v0, :cond_69

    const-string p3, "__a"

    .line 298
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_7a

    .line 300
    :cond_69
    sget-object v0, Lcom/umeng/analytics/pro/i$a;->a:Lcom/umeng/analytics/pro/i$a;

    if-ne p3, v0, :cond_73

    const-string p3, "__b"

    .line 301
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_7a

    .line 303
    :cond_73
    sget-object v0, Lcom/umeng/analytics/pro/i$a;->e:Lcom/umeng/analytics/pro/i$a;

    if-ne p3, v0, :cond_7a

    .line 304
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 306
    :cond_7a
    :goto_7a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_11 .. :try_end_7d} :catch_83
    .catchall {:try_start_11 .. :try_end_7d} :catchall_81

    .line 314
    :try_start_7d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_8a

    :catchall_81
    move-object v2, v3

    goto :goto_85

    :catch_83
    move-object v2, v3

    goto :goto_94

    :catchall_85
    :goto_85
    if-eqz v2, :cond_8a

    :goto_87
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_8a

    .line 317
    :catchall_8a
    :cond_8a
    :goto_8a
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_9c

    .line 309
    :catch_94
    :goto_94
    :try_start_94
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_9d

    if-eqz v2, :cond_8a

    goto :goto_87

    :goto_9c
    return v1

    :catchall_9d
    move-exception p1

    if-eqz v2, :cond_a3

    .line 314
    :try_start_a0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a3

    .line 317
    :catchall_a3
    :cond_a3
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method public b(Z)Lorg/json/JSONObject;
    .registers 3

    .line 685
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 686
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/i;->b(Lorg/json/JSONObject;Z)Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 1463
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1464
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1465
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __is where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1468
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1470
    :cond_2d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_30} :catch_40
    .catchall {:try_start_1 .. :try_end_30} :catchall_31

    goto :goto_33

    :catchall_31
    if-eqz v0, :cond_36

    .line 1478
    :goto_33
    :try_start_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_36

    .line 1481
    :catchall_36
    :cond_36
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_48

    .line 1473
    :catch_40
    :try_start_40
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_49

    if-eqz v0, :cond_36

    goto :goto_33

    :goto_48
    return-void

    :catchall_49
    move-exception p1

    if-eqz v0, :cond_4f

    .line 1478
    :try_start_4c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4f

    .line 1481
    :catchall_4f
    :cond_4f
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method public b(ZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 1282
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1283
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_18

    if-eqz p1, :cond_4d

    const-string p1, "delete from __sd"

    .line 1289
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_4d

    .line 1294
    :cond_18
    iget-object p1, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4d

    const/4 p1, 0x0

    .line 1295
    :goto_21
    iget-object p2, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4d

    .line 1296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from __sd where __ii=\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    .line 1297
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1298
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    .line 1304
    :cond_4d
    :goto_4d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_50} :catch_60
    .catchall {:try_start_1 .. :try_end_50} :catchall_51

    goto :goto_53

    :catchall_51
    if-eqz v0, :cond_56

    .line 1312
    :goto_53
    :try_start_53
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_56

    .line 1315
    :catchall_56
    :cond_56
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_68

    .line 1307
    :catch_60
    :try_start_60
    sget-object p1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_69

    if-eqz v0, :cond_56

    goto :goto_53

    :goto_68
    return-void

    :catchall_69
    move-exception p1

    if-eqz v0, :cond_6f

    .line 1312
    :try_start_6c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_6f

    .line 1315
    :catchall_6f
    :cond_6f
    sget-object p2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1560
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    .line 1563
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 1564
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    const/4 p1, 0x0

    :goto_1e
    return-object p1
.end method

.method public c()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1580
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3e

    .line 1583
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 1584
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    move-object p1, v1

    goto :goto_3e

    :catch_23
    nop

    .line 1587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3d

    .line 1588
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1590
    :try_start_30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "MobclickRT"

    const-string v1, "--->>> UMStoreManager decrypt failed, return origin data."

    .line 1591
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3d

    goto :goto_3e

    :catchall_3d
    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    return-object p1
.end method

.method public d()V
    .registers 8

    const/4 v0, 0x0

    .line 231
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 234
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/u;->c()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1a} :catch_78
    .catchall {:try_start_1 .. :try_end_1a} :catchall_69

    if-eqz v2, :cond_29

    .line 256
    :try_start_1c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1f

    .line 259
    :catchall_1f
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    return-void

    :cond_29
    const/4 v2, 0x2

    :try_start_2a
    const-string v3, ""

    const-string v4, "-1"

    .line 240
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v2, :cond_65

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update __et set __i=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" where "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "__i"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 248
    :cond_65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2a .. :try_end_68} :catch_78
    .catchall {:try_start_2a .. :try_end_68} :catchall_69

    goto :goto_6b

    :catchall_69
    if-eqz v0, :cond_6e

    .line 256
    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6e

    .line 259
    :catchall_6e
    :cond_6e
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_80

    .line 251
    :catch_78
    :try_start_78
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_81

    if-eqz v0, :cond_6e

    goto :goto_6b

    :goto_80
    return-void

    :catchall_81
    move-exception v1

    if-eqz v0, :cond_87

    .line 256
    :try_start_84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_87

    .line 259
    :catchall_87
    :cond_87
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    throw v1
.end method

.method public e()Z
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .registers 15

    const-string v0, "__vc"

    const-string v1, "__av"

    .line 631
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    return-object v3

    .line 635
    :cond_e
    :try_start_e
    sget-object v2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_e .. :try_end_18} :catch_93
    .catchall {:try_start_e .. :try_end_18} :catchall_7c

    .line 636
    :try_start_18
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 637
    iget-object v4, p0, Lcom/umeng/analytics/pro/i;->l:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "__is"

    const/4 v7, 0x0

    const-string v8, "__ii=? "

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v4, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, p0

    move-object v5, v6

    move-object v6, v2

    .line 642
    invoke-direct/range {v4 .. v13}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_18 .. :try_end_39} :catch_7a
    .catchall {:try_start_18 .. :try_end_39} :catchall_78

    if-eqz v4, :cond_5d

    .line 646
    :try_start_3b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 647
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3b .. :try_end_46} :catch_75
    .catchall {:try_start_3b .. :try_end_46} :catchall_72

    .line 648
    :try_start_46
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 651
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_46 .. :try_end_5c} :catch_76
    .catchall {:try_start_46 .. :try_end_5c} :catchall_73

    move-object v3, v5

    .line 657
    :cond_5d
    :try_start_5d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5d .. :try_end_60} :catch_75
    .catchall {:try_start_5d .. :try_end_60} :catchall_72

    if-eqz v4, :cond_65

    .line 665
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_65
    :try_start_65
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_68

    .line 672
    :catchall_68
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_a2

    :catchall_72
    move-object v5, v3

    :catchall_73
    move-object v3, v4

    goto :goto_7e

    :catch_75
    move-object v5, v3

    :catch_76
    move-object v3, v4

    goto :goto_95

    :catchall_78
    move-object v5, v3

    goto :goto_7e

    :catch_7a
    move-object v5, v3

    goto :goto_95

    :catchall_7c
    move-object v2, v3

    move-object v5, v2

    :goto_7e
    if-eqz v3, :cond_83

    .line 665
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_83
    if-eqz v2, :cond_88

    .line 669
    :goto_85
    :try_start_85
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_88

    .line 672
    :catchall_88
    :cond_88
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    move-object v3, v5

    goto :goto_a2

    :catch_93
    move-object v2, v3

    move-object v5, v2

    .line 661
    :goto_95
    :try_start_95
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_a3

    if-eqz v3, :cond_9f

    .line 665
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9f
    if-eqz v2, :cond_88

    goto :goto_85

    :goto_a2
    return-object v3

    :catchall_a3
    move-exception v0

    if-eqz v3, :cond_a9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a9
    if-eqz v2, :cond_ae

    .line 669
    :try_start_ab
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_ae

    .line 672
    :catchall_ae
    :cond_ae
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0
.end method

.method public g()Lorg/json/JSONObject;
    .registers 15

    const-string v0, "__vc"

    const-string v1, "__av"

    .line 912
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    return-object v3

    .line 916
    :cond_e
    :try_start_e
    sget-object v2, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_e .. :try_end_18} :catch_93
    .catchall {:try_start_e .. :try_end_18} :catchall_7c

    .line 917
    :try_start_18
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 918
    iget-object v4, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "__sd"

    const/4 v7, 0x0

    const-string v8, "__ii=? "

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v4, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, p0

    move-object v5, v6

    move-object v6, v2

    .line 923
    invoke-direct/range {v4 .. v13}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_18 .. :try_end_39} :catch_7a
    .catchall {:try_start_18 .. :try_end_39} :catchall_78

    if-eqz v4, :cond_5d

    .line 927
    :try_start_3b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 928
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3b .. :try_end_46} :catch_75
    .catchall {:try_start_3b .. :try_end_46} :catchall_72

    .line 929
    :try_start_46
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 930
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 931
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 932
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_46 .. :try_end_5c} :catch_76
    .catchall {:try_start_46 .. :try_end_5c} :catchall_73

    move-object v3, v5

    .line 937
    :cond_5d
    :try_start_5d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5d .. :try_end_60} :catch_75
    .catchall {:try_start_5d .. :try_end_60} :catchall_72

    if-eqz v4, :cond_65

    .line 945
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 949
    :cond_65
    :try_start_65
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_68

    .line 952
    :catchall_68
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_a2

    :catchall_72
    move-object v5, v3

    :catchall_73
    move-object v3, v4

    goto :goto_7e

    :catch_75
    move-object v5, v3

    :catch_76
    move-object v3, v4

    goto :goto_95

    :catchall_78
    move-object v5, v3

    goto :goto_7e

    :catch_7a
    move-object v5, v3

    goto :goto_95

    :catchall_7c
    move-object v2, v3

    move-object v5, v2

    :goto_7e
    if-eqz v3, :cond_83

    .line 945
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_83
    if-eqz v2, :cond_88

    .line 949
    :goto_85
    :try_start_85
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_88

    .line 952
    :catchall_88
    :cond_88
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    move-object v3, v5

    goto :goto_a2

    :catch_93
    move-object v2, v3

    move-object v5, v2

    .line 941
    :goto_95
    :try_start_95
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_a3

    if-eqz v3, :cond_9f

    .line 945
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9f
    if-eqz v2, :cond_88

    goto :goto_85

    :goto_a2
    return-object v3

    :catchall_a3
    move-exception v0

    if-eqz v3, :cond_a9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a9
    if-eqz v2, :cond_ae

    .line 949
    :try_start_ab
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_ae

    .line 952
    :catchall_ae
    :cond_ae
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0
.end method

.method public h()V
    .registers 5

    const/4 v0, 0x0

    .line 1325
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1326
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1328
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3c

    const/4 v1, 0x0

    .line 1329
    :goto_17
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 1330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from __et where rowid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/analytics/pro/i;->j:Ljava/util/List;

    .line 1331
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1332
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1335
    :cond_3c
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1336
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_44} :catch_54
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    goto :goto_47

    :catchall_45
    if-eqz v0, :cond_4a

    .line 1344
    :goto_47
    :try_start_47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4a

    .line 1347
    :catchall_4a
    :cond_4a
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_5c

    .line 1339
    :catch_54
    :try_start_54
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5d

    if-eqz v0, :cond_4a

    goto :goto_47

    :goto_5c
    return-void

    :catchall_5d
    move-exception v1

    if-eqz v0, :cond_63

    .line 1344
    :try_start_60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_63

    .line 1347
    :catchall_63
    :cond_63
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    throw v1
.end method

.method public i()V
    .registers 3

    const/4 v0, 0x0

    .line 1357
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1358
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "delete from __er"

    .line 1360
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_16} :catch_26
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_19

    :catchall_17
    if-eqz v0, :cond_1c

    .line 1369
    :goto_19
    :try_start_19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1c

    .line 1372
    :catchall_1c
    :cond_1c
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_2e

    .line 1364
    :catch_26
    :try_start_26
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2f

    if-eqz v0, :cond_1c

    goto :goto_19

    :goto_2e
    return-void

    :catchall_2f
    move-exception v1

    if-eqz v0, :cond_35

    .line 1369
    :try_start_32
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_35

    .line 1372
    :catchall_35
    :cond_35
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    throw v1
.end method

.method public j()V
    .registers 6

    const-string v0, "\""

    .line 1380
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_77

    .line 1383
    :try_start_b
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_15} :catch_5e
    .catchall {:try_start_b .. :try_end_15} :catchall_4e

    .line 1384
    :try_start_15
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __er where __i=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/analytics/pro/i;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1387
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __et where __i=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/analytics/pro/i;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1390
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_15 .. :try_end_4d} :catch_5f
    .catchall {:try_start_15 .. :try_end_4d} :catchall_4f

    goto :goto_51

    :catchall_4e
    move-object v1, v2

    :catchall_4f
    if-eqz v1, :cond_54

    .line 1400
    :goto_51
    :try_start_51
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_54

    .line 1403
    :catchall_54
    :cond_54
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->b()V

    goto :goto_77

    :catch_5e
    move-object v1, v2

    .line 1395
    :catch_5f
    :try_start_5f
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_67

    if-eqz v1, :cond_54

    goto :goto_51

    :catchall_67
    move-exception v0

    if-eqz v1, :cond_6d

    .line 1400
    :try_start_6a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6d

    .line 1403
    :catchall_6d
    :cond_6d
    sget-object v1, Lcom/umeng/analytics/pro/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->b()V

    throw v0

    .line 1406
    :cond_77
    :goto_77
    iput-object v2, p0, Lcom/umeng/analytics/pro/i;->k:Ljava/lang/String;

    return-void
.end method
