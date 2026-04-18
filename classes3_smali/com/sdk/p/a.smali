.class public Lcom/sdk/p/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field public static b:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/p/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 8

    :try_start_0
    new-instance v0, Lcom/sdk/h/a;

    invoke-direct {v0}, Lcom/sdk/h/a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v1, v3}, Ljava/lang/String;->getBytes(II[BI)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_4c

    :goto_22
    const/16 p0, 0x48

    const/4 v4, 0x0

    :goto_25
    add-int/lit8 v5, v4, 0x4

    const/4 v6, 0x4

    if-ge v5, p0, :cond_2f

    :try_start_2a
    invoke-virtual {v0, v2, v1, v6}, Lcom/sdk/h/a;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    move v4, v5

    goto :goto_25

    :cond_2f
    if-ne v5, p0, :cond_32

    goto :goto_34

    :cond_32
    rsub-int/lit8 v6, v4, 0x48

    :goto_34
    invoke-virtual {v0, v2, v1, v6}, Lcom/sdk/h/a;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    :try_end_37
    .catch Lcom/sdk/h/c; {:try_start_2a .. :try_end_37} :catch_38
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_37} :catch_4c

    goto :goto_22

    :catch_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4b} :catch_4c

    goto :goto_59

    :catch_4c
    move-exception p0

    sget-object v0, Lcom/sdk/p/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/sdk/p/a;->b:Ljava/lang/Boolean;

    invoke-static {v0, p0, v1}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const/4 p0, 0x0

    :goto_59
    return-object p0
.end method
