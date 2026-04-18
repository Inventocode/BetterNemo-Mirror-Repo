.class public Lcom/tencent/connect/auth/QQToken;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final AUTH_QQ:I = 0x2

.field public static final AUTH_QZONE:I = 0x3

.field public static final AUTH_WEB:I = 0x1

.field private static g:Landroid/content/SharedPreferences;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:Lcom/tencent/open/utils/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/tencent/connect/auth/QQToken;->d:I

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lcom/tencent/connect/auth/QQToken;->e:J

    .line 39
    iput-object p1, p0, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    return-void
.end method

.method private static declared-synchronized a()Landroid/content/SharedPreferences;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v0, Lcom/tencent/connect/auth/QQToken;

    monitor-enter v0

    .line 148
    :try_start_3
    sget-object v1, Lcom/tencent/connect/auth/QQToken;->g:Landroid/content/SharedPreferences;

    if-nez v1, :cond_14

    .line 149
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "token_info_file"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/tencent/connect/auth/QQToken;->g:Landroid/content/SharedPreferences;

    .line 151
    :cond_14
    sget-object v1, Lcom/tencent/connect/auth/QQToken;->g:Landroid/content/SharedPreferences;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_aes_google"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Lcom/tencent/open/utils/a;)Lorg/json/JSONObject;
    .registers 7

    const-class v0, Lcom/tencent/connect/auth/QQToken;

    monitor-enter v0

    .line 160
    :try_start_3
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    const-string p0, "QQToken"

    const-string p1, "loadJsonPreference context null"

    .line 161
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15a

    .line 162
    monitor-exit v0

    return-object v2

    :cond_13
    if-nez p0, :cond_1e

    :try_start_15
    const-string p0, "QQToken"

    const-string p1, "loadJsonPreference prefKey is null"

    .line 167
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_15a

    .line 168
    monitor-exit v0

    return-object v2

    .line 172
    :cond_1e
    :try_start_1e
    invoke-static {p0}, Lcom/tencent/connect/auth/QQToken;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 179
    sget-boolean v1, Lcom/tencent/open/web/security/JniInterface;->isJniOk:Z

    if-nez v1, :cond_41

    .line 181
    sget-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {v1, v3, v4}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 182
    invoke-static {}, Lcom/tencent/open/web/security/JniInterface;->loadSo()V

    .line 184
    :cond_41
    sget-boolean v1, Lcom/tencent/open/web/security/JniInterface;->isJniOk:Z

    if-nez v1, :cond_4e

    const-string p0, "QQToken"

    const-string p1, "loadJsonPreference jni load fail SECURE_LIB_VERSION=5"

    .line 185
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_1e .. :try_end_4c} :catchall_15a

    .line 186
    monitor-exit v0

    return-object v2

    .line 188
    :cond_4e
    :try_start_4e
    invoke-static {p0}, Lcom/tencent/connect/auth/QQToken;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 192
    invoke-static {p0}, Lcom/tencent/connect/auth/QQToken;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7f

    const-string p0, "QQToken"

    const-string p1, "loadJsonPreference oldDesValue null"

    .line 195
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_4e .. :try_end_7d} :catchall_15a

    .line 196
    monitor-exit v0

    return-object v2

    .line 201
    :cond_7f
    :try_start_7f
    invoke-static {v3}, Lcom/tencent/open/web/security/JniInterface;->d1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a1

    const-string p0, "QQToken"

    const-string p1, "loadJsonPreference decodeResult d1 empty"

    .line 203
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_90} :catch_bb
    .catchall {:try_start_7f .. :try_end_90} :catchall_b9

    .line 211
    :try_start_90
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_15a

    .line 204
    monitor-exit v0

    return-object v2

    .line 206
    :cond_a1
    :try_start_a1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, p1}, Lcom/tencent/connect/auth/QQToken;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/open/utils/a;)Z
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a9} :catch_bb
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_b9

    .line 211
    :try_start_a9
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b8
    .catchall {:try_start_a9 .. :try_end_b8} :catchall_15a

    goto :goto_12f

    :catchall_b9
    move-exception p0

    goto :goto_d4

    :catch_bb
    move-exception p0

    :try_start_bc
    const-string p1, "QQToken"

    const-string v3, "Catch Exception"

    .line 208
    invoke-static {p1, v3, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_b9

    .line 211
    :try_start_c3
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d2
    .catchall {:try_start_c3 .. :try_end_d2} :catchall_15a

    .line 209
    monitor-exit v0

    return-object v2

    .line 211
    :goto_d4
    :try_start_d4
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    throw p0
    :try_end_e4
    .catchall {:try_start_d4 .. :try_end_e4} :catchall_15a

    .line 215
    :cond_e4
    :try_start_e4
    invoke-static {v3}, Lcom/tencent/open/web/security/JniInterface;->d2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, p1}, Lcom/tencent/connect/auth/QQToken;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/open/utils/a;)Z
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f0} :catch_102
    .catchall {:try_start_e4 .. :try_end_f0} :catchall_100

    .line 221
    :try_start_f0
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_ff
    .catchall {:try_start_f0 .. :try_end_ff} :catchall_15a

    goto :goto_12f

    :catchall_100
    move-exception p0

    goto :goto_11b

    :catch_102
    move-exception p0

    :try_start_103
    const-string p1, "QQToken"

    const-string v3, "Catch Exception"

    .line 218
    invoke-static {p1, v3, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_100

    .line 221
    :try_start_10a
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_119
    .catchall {:try_start_10a .. :try_end_119} :catchall_15a

    .line 219
    monitor-exit v0

    return-object v2

    .line 221
    :goto_11b
    :try_start_11b
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    throw p0

    .line 226
    :cond_12b
    invoke-virtual {p1, v1}, Lcom/tencent/open/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_12f
    .catchall {:try_start_11b .. :try_end_12f} :catchall_15a

    .line 231
    :goto_12f
    :try_start_12f
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_134} :catch_13d
    .catchall {:try_start_12f .. :try_end_134} :catchall_15a

    :try_start_134
    const-string p1, "QQToken"

    const-string v1, "loadJsonPreference sucess"

    .line 237
    invoke-static {p1, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_134 .. :try_end_13b} :catchall_15a

    .line 238
    monitor-exit v0

    return-object p0

    :catch_13d
    move-exception p0

    :try_start_13e
    const-string p1, "QQToken"

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadJsonPreference decode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_158
    .catchall {:try_start_13e .. :try_end_158} :catchall_15a

    .line 234
    monitor-exit v0

    return-object v2

    :catchall_15a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/open/utils/a;)Z
    .registers 12

    const-class v0, Lcom/tencent/connect/auth/QQToken;

    monitor-enter v0

    .line 247
    :try_start_3
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    const-string p0, "QQToken"

    const-string p1, "saveJsonPreference context null"

    .line 248
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_9e

    .line 249
    monitor-exit v0

    return v2

    :cond_13
    if-eqz p0, :cond_95

    if-nez p1, :cond_19

    goto/16 :goto_95

    :cond_19
    :try_start_19
    const-string v1, "expires_in"

    .line 259
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    add-long/2addr v3, v5

    const-string v1, "expires_time"

    .line 262
    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_37} :catch_78
    .catchall {:try_start_19 .. :try_end_37} :catchall_9e

    .line 274
    :try_start_37
    invoke-static {p0}, Lcom/tencent/connect/auth/QQToken;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/open/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x6

    if-le p2, v1, :cond_66

    if-nez p1, :cond_4d

    goto :goto_66

    .line 284
    :cond_4d
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p0, "QQToken"

    const-string p1, "saveJsonPreference sucess"

    .line 285
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_37 .. :try_end_63} :catchall_9e

    const/4 p0, 0x1

    .line 286
    monitor-exit v0

    return p0

    :cond_66
    :goto_66
    :try_start_66
    const-string p0, "QQToken"

    const-string p1, "saveJsonPreference keyEncode or josnEncode null"

    .line 279
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_9e

    .line 280
    monitor-exit v0

    return v2

    :cond_6f
    :try_start_6f
    const-string p0, "QQToken"

    const-string p1, "expires is null"

    .line 264
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_78
    .catchall {:try_start_6f .. :try_end_76} :catchall_9e

    .line 265
    monitor-exit v0

    return v2

    :catch_78
    move-exception p0

    :try_start_79
    const-string p1, "QQToken"

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJsonPreference exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_79 .. :try_end_93} :catchall_9e

    .line 269
    monitor-exit v0

    return v2

    :cond_95
    :goto_95
    :try_start_95
    const-string p0, "QQToken"

    const-string p1, "saveJsonPreference prefKey or jsonObject null"

    .line 253
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_9e

    .line 254
    monitor-exit v0

    return v2

    :catchall_9e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    invoke-static {p0}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_spkey"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/tencent/connect/auth/QQToken;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthSource()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/tencent/connect/auth/QQToken;->d:I

    return v0
