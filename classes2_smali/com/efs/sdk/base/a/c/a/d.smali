.class public final Lcom/efs/sdk/base/a/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/efs/sdk/base/a/c/a/d;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const-string v0, "0"

    if-nez p0, :cond_5

    move-object p0, v0

    :cond_5
    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    const-string v0, "\\."

    .line 349
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 351
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_3d

    .line 353
    array-length v3, p0

    if-ge v2, v3, :cond_26

    aget-object v3, p0, v2

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    .line 355
    :goto_27
    array-length v4, p1

    if-ge v2, v4, :cond_31

    aget-object v4, p1, v2

    .line 356
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    if-ge v3, v4, :cond_36

    const/4 v1, -0x1

    goto :goto_3d

    :cond_36
    if-le v3, v4, :cond_3a

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_3d
    :goto_3d
    return v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const-string v0, "ver"

    .line 306
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 307
    invoke-static {p1, p2}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const-string v0, "datetime"

    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 309
    invoke-static {p1, p2}, Lcom/efs/sdk/base/a/c/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1a
    const/16 p0, -0x64

    return p0
.end method

.method private static a(Ljava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 146
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ge v2, v4, :cond_1da

    .line 147
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_1d

    .line 148
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-ge v7, v6, :cond_1d

    :cond_1a
    :goto_1a
    const/4 v3, 0x0

    goto/16 :goto_1da

    :cond_1d
    const-string v7, "fld"

    .line 153
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "val"

    .line 154
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "opc"

    .line 155
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v7, :cond_1a

    if-eqz v8, :cond_1a

    if-nez v4, :cond_36

    goto :goto_1a

    .line 1320
    :cond_36
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v9

    .line 1321
    iget-object v10, v9, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    .line 1323
    invoke-virtual {v9}, Lcom/efs/sdk/base/a/c/a;->a()Ljava/util/Map;

    move-result-object v9

    const-string v11, "ver"

    .line 1325
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 1326
    invoke-static {v10}, Lcom/efs/sdk/base/a/h/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    goto :goto_89

    :cond_4d
    const-string v11, "datetime"

    .line 1327
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_68

    .line 1328
    sget-object v9, Lcom/efs/sdk/base/a/c/a/d;->a:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto :goto_89

    :cond_68
    const-string v11, "pkg"

    .line 1329
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_75

    .line 2026
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_89

    .line 1331
    :cond_75
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_88

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 1332
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_89

    :cond_88
    move-object v9, v5

    :goto_89
    if-nez v9, :cond_94

    const-string v7, "isNull"

    .line 164
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d6

    goto :goto_1a

    :cond_94
    const/4 v10, -0x1

    .line 173
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_24c

    goto/16 :goto_13f

    :sswitch_9e
    const-string v11, "isEmpty"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/16 v10, 0xd

    goto/16 :goto_13f

    :sswitch_aa
    const-string v11, "endsWith"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/16 v10, 0x9

    goto/16 :goto_13f

    :sswitch_b6
    const-string v11, "matches"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/16 v10, 0xe

    goto/16 :goto_13f

    :sswitch_c2
    const-string v11, "equalsIgnoreCase"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/16 v10, 0xc

    goto/16 :goto_13f

    :sswitch_ce
    const-string v11, ">="

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/4 v10, 0x3

    goto/16 :goto_13f

    :sswitch_d9
    const-string v11, "=="

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/4 v10, 0x0

    goto :goto_13f

    :sswitch_e3
    const-string v11, "<>"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/4 v10, 0x7

    goto :goto_13f

    :sswitch_ed
    const-string v11, "<="

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/4 v10, 0x4

    goto :goto_13f

    :sswitch_f7
    const-string v11, "!="

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/4 v10, 0x6

    goto :goto_13f

    :sswitch_101
    const-string v11, ">"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/4 v10, 0x1

    goto :goto_13f

    :sswitch_10b
    const-string v11, "<"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/4 v10, 0x2

    goto :goto_13f

    :sswitch_115
    const-string v11, "!"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/4 v10, 0x5

    goto :goto_13f

    :sswitch_11f
    const-string v11, "contains"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/16 v10, 0xa

    goto :goto_13f

    :sswitch_12a
    const-string v11, "equals"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/16 v10, 0xb

    goto :goto_13f

    :sswitch_135
    const-string v11, "startsWith"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/16 v10, 0x8

    :cond_13f
    :goto_13f
    const/16 v4, -0x64

    packed-switch v10, :pswitch_data_28a

    goto/16 :goto_1d4

    .line 256
    :pswitch_146  #0xe
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_1d4

    .line 252
    :pswitch_14c  #0xd
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    goto/16 :goto_1d4

    .line 248
    :pswitch_152  #0xc
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_1d4

    .line 244
    :pswitch_158  #0xb
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1d4

    .line 240
    :pswitch_15e  #0xa
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto/16 :goto_1d4

    .line 236
    :pswitch_164  #0x9
    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_1d4

    .line 232
    :pswitch_16a  #0x8
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_1d4

    .line 223
    :pswitch_170  #0x5, 0x6, 0x7
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_181

    .line 225
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_17f

    :goto_17c
    const/4 v3, 0x1

    goto/16 :goto_1d4

    :cond_17f
    const/4 v3, 0x0

    goto :goto_1d4

    :cond_181
    if-eqz v3, :cond_17f

    goto :goto_17c

    .line 212
    :pswitch_184  #0x4
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_191

    .line 214
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_17f

    goto :goto_17c

    :cond_191
    if-gtz v3, :cond_17f

    goto :goto_17c

    .line 203
    :pswitch_194  #0x3
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1a1

    .line 205
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_17f

    goto :goto_17c

    :cond_1a1
    if-ltz v3, :cond_17f

    goto :goto_17c

    .line 194
    :pswitch_1a4  #0x2
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1b1

    .line 196
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_17f

    goto :goto_17c

    :cond_1b1
    if-gez v3, :cond_17f

    goto :goto_17c

    .line 185
    :pswitch_1b4  #0x1
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1c1

    .line 187
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_17f

    goto :goto_17c

    :cond_1c1
    if-lez v3, :cond_17f

    goto :goto_17c

    .line 176
    :pswitch_1c4  #0x0
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1d1

    .line 178
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_17f

    goto :goto_17c

    :cond_1d1
    if-nez v3, :cond_17f

    goto :goto_17c

    :goto_1d4
    if-eqz v3, :cond_1da

    :cond_1d6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_1da
    :goto_1da
    if-nez v3, :cond_1dd

    return-void

    .line 270
    :cond_1dd
    :goto_1dd
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v1, p1, :cond_241

    .line 271
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_23e

    .line 272
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lt v0, v6, :cond_23e

    const-string v0, "opt"

    .line 273
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "set"

    .line 274
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_23e

    if-eqz v2, :cond_23e

    const-string v3, "lt"

    .line 280
    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "net"

    .line 281
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_20d
    .catchall {:try_start_4 .. :try_end_20d} :catchall_242

    const-string v4, "_"

    if-eqz v3, :cond_223

    .line 284
    :try_start_211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_223
    if-eqz p1, :cond_237

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_237
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23e
    .catchall {:try_start_211 .. :try_end_23e} :catchall_242

    :cond_23e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1dd

    :cond_241
    return-void

    :catchall_242
    move-exception p0

    const-string p1, "efs.config"

    const-string p2, "updateConfigCond error"

    .line 294
    invoke-static {p1, p2, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :sswitch_data_24c
    .sparse-switch
        -0x5cb7a349 -> :sswitch_135
        -0x4d378041 -> :sswitch_12a
        -0x21d289e1 -> :sswitch_11f
        0x21 -> :sswitch_115
        0x3c -> :sswitch_10b
        0x3e -> :sswitch_101
        0x43c -> :sswitch_f7
        0x781 -> :sswitch_ed
        0x782 -> :sswitch_e3
        0x7a0 -> :sswitch_d9
        0x7bf -> :sswitch_ce
        0xf5dad41 -> :sswitch_c2
        0x321e8933 -> :sswitch_b6
        0x67e67bde -> :sswitch_aa
        0x7aab3243 -> :sswitch_9e
    .end sparse-switch

    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_1c4  #00000000
        :pswitch_1b4  #00000001
        :pswitch_1a4  #00000002
        :pswitch_194  #00000003
        :pswitch_184  #00000004
        :pswitch_170  #00000005
        :pswitch_170  #00000006
        :pswitch_170  #00000007
        :pswitch_16a  #00000008
        :pswitch_164  #00000009
        :pswitch_15e  #0000000a
        :pswitch_158  #0000000b
        :pswitch_152  #0000000c
        :pswitch_14c  #0000000d
        :pswitch_146  #0000000e
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/efs/sdk/base/a/c/a/b;)Z
    .registers 10

    const/4 v0, 0x0

    .line 57
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "config"

    .line 60
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cver"

    .line 62
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v3, :cond_87

    .line 64
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_87

    const-string v4, "common"

    .line 66
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 68
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_47

    .line 69
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 70
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ""

    .line 72
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_47
    const-string v4, "app_configs"

    .line 78
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_87

    .line 80
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_87

    const/4 v4, 0x0

    .line 81
    :goto_56
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_87

    .line 82
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    if-eqz v5, :cond_84

    .line 84
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_84

    const-string v6, "conditions"

    .line 86
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "actions"

    .line 88
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v6, :cond_84

    if-eqz v5, :cond_84

    .line 90
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_84

    .line 91
    invoke-static {v1, v6, v5}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 98
    :cond_87
    invoke-virtual {p1, v1}, Lcom/efs/sdk/base/a/c/a/b;->a(Ljava/util/Map;)V

    .line 1112
    iput v2, p1, Lcom/efs/sdk/base/a/c/a/b;->a:I
    :try_end_8c
    .catchall {:try_start_1 .. :try_end_8c} :catchall_8e

    const/4 p0, 0x1

    return p0

    :catchall_8e
    move-exception p1

    .line 103
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "parseConfig error, data is "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "efs.config"

    invoke-static {v1, p0, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const-string v0, "1970/01/01 00:00:00"

    if-nez p0, :cond_5

    move-object p0, v0

    :cond_5
    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    const-string v0, "[:/\\s]"

    .line 385
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 386
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 387
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_3d

    .line 389
    array-length v3, p0

    if-ge v2, v3, :cond_26

    aget-object v3, p0, v2

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    .line 391
    :goto_27
    array-length v4, p1

    if-ge v2, v4, :cond_31

    aget-object v4, p1, v2

    .line 392
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    if-ge v3, v4, :cond_36

    const/4 v1, -0x1

    goto :goto_3d

    :cond_36
    if-le v3, v4, :cond_3a

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_3d
    :goto_3d
    return v1
.end method
