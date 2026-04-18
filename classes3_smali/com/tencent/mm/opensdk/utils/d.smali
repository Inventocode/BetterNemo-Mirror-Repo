.class public final Lcom/tencent/mm/opensdk/utils/d;
.super Ljava/lang/Object;


# static fields
.field public static D:Landroid/content/Context;

.field private static final E:I

.field private static final F:I

.field private static final G:I

.field public static H:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tencent/mm/opensdk/utils/d;->E:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/tencent/mm/opensdk/utils/d;->F:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    sput v3, Lcom/tencent/mm/opensdk/utils/d;->G:I

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/tencent/mm/opensdk/utils/d;->H:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .registers 6

    const-string v0, "MicroMsg.SDK.Util"

    const-string v1, "getFileSize with content url"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_46

    if-nez p1, :cond_d

    goto :goto_46

    :cond_d
    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_24
    .catchall {:try_start_e .. :try_end_12} :catchall_22

    if-nez v2, :cond_1a

    if-eqz v2, :cond_19

    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return v1

    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_24
    .catchall {:try_start_1a .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    return p0

    :catchall_22
    move-exception p0

    goto :goto_40

    :catch_24
    move-exception p0

    :try_start_25
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "getFileSize fail, "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_22

    if-eqz v2, :cond_3f

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    return v1

    :goto_40
    if-eqz v2, :cond_45

    :try_start_42
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_45

    :catch_45
    :cond_45
    throw p0

    :cond_46
    :goto_46
    const-string p0, "getFileSize fail, resolver or uri is null"

    invoke-static {v0, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static a(I)Z
    .registers 2

    const/16 v0, 0x24

    if-eq p0, v0, :cond_b

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_f

    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    return p0

    :catch_f
    :cond_f
    :goto_f
    return v0
.end method

.method public static getFileSize(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_37

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_31

    sget-object v1, Lcom/tencent/mm/opensdk/utils/d;->D:Landroid/content/Context;

    if-eqz v1, :cond_30

    const-string v1, "content"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    :try_start_21
    sget-object v1, Lcom/tencent/mm/opensdk/utils/d;->D:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/mm/opensdk/utils/d;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_30

    return p0

    :catch_30
    :cond_30
    return v0

    :cond_31
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_37
    :goto_37
    return v0
.end method