.end method

.method public getExpireTimeInSecond()J
    .registers 3

    .line 106
    iget-wide v0, p0, Lcom/tencent/connect/auth/QQToken;->e:J

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/tencent/connect/auth/QQToken;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenIdWithCache()Ljava/lang/String;
    .registers 6

    const-string v0, "QQToken"

    .line 77
    invoke-virtual {p0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    .line 79
    :try_start_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_5f

    const-string v3, " appId = "

    if-eqz v2, :cond_42

    .line 80
    :try_start_e
    iget-object v2, p0, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tencent/connect/auth/QQToken;->loadSession(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_25

    const-string v4, "openid"

    .line 82
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 84
    invoke-virtual {p0, v1}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 87
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpenId from Session openId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    .line 89
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpenId from field openId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5e} :catch_5f

    goto :goto_78

    :catch_5f
    move-exception v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocalOpenIdByAppId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_78
    return-object v1
.end method

.method public isSessionValid()Z
    .registers 6

    .line 43
    iget-object v0, p0, Lcom/tencent/connect/auth/QQToken;->b:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/connect/auth/QQToken;->e:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public loadSession(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/tencent/connect/auth/QQToken;->f:Lcom/tencent/open/utils/a;

    if-nez v0, :cond_f

    .line 133
    new-instance v0, Lcom/tencent/open/utils/a;

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/open/utils/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/QQToken;->f:Lcom/tencent/open/utils/a;

    .line 135
    :cond_f
    iget-object v0, p0, Lcom/tencent/connect/auth/QQToken;->f:Lcom/tencent/open/utils/a;

    invoke-static {p1, v0}, Lcom/tencent/connect/auth/QQToken;->a(Ljava/lang/String;Lcom/tencent/open/utils/a;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login loadSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQToken"

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeSession(Ljava/lang/String;)V
    .registers 4

    .line 305
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    invoke-static {p1}, Lcom/tencent/connect/auth/QQToken;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-static {p1}, Lcom/tencent/connect/auth/QQToken;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    invoke-static {p1}, Lcom/tencent/connect/auth/QQToken;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "QQToken"

    const-string v0, "removeSession sucess"

    .line 310
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveSession(Lorg/json/JSONObject;)Z
    .registers 4

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/tencent/connect/auth/QQToken;->f:Lcom/tencent/open/utils/a;

    if-nez v0, :cond_f

    .line 117
    new-instance v0, Lcom/tencent/open/utils/a;

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/open/utils/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/QQToken;->f:Lcom/tencent/open/utils/a;

    .line 119
    :cond_f
    iget-object v0, p0, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/connect/auth/QQToken;->f:Lcom/tencent/open/utils/a;

    invoke-static {v0, p1, v1}, Lcom/tencent/connect/auth/QQToken;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/open/utils/a;)Z

    move-result p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return p1

    :catch_18
    move-exception p1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login saveSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQToken"

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/tencent/connect/auth/QQToken;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lcom/tencent/connect/auth/QQToken;->e:J

    if-eqz p2, :cond_17

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/connect/auth/QQToken;->e:J

    :cond_17
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    return-void
.end method

.method public setAuthSource(I)V
    .registers 2

    .line 102
    iput p1, p0, Lcom/tencent/connect/auth/QQToken;->d:I

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/tencent/connect/auth/QQToken;->c:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/tencent/open/b/b;->a()Lcom/tencent/open/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/open/b/b;->a(Ljava/lang/String;)V

    return-void
.end method
