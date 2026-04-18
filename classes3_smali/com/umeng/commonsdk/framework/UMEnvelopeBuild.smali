.class public Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;
.super Ljava/lang/Object;
.source "UMEnvelopeBuild.java"


# static fields
.field public static transmissionSendFlag:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add2CacheTable(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 14

    const-string v0, "share"

    const-string v1, "MobclickRT"

    if-eqz p1, :cond_de

    if-nez p2, :cond_a

    goto/16 :goto_de

    .line 165
    :cond_a
    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v2

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 168
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    .line 170
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "_tp"

    .line 171
    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "_hd"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "_bd"

    invoke-virtual {v6, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "_ts"

    invoke-virtual {v6, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "_uuid"

    invoke-virtual {v6, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_re1"

    .line 176
    invoke-virtual {v6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_re2"

    .line 177
    invoke-virtual {v6, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p0}, Lcom/umeng/analytics/pro/am;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/am;

    move-result-object p0

    const-string p1, "stf"

    invoke-virtual {p0, p1, v6}, Lcom/umeng/analytics/pro/am;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    const-string p0, "i"

    .line 180
    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6d

    const-string p0, "--->>> [有状态]inner业务，返回空 JSONObject。"

    .line 181
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    :cond_6d
    const-string p0, "s"

    .line 182
    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "header"

    if-eqz p0, :cond_91

    const-string p0, "--->>> [有状态]分享业务 返回body。"

    .line 184
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 187
    :try_start_81
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_90} :catch_99

    return-object p0

    :cond_91
    const-string p0, "p"

    .line 193
    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9f

    .line 223
    :catch_99
    :goto_99
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    :cond_9f
    const-string p0, "st"

    .line 197
    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string p3, "analytics"

    if-eqz p0, :cond_c3

    const-string p0, "--->>> [有状态]统计业务 半开报文，返回body。"

    .line 198
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 201
    :try_start_b3
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_b3 .. :try_end_c2} :catch_dd

    return-object p0

    :cond_c3
    const-string p0, "--->>> [有状态]统计业务 闭合报文，返回body。"

    .line 209
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    :try_start_cd
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_cd .. :try_end_dc} :catch_dd

    return-object p0

    :catch_dd
    return-object p2

    :cond_de
    :goto_de
    const-string p0, "--->>> [有状态]构建信封传入 header 或 body 字段为空，直接返回"

    .line 162
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 10

    const-string v0, "st"

    .line 236
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "t"

    goto :goto_18

    :cond_b
    const-string v0, "inner"

    .line 238
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "i"

    goto :goto_18

    :cond_16
    const-string v0, "a"

    :goto_18
    move-object v5, v0

    .line 241
    sget-object v4, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_ANALYTICS:Ljava/lang/String;

    const-string v6, "9.4.4"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 15

    const-string v0, "MobclickRT"

    const-string v1, "--->>> [有状态]业务发起构建普通有状态信封请求。"

    .line 245
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "exception"

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 250
    :try_start_10
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_1c

    const/16 p1, 0x79

    .line 251
    :try_start_17
    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1d

    :catch_1b
    move-object v3, p0

    :catch_1c
    move-object p0, v3

    :goto_1d
    return-object p0

    .line 258
    :cond_1e
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 261
    :try_start_24
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_29} :catch_30

    const/16 p1, 0x78

    .line 262
    :try_start_2b
    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_31

    :catch_2f
    move-object v3, p0

    :catch_30
    move-object p0, v3

    :goto_31
    return-object p0

    .line 269
    :cond_32
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "--->>> [有状态]零号报文应答数据 未获取到，写入二级缓存"

    .line 270
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static/range {p0 .. p5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->add2CacheTable(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_42
    const-string v1, "--->>> [有状态]零号报文应答数据 已获取到，判断二级缓存是否为空"

    .line 273
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p0}, Lcom/umeng/analytics/pro/am;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/am;->c()Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v1, "--->>> [有状态]二级缓存为空，直接打信封"

    .line 275
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v2, Lcom/umeng/commonsdk/statistics/b;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/b;-><init>()V

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_69
    const-string v1, "--->>> [有状态]二级缓存不为空，写入二级缓存"

    .line 281
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static/range {p0 .. p5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->add2CacheTable(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const p2, 0x8011

    .line 284
    invoke-static {p2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result p3

    if-nez p3, :cond_86

    .line 286
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object p3

    .line 285
    invoke-static {p0, p2, p3, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    :cond_86
    return-object p1
.end method

.method public static buildZeroEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .line 296
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 p0, 0x0

    .line 299
    :try_start_7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_15

    :try_start_c
    const-string p0, "exception"

    const/16 p2, 0x78

    .line 300
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_16

    :catch_14
    move-object p0, p1

    :catch_15
    move-object p1, p0

    :goto_16
    return-object p1

    .line 307
    :cond_17
    new-instance v0, Lcom/umeng/commonsdk/statistics/b;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/b;-><init>()V

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getLastInstantBuildTime(Landroid/content/Context;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 69
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getLastInstantBuildTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastSuccessfulBuildTime(Landroid/content/Context;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 57
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getTransmissionSendFlag()Z
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;

    monitor-enter v0

    .line 340
    :try_start_3
    sget-boolean v1, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->transmissionSendFlag:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_3

    return-object p2

    .line 323
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->c()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 47
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 3

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isRet(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;Z)Z

    move-result p0

    return p0
.end method

.method public static isReadyBuildNew(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 4

    .line 83
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getTransmissionSendFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 86
    :cond_8
    invoke-static {p0, p1, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isRet(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;Z)Z

    move-result p0

    return p0
.end method

.method public static isReadyBuildStateless()Z
    .registers 1

    .line 110
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getTransmissionSendFlag()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method private static isRet(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;Z)Z
    .registers 8

    if-eqz p0, :cond_43

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    .line 121
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3c

    .line 125
    sget-object p2, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, p2, :cond_1f

    .line 128
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_2d

    :cond_1d
    const/4 p2, 0x1

    goto :goto_3c

    .line 133
    :cond_1f
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->a()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 136
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->b()I

    move-result p0

    int-to-long p0, p0

    .line 137
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendDelayProcessMsg(J)V

    :cond_2d
    :goto_2d
    const/4 p2, 0x0

    goto :goto_3c

    .line 142
    :cond_2f
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_2d

    :cond_3c
    :goto_3c
    if-eqz v1, :cond_43

    if-lez v2, :cond_43

    .line 154
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->d()V

    :cond_43
    return p2
.end method

.method public static maxDataSpace(Landroid/content/Context;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 336
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized setTransmissionSendFlag(Z)V
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;

    monitor-enter v0

    .line 344
    :try_start_3
    sput-boolean p0, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->transmissionSendFlag:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 345
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method
