.class public Lcom/tencent/smtt/utils/LogFileUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeOutputStream(Ljava/io/OutputStream;)V
    .registers 3

    if-eqz p0, :cond_e

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "LOG_FILE"

    const-string v1, "Couldn\'t close stream!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_e
    return-void
.end method

.method public static createHeaderText(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/LogFileUtils;->encryptKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const-string p1, "%03d"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    array-length v1, p0

    const/4 v2, 0x3

    add-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    array-length p1, p0

    invoke-static {p0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-object v1

    :catch_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createKey()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    const-string v0, "RC4"

    const-string v1, "UTF-8"

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v3, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v2, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1e

    return-object p0

    :catchall_1e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encrypt exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LOG_FILE"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encryptKey(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    const-string v0, "RC4"

    const-string v1, "UTF-8"

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v3, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v2, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1e

    return-object p0

    :catchall_1e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encrypt exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LOG_FILE"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized writeDataToStorage(Ljava/io/File;Ljava/lang/String;[BLjava/lang/String;Z)V
    .registers 11

    const-class v0, Lcom/tencent/smtt/utils/LogFileUtils;

    monitor-enter v0

    :try_start_3
    invoke-static {p1, p3}, Lcom/tencent/smtt/utils/LogFileUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_76

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    move-object p3, v1

    goto :goto_d

    :cond_c
    move-object p1, v1

    :goto_d
    :try_start_d
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x200000

    cmp-long v5, v1, v3

    if-lez v5, :cond_31

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_31
    sget-object v1, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    if-nez v1, :cond_41

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-direct {p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object p0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    :cond_41
    if-eqz p3, :cond_4d

    sget-object p0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_67

    :cond_4d
    sget-object p0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    const/4 p1, 0x2

    new-array p1, p1, [B

    const/4 p2, 0x0

    const/16 p3, 0xa

    aput-byte p3, p1, p2

    const/4 p2, 0x1

    aput-byte p3, p1, p2

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_67
    .catchall {:try_start_d .. :try_end_67} :catchall_6f

    :goto_67
    :try_start_67
    sget-object p0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_76

    if-eqz p0, :cond_74

    :goto_6b
    :try_start_6b
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_74

    goto :goto_74

    :catchall_6f
    :try_start_6f
    sget-object p0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_76

    if-eqz p0, :cond_74

    goto :goto_6b

    :catchall_74
    :cond_74
    :goto_74
    monitor-exit v0

    return-void

    :catchall_76
    move-exception p0

    monitor-exit v0

    throw p0
.end method
