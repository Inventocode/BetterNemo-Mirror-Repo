.class public Lcom/uc/crashsdk/a/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z = true

.field private static b:Z = true

.field private static final c:Ljava/lang/Object;

.field private static d:Z = false

.field private static e:Ljava/lang/String; = "hsdk"

.field private static f:Ljava/lang/String; = "alid "

.field private static g:Ljava/lang/String;

.field private static final h:Ljava/lang/Object;

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a/d;->c:Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a/d;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4

    .line 377
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "`"

    .line 378
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static a()V
    .registers 5

    .line 48
    invoke-static {}, Lcom/uc/crashsdk/b;->E()Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/32 v0, 0xdbba0

    goto :goto_d

    :cond_a
    const-wide/32 v0, 0x15f90

    :goto_d
    const/4 v2, 0x0

    .line 52
    new-instance v3, Lcom/uc/crashsdk/a/e;

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v2, v3, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(I)V
    .registers 2

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_f

    .line 72
    sget-boolean p0, Lcom/uc/crashsdk/a/d;->a:Z

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 71
    :cond_f
    sget-object p0, Lcom/uc/crashsdk/a/d;->c:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_13
    sput-object v0, Lcom/uc/crashsdk/a/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    invoke-static {v0}, Lcom/uc/crashsdk/a/d;->a(Z)Z

    sget-object v0, Lcom/uc/crashsdk/a/d;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/uc/crashsdk/a/d;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;)V

    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private static a(Z)Z
    .registers 13

    .line 107
    sget-boolean v0, Lcom/uc/crashsdk/a/d;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    xor-int/lit8 v0, p0, 0x1

    .line 110
    sput-boolean v0, Lcom/uc/crashsdk/a/d;->d:Z

    .line 113
    sget-object v0, Lcom/uc/crashsdk/a;->b:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/high16 v0, 0x20000000

    .line 114
    invoke-static {v0}, Lcom/uc/crashsdk/b;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 120
    :cond_1d
    invoke-static {}, Lcom/uc/crashsdk/b;->x()Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    .line 127
    :cond_24
    invoke-static {}, Lcom/uc/crashsdk/b;->k()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 143
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_52

    const-string v6, " "

    const/4 v10, 0x4

    .line 144
    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 145
    array-length v6, v2

    if-ne v6, v7, :cond_52

    .line 146
    aget-object v3, v2, v1

    .line 147
    aget-object v4, v2, v9

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 148
    aget-object v2, v2, v8

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->c(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v2, v10

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    .line 153
    :goto_53
    sput-boolean v9, Lcom/uc/crashsdk/a/d;->b:Z

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/32 v4, 0xf731400

    cmp-long v6, v10, v4

    if-gez v6, :cond_80

    const-string v4, "o"

    .line 159
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    :goto_69
    const/4 v4, 0x0

    goto :goto_81

    :cond_6b
    const-string v4, "2"

    .line 161
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 162
    sput-boolean v1, Lcom/uc/crashsdk/a/d;->b:Z

    goto :goto_69

    :cond_76
    const-string v4, "1"

    .line 164
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 165
    sput-boolean v1, Lcom/uc/crashsdk/a/d;->b:Z

    :cond_80
    const/4 v4, 0x1

    :goto_81
    if-eqz v4, :cond_18b

    if-eqz p0, :cond_87

    goto/16 :goto_18b

    .line 180
    :cond_87
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    if-ne v2, p0, :cond_8e

    return v1

    :cond_8e
    const-string p0, "per"

    .line 188
    sput-object p0, Lcom/uc/crashsdk/a/d;->g:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/uc/crashsdk/a/d;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17f

    const-string v2, "retcode="

    .line 196
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17f

    const-string v2, "retcode=0"

    .line 197
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 199
    sput-boolean v9, Lcom/uc/crashsdk/a/d;->b:Z

    const-string v2, "o"

    const-string v3, "aus"

    .line 201
    sput-object v3, Lcom/uc/crashsdk/a/d;->g:Ljava/lang/String;

    goto :goto_c8

    .line 203
    :cond_b1
    sput-boolean v1, Lcom/uc/crashsdk/a/d;->b:Z

    const-string v2, "1"

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string v2, "2"

    const-string v3, "auf2"

    .line 206
    sput-object v3, Lcom/uc/crashsdk/a/d;->g:Ljava/lang/String;

    goto :goto_c8

    :cond_c2
    const-string v2, "1"

    const-string v3, "auf1"

    .line 209
    sput-object v3, Lcom/uc/crashsdk/a/d;->g:Ljava/lang/String;

    .line 214
    :goto_c8
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s %d %d"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v1

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v9

    .line 216
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    .line 214
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v0, v2}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17e

    const-string v0, "`"

    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_fb
    if-ge v2, v0, :cond_17e

    aget-object v3, p0, v2

    const-string v4, "="

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v8, :cond_17a

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_124

    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_124

    const/4 v5, 0x1

    goto :goto_125

    :cond_124
    const/4 v5, 0x0

    :goto_125
    const-string v6, "logurl"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_133

    if-eqz v5, :cond_17a

    invoke-static {v3, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Z)V

    goto :goto_17a

    :cond_133
    const-string v6, "staturl"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_141

    if-eqz v5, :cond_17a

    invoke-static {v3}, Lcom/uc/crashsdk/a/h;->b(Ljava/lang/String;)V

    goto :goto_17a

    :cond_141
    const-string v6, "policyurl"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16f

    if-eqz v5, :cond_17a

    sget-object v4, Lcom/uc/crashsdk/a/d;->h:Ljava/lang/Object;

    monitor-enter v4

    :try_start_14e
    sput-object v3, Lcom/uc/crashsdk/a/d;->i:Ljava/lang/String;

    invoke-static {}, Lcom/uc/crashsdk/b;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uc/crashsdk/a/d;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v4

    goto :goto_17a

    :catchall_16c
    move-exception p0

    monitor-exit v4
    :try_end_16e
    .catchall {:try_start_14e .. :try_end_16e} :catchall_16c

    throw p0

    :cond_16f
    const-string v5, "logpolicy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17a

    invoke-static {v3}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;)V

    :cond_17a
    :goto_17a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_fb

    :cond_17e
    return v9

    :cond_17f
    if-nez p0, :cond_186

    const-string p0, "ner"

    .line 234
    sput-object p0, Lcom/uc/crashsdk/a/d;->g:Ljava/lang/String;

    goto :goto_18a

    :cond_186
    const-string p0, "ser"

    .line 236
    sput-object p0, Lcom/uc/crashsdk/a/d;->g:Ljava/lang/String;

    :goto_18a
    return v1

    :cond_18b
    :goto_18b
    return v9
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inv"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    sget-object v1, Lcom/uc/crashsdk/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cras"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    sget-object v1, Lcom/uc/crashsdk/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-object v0

    :catchall_1e
    move-exception v0

    .line 90
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method static c()[B
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 303
    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x6t
        0x0t
        0x17t
        0x8t
    .end array-data
.end method

.method public static d()Z
    .registers 2

    .line 386
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->E()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_12

    .line 389
    :cond_e
    invoke-static {v1}, Lcom/uc/crashsdk/a/d;->a(Z)Z
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_13

    goto :goto_13

    :cond_12
    :goto_12
    return v1

    .line 395
    :catchall_13
    :goto_13
    sget-boolean v0, Lcom/uc/crashsdk/a/d;->b:Z

    return v0
.end method

.method private static e()Ljava/lang/String;
    .registers 4

    .line 286
    sget-object v0, Lcom/uc/crashsdk/a/d;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 287
    sget-object v0, Lcom/uc/crashsdk/a/d;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    const-string v1, "https://errlog.umeng.com"

    .line 290
    invoke-static {}, Lcom/uc/crashsdk/g;->P()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "https://errlogos.umeng.com"

    .line 293
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/crashsdk/validate"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {}, Lcom/uc/crashsdk/b;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 294
    invoke-static {v2, v1, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/a/d;->i:Ljava/lang/String;

    .line 297
    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_33

    throw v1

    .line 299
    :cond_36
    :goto_36
    sget-object v0, Lcom/uc/crashsdk/a/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .registers 5

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platform"

    invoke-static {v0, v2, v1}, Lcom/uc/crashsdk/a/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    const-string v2, "pkgname"

    invoke-static {v0, v2, v1}, Lcom/uc/crashsdk/a/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "process"

    invoke-static {v0, v2, v1}, Lcom/uc/crashsdk/a/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-static {v0, v2, v1}, Lcom/uc/crashsdk/a/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cver"

    const-string v2, "3.2.0.4"

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ctag"

    const-string v2, "release"

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/g;->P()Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "true"

    goto :goto_40

    :cond_3e
    const-string v1, "false"

    :goto_40
    const-string v2, "inter"

    invoke-static {v0, v2, v1}, Lcom/uc/crashsdk/a/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os"

    const-string v2, "android"

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 315
    invoke-static {}, Lcom/uc/crashsdk/a/h;->j()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/uc/crashsdk/a/c;->a([BI[B)V

    const/4 v2, 0x4

    .line 316
    invoke-static {}, Lcom/uc/crashsdk/a/c;->a()[B

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/uc/crashsdk/a/c;->a([BI[B)V

    const/16 v2, 0x8

    .line 317
    invoke-static {}, Lcom/uc/crashsdk/a/d;->c()[B

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/uc/crashsdk/a/c;->a([BI[B)V

    const/16 v2, 0xc

    .line 318
    invoke-static {}, Lcom/uc/crashsdk/a;->f()[B

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/uc/crashsdk/a/c;->a([BI[B)V

    const/4 v2, 0x0

    .line 322
    :try_start_77
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/uc/crashsdk/a/c;->a([B[BZ)[B

    move-result-object v0
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_81

    goto :goto_86

    :catchall_81
    move-exception v0

    .line 323
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_86
    if-nez v0, :cond_89

    return-object v2

    .line 331
    :cond_89
    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_90

    return-object v2

    .line 339
    :cond_90
    invoke-static {v4, v0}, Lcom/uc/crashsdk/a/c;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_97

    return-object v2

    .line 347
    :cond_97
    :try_start_97
    invoke-static {v0, v1, v3}, Lcom/uc/crashsdk/a/c;->a([B[BZ)[B

    move-result-object v0
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9c

    goto :goto_a1

    :catchall_9c
    move-exception v0

    .line 349
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_a1
    if-eqz v0, :cond_a9

    .line 354
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_a9
    return-object v2
.end method
