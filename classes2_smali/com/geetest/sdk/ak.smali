.class public final Lcom/geetest/sdk/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 17
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a([B[B[B)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    const-class v1, [B

    const-string v2, "amF2YXguY3J5cHRvLnNwZWMuSXZQYXJhbWV0ZXJTcGVj"

    .line 1
    invoke-static {v2}, Lcom/geetest/sdk/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 2
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v5

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "amF2YXguY3J5cHRvLnNwZWMuU2VjcmV0S2V5U3BlYw=="

    .line 5
    invoke-static {v2}, Lcom/geetest/sdk/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v1, v6, v5

    aput-object v0, v6, v3

    .line 6
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v5

    const-string p1, "AES"

    aput-object p1, v6, v3

    .line 7
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "amF2YXguY3J5cHRvLkNpcGhlcg=="

    .line 9
    invoke-static {v2}, Lcom/geetest/sdk/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v5

    const-string v0, "getInstance"

    .line 10
    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "AES/CBC/PKCS5Padding"

    aput-object v7, v6, v5

    .line 11
    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    .line 12
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    const-class v8, Ljava/security/Key;

    aput-object v8, v7, v3

    const-class v8, Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v8, v7, v4

    const-string v8, "init"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    aput-object p1, v6, v3

    aput-object p2, v6, v4

    invoke-virtual {v7, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v3, [Ljava/lang/Class;

    aput-object v1, p1, v5

    const-string p2, "doFinal"

    .line 15
    invoke-virtual {v2, p2, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v5

    .line 16
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static b([B[B[B)Ljava/lang/String;
    .registers 7

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/geetest/sdk/ak;->a([B[B[B)[B

    move-result-object p0

    .line 2
    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p0

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v1, p2

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length p2, p2

    array-length p1, p1

    add-int/2addr p2, p1

    array-length p1, p0

    invoke-static {p0, v2, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
