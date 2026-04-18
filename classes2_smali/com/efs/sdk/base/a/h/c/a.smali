.class public final Lcom/efs/sdk/base/a/h/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_10

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/efs/sdk/base/a/h/c/a;->a:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    nop

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 3

    .line 68
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/c/a;->b([BLjava/lang/String;)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    const-string p1, "efs.base"

    const-string v0, "getBytes error"

    .line 106
    invoke-static {p1, v0, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BLjava/lang/String;)[B
    .registers 5

    .line 52
    :try_start_0
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/c/a;->a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 54
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 57
    sget-object v2, Lcom/efs/sdk/base/a/h/c/a;->a:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 58
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_1f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_14} :catch_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_14} :catch_1b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_14} :catch_19
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_14} :catch_17
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    goto :goto_20

    :catch_17
    move-exception p0

    goto :goto_20

    :catch_19
    move-exception p0

    goto :goto_20

    :catch_1b
    move-exception p0

    goto :goto_20

    :catch_1d
    move-exception p0

    goto :goto_20

    :catch_1f
    move-exception p0

    :goto_20
    const-string p1, "efs.base"

    const-string v0, "aes decrypt error"

    .line 62
    invoke-static {p1, v0, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([BLjava/lang/String;)[B
    .registers 5

    .line 80
    :try_start_0
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/c/a;->a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 82
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    sget-object v2, Lcom/efs/sdk/base/a/h/c/a;->a:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 85
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_1f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_14} :catch_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_14} :catch_1b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_14} :catch_19
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_14} :catch_17
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    goto :goto_20

    :catch_17
    move-exception p0

    goto :goto_20

    :catch_19
    move-exception p0

    goto :goto_20

    :catch_1b
    move-exception p0

    goto :goto_20

    :catch_1d
    move-exception p0

    goto :goto_20

    :catch_1f
    move-exception p0

    :goto_20
    const-string p1, "efs.base"

    const-string v0, "aes encrypt error"

    .line 89
    invoke-static {p1, v0, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
