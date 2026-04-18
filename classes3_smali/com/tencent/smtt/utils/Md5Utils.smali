.class public Lcom/tencent/smtt/utils/Md5Utils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_7} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_7} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_a
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_13

    :catchall_8
    move-exception p0

    goto :goto_3b

    :catch_a
    move-object v2, v0

    goto :goto_46

    :catch_c
    move-object v2, v0

    goto :goto_51

    :catch_e
    move-exception v1

    :try_start_f
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v1, v0

    :goto_13
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_18} :catch_c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_a
    .catchall {:try_start_f .. :try_end_18} :catchall_8

    const/16 p0, 0x2000

    :try_start_1a
    new-array p0, p0, [B

    :goto_1c
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1c

    :cond_28
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/ByteUtils;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_30} :catch_51
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_30} :catch_46
    .catchall {:try_start_1a .. :try_end_30} :catchall_39

    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_38
    return-object p0

    :catchall_39
    move-exception p0

    move-object v0, v2

    :goto_3b
    if-eqz v0, :cond_45

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_45
    :goto_45
    throw p0

    :catch_46
    :goto_46
    if-eqz v2, :cond_50

    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_50
    :goto_50
    return-object v0

    :catch_51
    :goto_51
    if-eqz v2, :cond_5b

    :try_start_53
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/ByteUtils;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    return-object v0
.end method

.method public static getMD5(Ljava/io/InputStream;)[B
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    :try_start_3
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    if-eqz v1, :cond_20

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_f
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_f

    :cond_1b
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_20

    move-object v0, p0

    :catchall_20
    :cond_20
    return-object v0
.end method

.method public static getMD5([B)[B
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    const/4 p0, 0x0

    return-object p0
.end method
