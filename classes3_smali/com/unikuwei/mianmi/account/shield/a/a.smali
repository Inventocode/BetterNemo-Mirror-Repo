.class public Lcom/unikuwei/mianmi/account/shield/a/a;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "-"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_28

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_28
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "0000000000000000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljava/lang/String;

    const-string v2, "QUVTL0NCQy9QS0NTNVBhZGRpbmc="

    invoke-static {v2}, Lcom/unikuwei/mianmi/account/shield/a/b;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/a/c;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_36} :catch_50
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_36} :catch_4b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_36} :catch_46
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_36} :catch_41
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_36} :catch_3c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_36} :catch_37

    return-object p1

    :catch_37
    move-exception p0

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_54

    :catch_3c
    move-exception p0

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_54

    :catch_41
    move-exception p0

    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_54

    :catch_46
    move-exception p0

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_54

    :catch_4b
    move-exception p0

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_54

    :catch_50
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_54
    const/4 p0, 0x0

    return-object p0
.end method
