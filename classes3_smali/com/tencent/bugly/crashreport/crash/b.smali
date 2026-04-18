.class public final Lcom/tencent/bugly/crashreport/crash/b;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/crash/b$g;,
        Lcom/tencent/bugly/crashreport/crash/b$f;,
        Lcom/tencent/bugly/crashreport/crash/b$i;,
        Lcom/tencent/bugly/crashreport/crash/b$h;,
        Lcom/tencent/bugly/crashreport/crash/b$e;,
        Lcom/tencent/bugly/crashreport/crash/b$d;,
        Lcom/tencent/bugly/crashreport/crash/b$c;,
        Lcom/tencent/bugly/crashreport/crash/b$b;,
        Lcom/tencent/bugly/crashreport/crash/b$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/crashreport/crash/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/bugly/proguard/v;

.field private d:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private e:Lcom/tencent/bugly/proguard/n;

.field private f:Lcom/tencent/bugly/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/b$1;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/b$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/b;->g:Ljava/util/Map;

    .line 87
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/b$2;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/b$2;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/b;->h:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/b$3;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/b$3;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/b;->i:Ljava/util/Map;

    .line 113
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/b$4;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/b$4;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/b;->j:Ljava/util/Map;

    .line 122
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/b$5;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/b$5;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/b;->k:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/v;Lcom/tencent/bugly/proguard/o;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/n;)V
    .registers 8

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    sput p1, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    .line 145
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    .line 146
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/v;

    .line 147
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 149
    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/BuglyStrategy$a;

    .line 150
    iput-object p7, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/proguard/n;

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "_dt"

    .line 877
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    const-string v2, "_id"

    .line 881
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 882
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/ab;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    if-eqz p0, :cond_27

    .line 884
    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_28

    :cond_27
    return-object p0

    :catchall_28
    move-exception p0

    .line 888
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 889
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_32
    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    if-eqz p1, :cond_96

    .line 184
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_96

    :cond_a
    const/4 v0, 0x0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/a;

    .line 193
    iget-boolean v4, v3, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-eqz v4, :cond_16

    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 198
    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_49

    .line 200
    invoke-direct {p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 201
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 202
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 204
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 205
    invoke-static {v0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/List;)V

    :cond_49
    const/4 v1, 0x1

    if-nez v0, :cond_55

    .line 209
    iput-boolean v1, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    iput v3, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    const-string v0, ""

    iput-object v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    move-object v0, p2

    .line 212
    :cond_55
    invoke-static {v0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/List;)V

    .line 214
    iget-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v4, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_95

    iget-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_95

    iget p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    :cond_95
    return-object v0

    :cond_96
    :goto_96
    return-object p2
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/ak;
    .registers 9

    const-string v0, "del tmp"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_d2

    if-nez p1, :cond_a

    goto/16 :goto_d2

    :cond_a
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const-string v5, "zip %s"

    .line 1245
    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1246
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1247
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 p0, 0x1388

    .line 1249
    invoke-static {v4, p2, p0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/io/File;Ljava/io/File;I)Z

    move-result p0

    if-nez p0, :cond_32

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "zip fail!"

    .line 1250
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1

    .line 1254
    :cond_32
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1257
    :try_start_37
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_88

    const/16 v4, 0x1000

    :try_start_3e
    new-array v4, v4, [B

    .line 1260
    :goto_40
    invoke-virtual {p1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_4d

    .line 1261
    invoke-virtual {p0, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1262
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_40

    .line 1264
    :cond_4d
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v4, "read bytes :%d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1265
    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1267
    new-instance v3, Lcom/tencent/bugly/proguard/ak;

    const/4 v4, 0x2

    .line 1268
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/tencent/bugly/proguard/ak;-><init>(BLjava/lang/String;[B)V
    :try_end_69
    .catchall {:try_start_3e .. :try_end_69} :catchall_86

    .line 1276
    :try_start_69
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_77

    :catch_6d
    move-exception p0

    .line 1280
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 1281
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1286
    :cond_77
    :goto_77
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_85

    new-array p0, v2, [Ljava/lang/Object;

    .line 1287
    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1288
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_85
    return-object v3

    :catchall_86
    move-exception p0

    goto :goto_8a

    :catchall_88
    move-exception p0

    move-object p1, v1

    .line 1271
    :goto_8a
    :try_start_8a
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_93

    .line 1272
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_b2

    :cond_93
    if-eqz p1, :cond_a3

    .line 1278
    :try_start_95
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_a3

    :catch_99
    move-exception p0

    .line 1280
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_a3

    .line 1281
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1286
    :cond_a3
    :goto_a3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_b1

    new-array p0, v2, [Ljava/lang/Object;

    .line 1287
    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1288
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_b1
    return-object v1

    :catchall_b2
    move-exception p0

    if-eqz p1, :cond_c3

    .line 1278
    :try_start_b5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_c3

    :catch_b9
    move-exception p1

    .line 1280
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 1281
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1286
    :cond_c3
    :goto_c3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d1

    new-array p1, v2, [Ljava/lang/Object;

    .line 1287
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1288
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1290
    :cond_d1
    throw p0

    :cond_d2
    :goto_d2
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}"

    .line 1240
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_36

    .line 159
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_36

    .line 164
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 167
    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 168
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/a;

    .line 169
    iget-boolean v4, v3, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-eqz v4, :cond_16

    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    const-wide/32 v6, 0x5265c00

    sub-long v6, v0, v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_16

    .line 171
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_35
    return-object v2

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/crashreport/common/info/a;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            "Lcom/tencent/bugly/crashreport/common/info/a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1853
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :try_start_7
    const-string v1, "A9"

    .line 1855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A11"

    .line 1856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A10"

    .line 1857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A23"

    .line 1858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A7"

    .line 1859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A6"

    .line 1860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A5"

    .line 1861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A22"

    .line 1862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A2"

    .line 1863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A1"

    .line 1864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A24"

    .line 1865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A17"

    .line 1866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A25"

    .line 1867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A15"

    .line 1868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A13"

    .line 1869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A34"

    .line 1870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;

    if-eqz v1, :cond_158

    const-string v1, "productIdentify"

    .line 1873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_158
    const-string v1, "A26"

    .line 1876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    iget v1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1af

    const-string v1, "A27"

    .line 1879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A28"

    .line 1880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A29"

    .line 1881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1af
    const-string v1, "A30"

    .line 1883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A18"

    .line 1884
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A36"

    .line 1887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Z

    if-nez v4, :cond_1e1

    goto :goto_1e2

    :cond_1e1
    const/4 v2, 0x0

    :goto_1e2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "F02"

    .line 1889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->p:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "F03"

    .line 1891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "F04"

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "F05"

    .line 1895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "F06"

    .line 1897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "F08"

    .line 1901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "F09"

    .line 1903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "F10"

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    invoke-static {v0, p0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_289} :catch_28a

    goto :goto_291

    :catch_28a
    move-exception p0

    .line 1909
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1910
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :goto_291
    return-object v0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 227
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 228
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 230
    iget-object v3, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v3, :cond_3d

    const-string v4, "\n"

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 237
    array-length v5, v3

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v5, :cond_3d

    aget-object v7, v3, v6

    .line 241
    iget-object v8, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 242
    iget v8, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 243
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 247
    :cond_40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_ba

    .line 1532
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_ba

    .line 1538
    :cond_b
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 1539
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1540
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1541
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1544
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x64

    if-le v3, v6, :cond_59

    .line 1545
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 1547
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v0

    aput-object v2, v3, v4

    const-string v6, "setted key length is over limit %d substring to %s"

    .line 1546
    invoke-static {v6, v3}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1550
    :cond_59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 1551
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const v6, 0x186a0

    if-le v3, v6, :cond_99

    .line 1552
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1553
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 1555
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v6, "setted %s value length is over limit %d substring"

    .line 1554
    invoke-static {v6, v3}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_9f

    .line 1557
    :cond_99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1559
    :goto_9f
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 1560
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "add setted key %s value size:%d"

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :cond_b9
    return-void

    :cond_ba
    :goto_ba
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "extra map is empty. CrashBean won\'t have userDatas."

    .line 1533
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/b;Ljava/util/List;ZJLjava/lang/String;Ljava/lang/String;)V
    .registers 21

    if-eqz p1, :cond_4f

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    sget-object v3, Lcom/tencent/bugly/crashreport/crash/b;->k:Ljava/util/Map;

    iget v4, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v3, Lcom/tencent/bugly/proguard/t$c;

    iget-object v5, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iget-wide v7, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    move-object v4, v3

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v4 .. v13}, Lcom/tencent/bugly/proguard/t$c;-><init>(Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_48
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/t;->a(Ljava/util/List;)V

    :cond_4f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .registers 13

    .line 1395
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "#++++++++++Record By Bugly++++++++++#"

    .line 1399
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    .line 1400
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 1401
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "# PKG NAME: %s"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v3, v2, [Ljava/lang/Object;

    .line 1402
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "# APP VER: %s"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v3, v2, [Ljava/lang/Object;

    .line 1403
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "# SDK VER: %s"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v3, v2, [Ljava/lang/Object;

    .line 1404
    new-instance v4, Ljava/util/Date;

    .line 1405
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v5

    iget-wide v5, v5, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "# LAUNCH TIME: %s"

    .line 1404
    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string p0, "# CRASH TYPE: %s"

    .line 1406
    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "# CRASH TIME: %s"

    .line 1407
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v1

    const-string p1, "# CRASH PROCESS: %s"

    .line 1408
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v2, [Ljava/lang/Object;

    .line 1409
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "# CRASH FOREGROUND: %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p3, p0, v1

    const-string p1, "# CRASH THREAD: %s"

    .line 1410
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p5, :cond_132

    new-array p0, v2, [Ljava/lang/Object;

    .line 1412
    iget-object p1, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object p1, p0, v1

    const-string p1, "# REPORT ID: %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x2

    new-array p1, p0, [Ljava/lang/Object;

    .line 1413
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 1414
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a8

    const-string p2, "ROOTED"

    goto :goto_aa

    :cond_a8
    const-string p2, "UNROOT"

    :goto_aa
    aput-object p2, p1, v2

    const-string p2, "# CRASH DEVICE: %s %s"

    .line 1413
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x3

    new-array p2, p1, [Ljava/lang/Object;

    .line 1415
    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v1

    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 1416
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v2

    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p0

    const-string p3, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    .line 1415
    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p2, p1, [Ljava/lang/Object;

    .line 1417
    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v1

    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 1418
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v2

    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p0

    const-string p3, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    .line 1417
    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1419
    iget-object p2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_108

    new-array p0, p0, [Ljava/lang/Object;

    .line 1420
    iget-object p1, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    aput-object p1, p0, v1

    iget-object p1, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:Ljava/lang/String;

    aput-object p1, p0, v2

    const-string p1, "# EXCEPTION FIRED BY %s %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_132

    .line 1422
    :cond_108
    iget p0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne p0, p1, :cond_132

    new-array p0, v2, [Ljava/lang/Object;

    .line 1423
    iget-object p1, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    if-nez p1, :cond_115

    const-string p1, "null"

    goto :goto_12b

    :cond_115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    const-string p3, "BUGLY_CR_01"

    .line 1424
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_12b
    aput-object p1, p0, v1

    const-string p1, "# EXCEPTION ANR MESSAGE:\n %s"

    .line 1423
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1427
    :cond_132
    :goto_132
    invoke-static {p4}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_144

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "# CRASH STACK: "

    .line 1428
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v1, [Ljava/lang/Object;

    .line 1429
    invoke-static {p4, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_144
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "#++++++++++++++++++++++++++++++++++++++++++#"

    .line 1431
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ")V"
        }
    .end annotation

    .line 1638
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-nez v0, :cond_5

    return-void

    .line 1642
    :cond_5
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 1644
    :try_start_f
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    const/4 v1, 0x1

    const-string v2, "alltimes.txt"

    iget-object p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    const-string v3, "utf-8"

    .line 1645
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/ak;-><init>(BLjava/lang/String;[B)V

    .line 1644
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 1647
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1648
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_2a
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Landroid/content/Context;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "BUGLY_CR_01"

    .line 1755
    iget v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 1758
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "crashBean.anrMessages:%s"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1760
    :try_start_15
    iget-object v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    if-eqz v2, :cond_51

    .line 1761
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1764
    iget-object v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1765
    new-instance v2, Lcom/tencent/bugly/proguard/ak;

    const-string v3, "anrMessage.txt"

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    .line 1766
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "utf-8"

    .line 1767
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v2, v1, v3, v5}, Lcom/tencent/bugly/proguard/ak;-><init>(BLjava/lang/String;[B)V

    .line 1765
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "attach anr message"

    new-array v2, v4, [Ljava/lang/Object;

    .line 1768
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1771
    :cond_4c
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    :cond_51
    iget-object p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz p1, :cond_67

    const-string v0, "trace.zip"

    .line 1776
    invoke-static {v0, p2, p1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/ak;

    move-result-object p1

    if-eqz p1, :cond_67

    const-string p2, "attach traces"

    new-array v0, v4, [Ljava/lang/Object;

    .line 1778
    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1779
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_67} :catch_68

    :cond_67
    return-void

    :catch_68
    move-exception p0

    .line 1783
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1784
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 1661
    :try_start_2
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    const/4 v1, 0x1

    const-string v2, "log.txt"

    const-string v3, "utf-8"

    .line 1662
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/ak;-><init>(BLjava/lang/String;[B)V

    .line 1661
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1664
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1665
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_1b
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1a

    :try_start_2
    const-string v0, "backupRecord.zip"

    .line 1719
    invoke-static {v0, p2, p1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/ak;

    move-result-object p1

    if-eqz p1, :cond_15

    const-string p2, "attach backup record"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1721
    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1722
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    :cond_15
    return-void

    :catch_16
    move-exception p0

    .line 1725
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_1a
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_43

    .line 1820
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1822
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1826
    :cond_21
    :try_start_21
    new-instance p1, Lcom/tencent/bugly/proguard/ak;

    const/4 v1, 0x1

    const-string v2, "martianlog.txt"

    .line 1827
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/ak;-><init>(BLjava/lang/String;[B)V

    .line 1826
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "attach pageTracingList"

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 1828
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    .line 1830
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_43
    return-void
.end method

.method private static a(Ljava/util/ArrayList;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;[B)V"
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 1737
    array-length v0, p1

    if-lez v0, :cond_1d

    .line 1739
    :try_start_5
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    const/4 v1, 0x2

    const-string v2, "buglylog.zip"

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/ak;-><init>(BLjava/lang/String;[B)V

    const-string p1, "attach user log"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1740
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1741
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 1743
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_1d
    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ")V"
        }
    .end annotation

    .line 1923
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:I

    if-ltz v0, :cond_17

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C01"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    :cond_17
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:I

    if-ltz v0, :cond_2e

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C02"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    :cond_2e
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/util/Map;

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6a

    .line 1932
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1933
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "C03_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 1937
    :cond_6a
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/util/Map;

    if-eqz v0, :cond_a6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a6

    .line 1938
    iget-object p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C04_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    :cond_a6
    return-void
.end method

.method public static a(ZLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9f

    .line 771
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9f

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 772
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "up finish update state %b"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 773
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 774
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 775
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    .line 776
    iget-object v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v6, v5, v0

    iget v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-boolean v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 777
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-boolean v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-string v6, "pre uid:%s uc:%d re:%b me:%b"

    .line 776
    invoke-static {v6, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 779
    iget v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    add-int/2addr v5, v1

    iput v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    .line 780
    iput-boolean p0, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    new-array v4, v4, [Ljava/lang/Object;

    .line 781
    iget-object v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v6, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 782
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    iget-boolean v3, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v8

    const-string v3, "set uid:%s uc:%d re:%b me:%b"

    .line 781
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1b

    .line 784
    :cond_76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 785
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_7a

    :cond_8e
    new-array v1, v1, [Ljava/lang/Object;

    .line 787
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "update state size %d"

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_9f
    if-nez p0, :cond_a8

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "[crash] upload fail."

    .line 790
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_a8
    return-void
.end method

.method private static a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)Z"
        }
    .end annotation

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/a;

    .line 425
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-object v3, v1, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 426
    iget-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    .line 429
    :cond_20
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_24
    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    .line 378
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    :try_start_b
    const-string v0, "Crash regular filter for crash stack is: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 380
    sget-object v4, Lcom/tencent/bugly/crashreport/crash/c;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 382
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_48

    const-string p0, "This crash matches the regular filter string set. It will not be record and upload."

    new-array v0, v1, [Ljava/lang/Object;

    .line 383
    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_2f

    return v2

    :catch_2f
    move-exception p0

    .line 387
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 388
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to compile "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_48
    return v1
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 995
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/a;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/crash/a;-><init>()V

    const-string v2, "_id"

    .line 996
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    const-string v2, "_tm"

    .line 997
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    const-string v2, "_s1"

    .line 998
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    const-string v2, "_up"

    .line 1000
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3d

    const/4 v2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    iput-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    const-string v2, "_me"

    .line 1002
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_4d

    const/4 v3, 0x1

    :cond_4d
    iput-boolean v3, v1, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    const-string v2, "_uc"

    .line 1003
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, v1, Lcom/tencent/bugly/crashreport/crash/a;->f:I
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_5c

    return-object v1

    :catchall_5c
    move-exception p0

    .line 1006
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 1007
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_66
    return-object v0
.end method

.method private b()Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .line 1018
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    const-string v3, "_id"

    const-string v4, "_tm"

    const-string v5, "_s1"

    const-string v6, "_up"

    const-string v7, "_me"

    const-string v8, "_uc"

    .line 1020
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v11

    .line 1022
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v9

    const-string v10, "t_cr"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_c1

    if-nez v3, :cond_2c

    if-eqz v3, :cond_2b

    .line 1067
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2b
    return-object v2

    .line 1027
    :cond_2c
    :try_start_2c
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_be

    if-gtz v0, :cond_36

    .line 1067
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 1030
    :cond_36
    :try_start_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in "

    .line 1031
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1033
    :goto_47
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_be

    const-string v6, ","

    if-eqz v5, :cond_74

    .line 1034
    :try_start_4f
    invoke-static {v3}, Lcom/tencent/bugly/crashreport/crash/b;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 1036
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_be

    goto :goto_47

    :cond_59
    :try_start_59
    const-string v5, "_id"

    .line 1040
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1041
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_6c

    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :catchall_6c
    :try_start_6c
    const-string v5, "unknown id!"

    new-array v6, v2, [Ljava/lang/Object;

    .line 1044
    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_47

    .line 1048
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 1049
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    :cond_8c
    const-string v5, ")"

    .line 1051
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1054
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v4, :cond_ba

    .line 1056
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v6

    const-string v7, "t_cr"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I

    move-result v0

    const-string v4, "deleted %s illegal data %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "t_cr"

    aput-object v6, v5, v2

    .line 1058
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_ba
    .catchall {:try_start_6c .. :try_end_ba} :catchall_be

    .line 1067
    :cond_ba
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_be
    move-exception v0

    move-object v2, v3

    goto :goto_c2

    :catchall_c1
    move-exception v0

    .line 1062
    :goto_c2
    :try_start_c2
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_cb

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_d1

    :cond_cb
    if-eqz v2, :cond_d0

    .line 1067
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d0
    return-object v1

    :catchall_d1
    move-exception v0

    if-eqz v2, :cond_d7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1069
    :cond_d7
    throw v0
.end method

.method private static b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)V"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/a;

    .line 275
    iget-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-nez v2, :cond_b

    iget-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 277
    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 278
    iget-wide v1, v1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 281
    :cond_46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    return-void
.end method

.method private static b(Ljava/util/ArrayList;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1796
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 1799
    :cond_6
    iget-object p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz p1, :cond_22

    :try_start_a
    const-string v0, "tomb.zip"

    .line 1802
    invoke-static {v0, p2, p1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/ak;

    move-result-object p1

    if-eqz p1, :cond_1d

    const-string p2, "attach tombs"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1804
    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1805
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1e

    :cond_1d
    return-void

    :catch_1e
    move-exception p0

    .line 1808
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_22
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 1678
    :try_start_2
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    const/4 v1, 0x1

    const-string v2, "jniLog.txt"

    const-string v3, "utf-8"

    .line 1679
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/ak;-><init>(BLjava/lang/String;[B)V

    .line 1678
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1681
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1682
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_1b
    return-void
.end method

.method private static b(Ljava/util/ArrayList;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;[B)V"
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 1841
    array-length v0, p1

    if-lez v0, :cond_1d

    .line 1843
    :try_start_5
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    const/4 v1, 0x1

    const-string v2, "userExtraByteData"

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/ak;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "attach extraData"

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 1845
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 1847
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_1d
    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)V"
        }
    .end annotation

    .line 590
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 591
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_62

    .line 594
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 596
    sget-object v2, Lcom/tencent/bugly/crashreport/crash/b;->k:Ljava/util/Map;

    iget v3, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 597
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 598
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const-string v3, "find expired data,crashId:%s eventType:%s"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 602
    new-instance v2, Lcom/tencent/bugly/proguard/t$c;

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iget-wide v6, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const-string v11, "expired"

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lcom/tencent/bugly/proguard/t$c;-><init>(Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 606
    :cond_5b
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/t;->a(Ljava/util/List;)V

    :cond_62
    :goto_62
    return-void
.end method

.method private b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/List;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)Z"
        }
    .end annotation

    .line 444
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v3, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v3, 0x1

    :goto_c
    const/4 v4, 0x3

    if-ne v0, v4, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    sget-boolean v4, Lcom/tencent/bugly/b;->c:Z

    if-nez v4, :cond_1f

    if-nez v0, :cond_1c

    if-nez v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_20

    :cond_1c
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/c;->d:Z

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-nez v0, :cond_23

    return v2

    .line 449
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    invoke-static {p1, p2, v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_38

    .line 453
    :try_start_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sget v3, Lcom/tencent/bugly/crashreport/crash/c;->c:I

    if-lt p2, v3, :cond_78

    :cond_38
    const-string p2, "same crash occur too much do merged!"

    new-array v3, v2, [Ljava/lang/Object;

    .line 455
    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 456
    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object p1

    .line 457
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_47
    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 458
    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    iget-wide v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_47

    .line 459
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 462
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 463
    invoke-static {p3}, Lcom/tencent/bugly/crashreport/crash/b;->d(Ljava/util/List;)V

    const-string p1, "[crash] save crash success. For this device crash many times, it will not upload crashes immediately"

    new-array p2, v2, [Ljava/lang/Object;

    .line 464
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_6c} :catch_6d

    return v1

    :catch_6d
    move-exception p1

    .line 469
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Failed to merge crash."

    .line 470
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_78
    return v2
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_106

    .line 919
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_106

    .line 923
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in "

    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ","

    if-eqz v4, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/crashreport/crash/a;

    .line 926
    iget-wide v6, v4, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 928
    :cond_35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_4e

    .line 929
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    :cond_4e
    const-string p1, ")"

    .line 931
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 934
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 937
    :try_start_5a
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v6

    const-string v7, "t_cr"

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;

    move-result-object v6
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_ee

    if-nez v6, :cond_70

    if-eqz v6, :cond_6f

    .line 979
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6f
    return-object v0

    .line 943
    :cond_70
    :try_start_70
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 944
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 946
    :goto_7c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 947
    invoke-static {v6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v3

    if-eqz v3, :cond_8c

    .line 949
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catchall {:try_start_70 .. :try_end_8b} :catchall_ec

    goto :goto_7c

    :cond_8c
    :try_start_8c
    const-string v3, "_id"

    .line 953
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 954
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9c
    .catchall {:try_start_8c .. :try_end_9c} :catchall_9f

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :catchall_9f
    :try_start_9f
    const-string v3, "unknown id!"

    new-array v8, v4, [Ljava/lang/Object;

    .line 957
    invoke-static {v3, v8}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7c

    .line 961
    :cond_a7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 964
    :cond_bf
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-lez v2, :cond_e8

    .line 968
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v8

    const-string v9, "t_cr"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I

    move-result p1

    const-string v1, "deleted %s illegal data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t_cr"

    aput-object v3, v2, v4

    .line 970
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_e8
    .catchall {:try_start_9f .. :try_end_e8} :catchall_ec

    .line 979
    :cond_e8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v7

    :catchall_ec
    move-exception p1

    goto :goto_f0

    :catchall_ee
    move-exception p1

    move-object v6, v0

    .line 974
    :goto_f0
    :try_start_f0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_f9

    .line 975
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f9
    .catchall {:try_start_f0 .. :try_end_f9} :catchall_ff

    :cond_f9
    if-eqz v6, :cond_fe

    .line 979
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_fe
    return-object v0

    :catchall_ff
    move-exception p1

    if-eqz v6, :cond_105

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 981
    :cond_105
    throw p1

    :cond_106
    :goto_106
    return-object v0
.end method

.method private static c(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1694
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1696
    :try_start_6
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    const/4 v1, 0x1

    const-string v2, "crashInfos.txt"

    const-string v3, "utf-8"

    .line 1697
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/ak;-><init>(BLjava/lang/String;[B)V

    const-string p1, "attach crash infos"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1698
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1699
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 1701
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1702
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_27
    return-void
.end method

.method private static d(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_78

    .line 1078
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_78

    .line 1082
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in "

    .line 1083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/a;

    .line 1085
    iget-wide v3, v1, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 1087
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ")"

    .line 1088
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1090
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1092
    :try_start_4d
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v3

    const-string v4, "t_cr"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I

    move-result p0

    const-string v0, "deleted %s data %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "t_cr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1094
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_4d .. :try_end_6d} :catchall_6e

    return-void

    :catchall_6e
    move-exception p0

    .line 1096
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 1097
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_78
    :goto_78
    return-void
.end method

.method private static e(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_6d

    .line 1133
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6d

    .line 1137
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    const-string v2, " or _id"

    .line 1139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1142
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3d

    const/4 v1, 0x4

    .line 1144
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3d
    move-object v2, p0

    const/4 p0, 0x0

    .line 1146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1147
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I

    move-result v0

    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t_cr"

    aput-object v3, v2, p0

    const/4 p0, 0x1

    .line 1149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_2 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception p0

    .line 1151
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 1152
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6d
    :goto_6d
    return-void
.end method

.method private static f(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 850
    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 851
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1a

    const-string v4, "_id"

    .line 852
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1a
    const-string v2, "_tm"

    .line 854
    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_s1"

    .line 855
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_up"

    .line 856
    iget-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_me"

    .line 857
    iget-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_45

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_uc"

    .line 858
    iget v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_dt"

    .line 859
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_62

    return-object v1

    :catchall_62
    move-exception p0

    .line 862
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 863
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6c
    return-object v0
.end method

.method private static g(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    .line 1571
    :try_start_2
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/b;->g:Ljava/util/Map;

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_24

    const-string v1, "crash type error! %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1573
    iget p0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 1576
    :cond_24
    iget-boolean p0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz p0, :cond_2d

    .line 1577
    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1579
    :cond_2d
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    .line 1582
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method private static h(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ai;",
            ">;"
        }
    .end annotation

    .line 1593
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_54

    .line 1596
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1597
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1598
    new-instance v2, Lcom/tencent/bugly/proguard/ai;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/ai;-><init>()V

    .line 1599
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ai;->a:Ljava/lang/String;

    .line 1600
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ai;->b:Ljava/lang/String;

    .line 1601
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/bugly/proguard/ai;->c:Ljava/lang/String;

    .line 1602
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_53
    return-object v0

    :cond_54
    :goto_54
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 500
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_16

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "have not synced remote!"

    .line 502
    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2

    .line 506
    :cond_16
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    if-nez v1, :cond_29

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    .line 507
    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    .line 510
    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2

    .line 516
    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 517
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->b()J

    move-result-wide v6

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 520
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v3, "Size of crash list loaded from DB: %s"

    invoke-static {v3, v8}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 522
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_4e

    return-object v2

    .line 526
    :cond_4e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 529
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 530
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 533
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 534
    :cond_66
    :goto_66
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 535
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/bugly/crashreport/crash/a;

    .line 536
    iget-wide v10, v9, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sget-wide v12, Lcom/tencent/bugly/crashreport/crash/c;->g:J

    sub-long v12, v6, v12

    cmp-long v14, v10, v12

    if-gez v14, :cond_86

    .line 537
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 540
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 544
    :cond_86
    iget-boolean v12, v9, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    const-wide/32 v13, 0x5265c00

    if-eqz v12, :cond_a2

    sub-long v12, v4, v13

    cmp-long v14, v10, v12

    if-ltz v14, :cond_97

    .line 547
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_66

    .line 549
    :cond_97
    iget-boolean v10, v9, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-nez v10, :cond_66

    .line 551
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 552
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 554
    :cond_a2
    iget v12, v9, Lcom/tencent/bugly/crashreport/crash/a;->f:I

    int-to-long v13, v12

    const-wide/16 v15, 0x3

    cmp-long v12, v13, v15

    if-ltz v12, :cond_66

    const-wide/32 v12, 0x5265c00

    sub-long v12, v4, v12

    cmp-long v14, v10, v12

    if-gez v14, :cond_66

    .line 557
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 558
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 561
    :cond_bb
    invoke-direct {v0, v3}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/List;)V

    .line 563
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c7

    .line 564
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/b;->d(Ljava/util/List;)V

    .line 568
    :cond_c7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 569
    invoke-direct {v0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_fd

    .line 570
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_fd

    .line 572
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    .line 573
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 574
    :cond_e2
    :goto_e2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 575
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 576
    iget-object v6, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e2

    .line 577
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 578
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e2

    .line 582
    :cond_fd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_106

    .line 583
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/b;->e(Ljava/util/List;)V

    :cond_106
    return-object v1
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    .registers 13

    .line 647
    sget-boolean p2, Lcom/tencent/bugly/crashreport/crash/c;->l:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_26

    new-array p2, p3, [Ljava/lang/Object;

    const-string v0, "try to upload right now"

    .line 648
    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 649
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 650
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0xbb8

    .line 653
    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1e

    const/4 p3, 0x1

    const/4 v6, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v6, 0x0

    :goto_1f
    move-object v1, p0

    move v5, p4

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;JZZZ)V

    return-void

    :cond_26
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "do not upload spot crash right now, crash would be uploaded when app next start"

    .line 656
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;JZZZ)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;JZZZ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 671
    iget-object v0, v7, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    const/4 v8, 0x0

    if-nez v0, :cond_15

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "warn: not upload process"

    .line 673
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 676
    :cond_15
    iget-object v0, v7, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/v;

    if-nez v0, :cond_21

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "warn: upload manager is null"

    .line 677
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_21
    if-nez p6, :cond_33

    .line 680
    sget v1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/v;->b(I)Z

    move-result v0

    if-nez v0, :cond_33

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "warn: not crashHappen or not should upload"

    .line 682
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 685
    :cond_33
    iget-object v0, v7, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 686
    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    if-nez v1, :cond_4c

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "remote report is disable!"

    .line 687
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "[crash] server closed bugly in this app. please check your appid if is correct, and re-install it"

    .line 688
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_4c
    if-eqz p1, :cond_2b5

    .line 693
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_56

    goto/16 :goto_2b5

    :cond_56
    const/4 v9, 0x1

    .line 698
    :try_start_57
    iget-object v13, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    .line 699
    sget-object v14, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    .line 700
    iget-object v0, v7, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    .line 702
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_23e

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_23e

    if-nez v1, :cond_6e

    goto/16 :goto_23e

    :cond_6e
    new-instance v3, Lcom/tencent/bugly/proguard/am;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/am;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/tencent/bugly/proguard/am;->a:Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget-object v6, v3, Lcom/tencent/bugly/proguard/am;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_227

    new-instance v10, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v10}, Lcom/tencent/bugly/proguard/al;-><init>()V

    invoke-static {v5}, Lcom/tencent/bugly/crashreport/crash/b;->g(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->a:Ljava/lang/String;

    iget-wide v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v11, v10, Lcom/tencent/bugly/proguard/al;->b:J

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->c:Ljava/lang/String;

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->e:Ljava/lang/String;

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->g:Ljava/lang/String;

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->h:Ljava/util/Map;

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->i:Ljava/lang/String;

    iput-object v2, v10, Lcom/tencent/bugly/proguard/al;->j:Lcom/tencent/bugly/proguard/aj;

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->l:Ljava/lang/String;

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->m:Ljava/lang/String;

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->f:Ljava/lang/String;

    iput-object v2, v10, Lcom/tencent/bugly/proguard/al;->n:Lcom/tencent/bugly/proguard/ai;

    invoke-static {v5}, Lcom/tencent/bugly/crashreport/crash/b;->h(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->p:Ljava/util/ArrayList;

    const-string v11, "libInfo %s"

    new-array v12, v9, [Ljava/lang/Object;

    iget-object v15, v10, Lcom/tencent/bugly/proguard/al;->o:Ljava/util/ArrayList;

    aput-object v15, v12, v8

    invoke-static {v11, v12}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v11, v5}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/ArrayList;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    iget-object v12, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v12, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v12, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Y:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v12, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Z:Ljava/lang/String;

    invoke-static {v11, v12, v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v12, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    invoke-static {v11, v12}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/ArrayList;[B)V

    invoke-static {v11, v5, v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/ArrayList;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Landroid/content/Context;)V

    invoke-static {v11, v5, v0}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/ArrayList;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Landroid/content/Context;)V

    iget-object v12, v1, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/util/List;

    invoke-static {v11, v12}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    iget-object v12, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:[B

    invoke-static {v11, v12}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/ArrayList;[B)V

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->q:Ljava/util/ArrayList;

    iget-boolean v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v11, :cond_113

    iget v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    iput v11, v10, Lcom/tencent/bugly/proguard/al;->k:I

    :cond_113
    invoke-static {v5, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/crashreport/common/info/a;)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->r:Ljava/util/Map;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v10, Lcom/tencent/bugly/proguard/al;->s:Ljava/util/Map;

    iget-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    if-eqz v11, :cond_144

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_144

    iget-object v11, v10, Lcom/tencent/bugly/proguard/al;->s:Ljava/util/Map;

    iget-object v12, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v11, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v11, "setted message size %d"

    new-array v12, v9, [Ljava/lang/Object;

    iget-object v15, v10, Lcom/tencent/bugly/proguard/al;->s:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v8

    invoke-static {v11, v12}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_144
    iget-object v11, v10, Lcom/tencent/bugly/proguard/al;->s:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "pss:"

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v3

    iget-wide v2, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:J

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " vss:"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:J

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " javaHeap:"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:J

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "SDK_UPLOAD_U1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v10

    iget-wide v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SDK_UPLOAD_U2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SDK_UPLOAD_U3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d"

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    aput-object v9, v3, v8

    iget-object v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v3, v10

    const/4 v9, 0x2

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    iget-wide v10, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:J

    sub-long/2addr v10, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v3, v9

    const/4 v8, 0x4

    iget-boolean v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x5

    iget-boolean v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x6

    iget-boolean v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x7

    iget v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1f2

    const/4 v10, 0x1

    goto :goto_1f3

    :cond_1f2
    const/4 v10, 0x0

    :goto_1f3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v3, v8

    const/16 v8, 0x8

    iget v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    const/16 v8, 0x9

    iget-object v9, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    aput-object v9, v3, v8

    const/16 v8, 0xa

    iget-boolean v5, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v8

    const/16 v5, 0xb

    move-object v8, v12

    iget-object v9, v8, Lcom/tencent/bugly/proguard/al;->r:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v10, v8

    goto :goto_231

    :cond_227
    move-object v15, v3

    const-string v2, "enExp args == null"

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v10, 0x0

    :goto_231
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v15

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_7e

    :cond_23a
    move-object v15, v3

    move-object v2, v15

    const/4 v1, 0x0

    goto :goto_247

    :cond_23e
    :goto_23e
    const-string v0, "enEXPPkg args == null!"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_247
    if-nez v2, :cond_251

    const-string v0, "create eupPkg fail!"

    new-array v2, v1, [Ljava/lang/Object;

    .line 704
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 707
    :cond_251
    invoke-static {v2}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/proguard/j;)[B

    move-result-object v0

    if-nez v0, :cond_260

    const-string v0, "send encode fail!"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 709
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 712
    :cond_260
    iget-object v1, v7, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    const/16 v2, 0x33e

    invoke-static {v1, v2, v0}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/an;

    move-result-object v12

    if-nez v12, :cond_273

    const-string v0, "request package is null."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 714
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 717
    :cond_273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 718
    new-instance v15, Lcom/tencent/bugly/crashreport/crash/b$6;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/crash/b$6;-><init>(Lcom/tencent/bugly/crashreport/crash/b;JLjava/util/List;Z)V

    if-eqz p4, :cond_291

    .line 734
    iget-object v10, v7, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/v;

    sget v11, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    move-wide/from16 v16, p2

    move/from16 v18, p5

    invoke-virtual/range {v10 .. v18}, Lcom/tencent/bugly/proguard/v;->a(ILcom/tencent/bugly/proguard/an;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/u;JZ)V

    goto :goto_2b4

    .line 737
    :cond_291
    iget-object v10, v7, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/v;

    sget v11, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/tencent/bugly/proguard/v;->a(ILcom/tencent/bugly/proguard/an;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/u;Z)V
    :try_end_29a
    .catchall {:try_start_57 .. :try_end_29a} :catchall_29b

    return-void

    :catchall_29b
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 740
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "req cr error %s"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 741
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2b4

    .line 742
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2b4
    :goto_2b4
    return-void

    :cond_2b5
    :goto_2b5
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "warn: crashList is null or crashList num is 0"

    .line 694
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    .registers 2

    .line 299
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    .registers 19

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "CrashBean is null, won\'t handle."

    .line 309
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v2

    .line 312
    :cond_e
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    sget-object v4, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Crash filter for crash stack is: %s"

    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget-object v4, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "This crash contains the filter string set. It will not be record and upload."

    invoke-static {v4, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    if-eqz v0, :cond_3a

    return v2

    .line 315
    :cond_3a
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    return v2

    .line 320
    :cond_43
    iget v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_71

    new-instance v0, Lcom/tencent/bugly/proguard/q;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/q;-><init>()V

    iput v2, v0, Lcom/tencent/bugly/proguard/q;->b:I

    iget-object v5, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/bugly/proguard/q;->c:Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/bugly/proguard/q;->d:Ljava/lang/String;

    iget-wide v5, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v5, v0, Lcom/tencent/bugly/proguard/q;->e:J

    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/tencent/bugly/proguard/o;->b(I)V

    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/q;)Z

    new-array v0, v3, [Ljava/lang/Object;

    const-string v5, "[crash] a crash occur, handling..."

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_78

    :cond_71
    new-array v0, v3, [Ljava/lang/Object;

    const-string v5, "[crash] a caught exception occur, handling..."

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 322
    :goto_78
    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v5

    .line 323
    new-instance v6, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_101

    .line 324
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_101

    .line 326
    invoke-static {v5}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 328
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v7, v0

    const-wide/16 v9, 0x14

    cmp-long v0, v7, v9

    if-lez v0, :cond_f8

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SELECT _id"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " FROM t_cr"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " order by _id"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " limit 5"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :try_start_cf
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v8

    const-string v9, "t_cr"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I

    move-result v0

    const-string v7, "deleted first record %s data %d"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "t_cr"

    aput-object v8, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v7, v4}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_ed
    .catchall {:try_start_cf .. :try_end_ed} :catchall_ee

    goto :goto_f8

    :catchall_ee
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_f8

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f8
    :goto_f8
    move-object/from16 v4, p0

    .line 333
    invoke-direct {v4, v1, v5, v6}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_103

    return v2

    :cond_101
    move-object/from16 v4, p0

    .line 338
    :cond_103
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/bugly/crashreport/crash/b;->e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 339
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/b;->j:Ljava/util/Map;

    iget v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_133

    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    new-instance v2, Lcom/tencent/bugly/proguard/t$c;

    iget-object v8, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iget-wide v10, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const-string v15, "realtime"

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/tencent/bugly/proguard/t$c;-><init>(Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/t;->a(Lcom/tencent/bugly/proguard/t$c;)V

    .line 340
    :cond_133
    invoke-static {v6}, Lcom/tencent/bugly/crashreport/crash/b;->d(Ljava/util/List;)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "[crash] save crash success"

    .line 342
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v3
.end method

.method public final c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .registers 3

    .line 615
    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    goto :goto_2c

    .line 617
    :cond_b
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/c;->r()Z

    move-result p1

    if-nez p1, :cond_2c

    return-void

    .line 627
    :cond_16
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/c;->q()Z

    move-result p1

    if-nez p1, :cond_2c

    return-void

    .line 622
    :cond_21
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/c;->q()Z

    move-result p1

    if-nez p1, :cond_2c

    return-void

    .line 633
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/proguard/n;

    if-eqz p1, :cond_38

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Calling \'onCrashHandleEnd\' of RQD crash listener."

    .line 634
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_38
    return-void
.end method

.method public final d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 801
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/BuglyStrategy$a;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/proguard/n;

    if-nez v0, :cond_c

    return-void

    .line 804
    :cond_c
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/b$a;

    invoke-static {v1, p1}, Lcom/tencent/bugly/crashreport/crash/b$a;->a(Lcom/tencent/bugly/crashreport/crash/b$a;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/b$a;->a()Z

    move-result v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-nez v0, :cond_35

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Should not call back."

    .line 805
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_35
    const/4 v0, 0x1

    .line 809
    :try_start_36
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/b;->i:Ljava/util/Map;

    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot get crash type for crashBean type:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 813
    :cond_5a
    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 814
    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 815
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/proguard/n;

    const/4 v4, 0x0

    if-eqz v3, :cond_92

    const-string v3, "Calling \'onCrashHandleStart\' of RQD crash listener."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "Calling \'getCrashExtraMessage\' of RQD crash listener."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/proguard/n;

    invoke-interface {v3}, Lcom/tencent/bugly/proguard/n;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_aa

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v6, "userData"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ab

    :cond_92
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/BuglyStrategy$a;

    if-eqz v3, :cond_aa

    const-string v3, "Calling \'onCrashHandleStart\' of Bugly crash listener."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/BuglyStrategy$a;

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v3, v1, v5, v6, v7}, Lcom/tencent/bugly/BuglyStrategy$a;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_ab

    :cond_aa
    move-object v5, v4

    .line 821
    :goto_ab
    invoke-static {p1, v5}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/util/Map;)V

    const-string v3, "[crash callback] start user\'s callback:onCrashHandleStart2GetExtraDatas()"

    new-array v5, v2, [Ljava/lang/Object;

    .line 823
    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 826
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/proguard/n;

    if-eqz v3, :cond_c7

    const-string v1, "Calling \'getCrashExtraData\' of RQD crash listener."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/proguard/n;

    invoke-interface {v1}, Lcom/tencent/bugly/proguard/n;->a()[B

    move-result-object v4

    goto :goto_de

    :cond_c7
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/BuglyStrategy$a;

    if-eqz v3, :cond_de

    const-string v3, "Calling \'onCrashHandleStart2GetExtraDatas\' of Bugly crash listener."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/BuglyStrategy$a;

    iget-object v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/tencent/bugly/BuglyStrategy$a;->onCrashHandleStart2GetExtraDatas(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    :cond_de
    :goto_de
    if-nez v4, :cond_e8

    const-string p1, "extra user byte is null. CrashBean won\'t have userExtraByteDatas."

    new-array v1, v2, [Ljava/lang/Object;

    .line 828
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_11a

    :cond_e8
    array-length v1, v4

    const v3, 0x186a0

    if-gt v1, v3, :cond_f1

    iput-object v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:[B

    goto :goto_10c

    :cond_f1
    const-string v1, "extra bytes size %d is over limit %d will drop over part"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:[B

    :goto_10c
    const-string p1, "add extra bytes %d "

    new-array v1, v0, [Ljava/lang/Object;

    array-length v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 830
    :goto_11a
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/proguard/n;

    if-eqz p1, :cond_134

    const-string p1, "Calling \'onCrashSaving\' of RQD crash listener."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/proguard/n;

    invoke-interface {p1}, Lcom/tencent/bugly/proguard/n;->c()Z

    move-result p1

    if-nez p1, :cond_134

    const-string p1, "Crash listener \'onCrashSaving\' return \'false\' thus will not handle this crash."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_134
    .catchall {:try_start_36 .. :try_end_134} :catchall_135

    :cond_134
    return-void

    :catchall_135
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 833
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "crash handle callback something wrong! %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 834
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_150

    .line 835
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_150
    return-void
.end method

.method public final e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 902
    :cond_3
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/b;->f(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 904
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "t_cr"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;Z)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_27

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "insert %s success!"

    .line 906
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 907
    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    :cond_27
    return-void
.end method
