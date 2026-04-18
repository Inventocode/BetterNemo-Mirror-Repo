.class public Lcom/unikuwei/mianmi/account/shield/e/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static e:Ldalvik/system/DexClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const-string v3, "LnVuaWFjY291bnQ="

    invoke-static {v3}, Lcom/unikuwei/mianmi/account/shield/e/l;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unikuwei/mianmi/account/shield/e/h;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v2, "dW5pYWNjb3VudC5qYXI="

    invoke-static {v2}, Lcom/unikuwei/mianmi/account/shield/e/l;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/unikuwei/mianmi/account/shield/e/h;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    const-string v3, "dW5pY29tX3VwZGF0ZQ=="

    invoke-static {v3}, Lcom/unikuwei/mianmi/account/shield/e/l;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const-string v2, "dW5pYWNjb3VudF9jb3JlLmRhdA=="

    invoke-static {v2}, Lcom/unikuwei/mianmi/account/shield/e/l;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unikuwei/mianmi/account/shield/e/h;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-static {v2}, Lcom/unikuwei/mianmi/account/shield/e/l;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x0

    sput-object v0, Lcom/unikuwei/mianmi/account/shield/e/h;->e:Ldalvik/system/DexClassLoader;

    return-void
.end method

.method public static a()Ldalvik/system/DexClassLoader;
    .registers 1

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/h;->e:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "optdex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_24
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v2, p1, v1, v0, p0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/unikuwei/mianmi/account/shield/e/h;->e:Ldalvik/system/DexClassLoader;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    return-object v2

    :catch_30
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/unikuwei/mianmi/account/shield/e/h;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/16 v1, 0xf

    :try_start_7
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_13

    aget-byte v4, p0, v3

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_13
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_1a

    move-object v0, p0

    goto :goto_1e

    :catch_1a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e
    return-object v0
.end method

.method public static a(Landroid/content/Context;[B)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x10

    shr-int/lit8 v2, v1, 0x2

    shl-int/lit8 v2, v2, 0x2

    new-array v3, v2, [B

    new-array v4, v1, [B

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v2, :cond_18

    add-int/lit8 v6, v5, 0x10

    aget-byte v6, p1, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_18
    const/4 v5, 0x0

    :goto_19
    if-ge v5, v1, :cond_24

    add-int/lit8 v6, v5, 0x10

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_24
    invoke-static {v3}, Lcom/unikuwei/mianmi/account/shield/e/l;->a([B)[B

    move-result-object p1

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v2, :cond_32

    aget-byte v3, p1, v1

    aput-byte v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_32
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_44
    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_56
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    invoke-static {v4, p0}, Lcom/unikuwei/mianmi/account/shield/e/b;->a([BLjava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_5e

    const/4 p0, 0x1

    return p0

    :catch_5e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/b;->a(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/unikuwei/mianmi/account/shield/e/h;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/f;->a(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;[B)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_12
    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_24
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-static {p1, p0}, Lcom/unikuwei/mianmi/account/shield/e/b;->a([BLjava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unikuwei/mianmi/account/shield/e/b;->a(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/unikuwei/mianmi/account/shield/e/h;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " result:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/f;->a(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_45
    :goto_45
    return-void
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/unikuwei/mianmi/account/shield/e/h;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
