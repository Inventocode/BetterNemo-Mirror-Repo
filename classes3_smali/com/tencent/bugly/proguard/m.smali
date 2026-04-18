.class public final Lcom/tencent/bugly/proguard/m;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final a:J

.field private static b:Lcom/tencent/bugly/proguard/m;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/bugly/proguard/m;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/tencent/bugly/proguard/m;->c:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/m;->e:Ljava/util/Map;

    .line 57
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/m;->d:Ljava/lang/String;

    const-string v0, "crashrecord"

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/m;->f:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/m;
    .registers 2

    const-class v0, Lcom/tencent/bugly/proguard/m;

    monitor-enter v0

    .line 75
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/m;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/m;
    .registers 3

    const-class v0, Lcom/tencent/bugly/proguard/m;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/m;

    if-nez v1, :cond_e

    .line 69
    new-instance v1, Lcom/tencent/bugly/proguard/m;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/m;

    .line 71
    :cond_e
    sget-object p0, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/m;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/m;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/tencent/bugly/proguard/m;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/m;I)Ljava/util/List;
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/m;->c(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List<",
            "*>;>(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_5

    .line 245
    monitor-exit p0

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 247
    :try_start_6
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/m;->c:Landroid/content/Context;

    const-string v3, "crashrecord"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_55
    .catchall {:try_start_6 .. :try_end_1f} :catchall_53

    const/4 p1, 0x0

    .line 250
    :try_start_20
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_37
    .catchall {:try_start_20 .. :try_end_2a} :catchall_33

    .line 251
    :try_start_2a
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_31
    .catchall {:try_start_2a .. :try_end_2d} :catchall_4c

    .line 256
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_55
    .catchall {:try_start_2d .. :try_end_30} :catchall_53

    goto :goto_5c

    :catch_31
    move-exception p1

    goto :goto_3a

    :catchall_33
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_4d

    :catch_37
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    .line 253
    :goto_3a
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "open record file error"

    new-array p2, v0, [Ljava/lang/Object;

    .line 254
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_4c

    if-eqz v2, :cond_4a

    .line 257
    :try_start_46
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_55
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    goto :goto_5c

    .line 262
    :cond_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception p1

    :goto_4d
    if-eqz v2, :cond_52

    .line 257
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 259
    :cond_52
    throw p1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_55
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    :catchall_53
    move-exception p1

    goto :goto_5e

    :catch_55
    :try_start_55
    const-string p1, "writeCrashRecord error"

    new-array p2, v0, [Ljava/lang/Object;

    .line 261
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_53

    .line 263
    :goto_5c
    monitor-exit p0

    return-void

    :goto_5e
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/m;ILjava/util/List;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/m;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/l;)Z
    .registers 7

    .line 29
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/l;->g:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/l;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    iget-object p0, p0, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    if-eqz p0, :cond_16

    iget-object p1, p1, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/m;)Ljava/util/Map;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/tencent/bugly/proguard/m;->e:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized b(I)Z
    .registers 14

    monitor-enter p0

    const/4 v0, 0x0

    .line 87
    :try_start_2
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/m;->c(I)Ljava/util/List;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_80
    .catchall {:try_start_2 .. :try_end_6} :catchall_7e

    if-nez v1, :cond_a

    .line 89
    monitor-exit p0

    return v0

    .line 91
    :cond_a
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide/32 v8, 0x5265c00

    if-eqz v7, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/proguard/l;

    .line 95
    iget-object v10, v7, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    if-eqz v10, :cond_3e

    iget-object v11, p0, Lcom/tencent/bugly/proguard/m;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3e

    iget v10, v7, Lcom/tencent/bugly/proguard/l;->d:I

    if-lez v10, :cond_3e

    .line 97
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3e
    iget-wide v10, v7, Lcom/tencent/bugly/proguard/l;->c:J

    add-long/2addr v10, v8

    cmp-long v8, v10, v2

    if-gez v8, :cond_1c

    .line 101
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 104
    :cond_49
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_76

    .line 106
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_74

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/l;

    iget-wide v4, v4, Lcom/tencent/bugly/proguard/l;->c:J

    add-long/2addr v4, v8

    cmp-long v7, v4, v2

    if-gez v7, :cond_74

    .line 108
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/proguard/m;->a(ILjava/util/List;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_72} :catch_80
    .catchall {:try_start_a .. :try_end_72} :catchall_7e

    .line 110
    monitor-exit p0

    return v0

    .line 113
    :cond_74
    monitor-exit p0

    return v6

    .line 117
    :cond_76
    :try_start_76
    invoke-interface {v1, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 118
    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/proguard/m;->a(ILjava/util/List;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7c} :catch_80
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7e

    .line 119
    monitor-exit p0

    return v0

    :catchall_7e
    move-exception p1

    goto :goto_89

    :catch_80
    :try_start_80
    const-string p1, "isFrequentCrash failed"

    new-array v1, v0, [Ljava/lang/Object;

    .line 122
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_7e

    .line 124
    monitor-exit p0

    return v0

    :goto_89
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/l;)Z
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/tencent/bugly/proguard/l;->e:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p1, Lcom/tencent/bugly/proguard/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/l;->f:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object p1, p1, Lcom/tencent/bugly/proguard/l;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_18
    iget p0, p0, Lcom/tencent/bugly/proguard/l;->d:I

    if-gtz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/m;I)Z
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/m;->b(I)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/m;)Landroid/content/SharedPreferences;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/tencent/bugly/proguard/m;->f:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List<",
            "*>;>(I)TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 217
    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/m;->c:Landroid/content/Context;

    const-string v4, "crashrecord"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_5e
    .catchall {:try_start_3 .. :try_end_20} :catchall_5c

    if-nez p1, :cond_24

    .line 219
    monitor-exit p0

    return-object v0

    .line 223
    :cond_24
    :try_start_24
    new-instance p1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_2e} :catch_3c
    .catchall {:try_start_24 .. :try_end_2e} :catchall_39

    .line 224
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_34} :catch_3d
    .catchall {:try_start_2e .. :try_end_34} :catchall_55

    .line 231
    :try_start_34
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_5e
    .catchall {:try_start_34 .. :try_end_37} :catchall_5c

    .line 225
    monitor-exit p0

    return-object v2

    :catchall_39
    move-exception v2

    move-object p1, v0

    goto :goto_56

    :catch_3c
    move-object p1, v0

    :catch_3d
    :try_start_3d
    const-string v2, "get object error"

    new-array v3, v1, [Ljava/lang/Object;

    .line 229
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_55

    if-eqz p1, :cond_65

    .line 232
    :goto_46
    :try_start_46
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_5e
    .catchall {:try_start_46 .. :try_end_49} :catchall_5c

    goto :goto_65

    :catch_4a
    move-object p1, v0

    :catch_4b
    :try_start_4b
    const-string v2, "open record file error"

    new-array v3, v1, [Ljava/lang/Object;

    .line 227
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_55

    if-eqz p1, :cond_65

    goto :goto_46

    :catchall_55
    move-exception v2

    :goto_56
    if-eqz p1, :cond_5b

    .line 232
    :try_start_58
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    .line 234
    :cond_5b
    throw v2
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_5e
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p1

    goto :goto_67

    :catch_5e
    :try_start_5e
    const-string p1, "readCrashRecord error"

    new-array v1, v1, [Ljava/lang/Object;

    .line 236
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_5c

    .line 238
    :cond_65
    :goto_65
    monitor-exit p0

    return-object v0

    :goto_67
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(II)V
    .registers 5

    .line 135
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object p1

    new-instance v0, Lcom/tencent/bugly/proguard/m$1;

    const/16 v1, 0x3ec

    invoke-direct {v0, p0, v1, p2}, Lcom/tencent/bugly/proguard/m$1;-><init>(Lcom/tencent/bugly/proguard/m;II)V

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized a(I)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x1

    .line 274
    :try_start_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/m;->f:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 275
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/m$2;

    invoke-direct {v2, p0, p1}, Lcom/tencent/bugly/proguard/m$2;-><init>(Lcom/tencent/bugly/proguard/m;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2e
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2c

    .line 282
    monitor-exit p0

    return v0

    :catchall_2c
    move-exception p1

    goto :goto_38

    :catch_2e
    :try_start_2e
    const-string p1, "canInit error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 284
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2c

    .line 286
    monitor-exit p0

    return v0

    :goto_38
    monitor-exit p0

    throw p1
.end method
