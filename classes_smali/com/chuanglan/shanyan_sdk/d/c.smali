.class Lcom/chuanglan/shanyan_sdk/d/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/d/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/d/c;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/d/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/d/c;->c:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/d/c;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/chuanglan/shanyan_sdk/d/f;Ljava/util/Map;Lcom/chuanglan/shanyan_sdk/d/b;Ljava/lang/Boolean;Ljava/lang/String;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chuanglan/shanyan_sdk/d/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chuanglan/shanyan_sdk/d/b;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/d/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_fc
    .catchall {:try_start_1 .. :try_end_e} :catchall_f8

    :try_start_e
    invoke-virtual {v1, p6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, p7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-direct {p0, v1}, Lcom/chuanglan/shanyan_sdk/d/c;->a(Ljava/net/HttpURLConnection;)V

    sget-object p6, Lcom/chuanglan/shanyan_sdk/d/f;->a:Lcom/chuanglan/shanyan_sdk/d/f;

    if-ne p1, p6, :cond_23

    const-string p1, "GET"

    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object p2, v0

    goto/16 :goto_c5

    :cond_23
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_f3
    .catchall {:try_start_e .. :try_end_27} :catchall_ee

    const-string p4, "Content-Type"

    const-string p6, "POST"

    if-eqz p1, :cond_a8

    :try_start_2d
    invoke-virtual {v1, p6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/chuanglan/shanyan_sdk/d/c;->b(Ljava/util/Map;)[B

    move-result-object p1

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/d;->a()Ljava/lang/String;

    move-result-object p2

    const/16 p6, 0x10

    const/4 p7, 0x0

    invoke-virtual {p2, p7, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    const/4 v3, 0x1

    invoke-virtual {p5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, p7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/u;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/chuanglan/shanyan_sdk/utils/u;->a([BLjava/security/PublicKey;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p6}, Lcom/chuanglan/shanyan_sdk/utils/b;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const-string p6, "application/json"

    invoke-virtual {v1, p4, p6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "Content-Encoding"

    const-string p6, "gzip"

    invoke-virtual {v1, p4, p6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "Data-Key"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "sdkVersion"

    const-string p5, "2.3.3.9"

    invoke-virtual {v1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_97

    new-array p1, p7, [B

    invoke-virtual {p3, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a([B)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_8e} :catch_f3
    .catchall {:try_start_2d .. :try_end_8e} :catchall_ee

    :try_start_8e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_96
    return-void

    :cond_97
    :try_start_97
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9b} :catch_f3
    .catchall {:try_start_97 .. :try_end_9b} :catchall_ee

    :try_start_9b
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_a5
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a2

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_c5

    :catchall_a2
    move-exception p1

    move-object p4, v0

    goto :goto_f1

    :catch_a5
    move-exception p1

    move-object p4, v0

    goto :goto_f6

    :cond_a8
    :try_start_a8
    invoke-virtual {v1, p6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/chuanglan/shanyan_sdk/d/c;->a(Ljava/util/Map;)[B

    move-result-object p1

    const-string p2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, p4, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Length"

    array-length p4, p1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p2, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c2} :catch_f3
    .catchall {:try_start_a8 .. :try_end_c2} :catchall_ee

    :try_start_c2
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_c5
    invoke-virtual {p3, v1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/net/HttpURLConnection;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c8} :catch_ea
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_e6

    :try_start_c8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d0
    if-eqz v0, :cond_dd

    :try_start_d2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d8} :catch_d9

    goto :goto_dd

    :catch_d9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_dd
    :goto_dd
    if-eqz p2, :cond_132

    :try_start_df
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e5} :catch_12e

    goto :goto_132

    :catchall_e6
    move-exception p1

    move-object p4, p2

    move-object p2, v0

    goto :goto_f1

    :catch_ea
    move-exception p1

    move-object p4, p2

    move-object p2, v0

    goto :goto_f6

    :catchall_ee
    move-exception p1

    move-object p2, v0

    move-object p4, p2

    :goto_f1
    move-object v0, v1

    goto :goto_134

    :catch_f3
    move-exception p1

    move-object p2, v0

    move-object p4, p2

    :goto_f6
    move-object v0, v1

    goto :goto_ff

    :catchall_f8
    move-exception p1

    move-object p2, v0

    move-object p4, p2

    goto :goto_134

    :catch_fc
    move-exception p1

    move-object p2, v0

    move-object p4, p2

    :goto_ff
    :try_start_ff
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p5, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_ff .. :try_end_10e} :catchall_133

    if-eqz v0, :cond_118

    :try_start_110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_114

    goto :goto_118

    :catch_114
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_118
    :goto_118
    if-eqz p2, :cond_125

    :try_start_11a
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_120} :catch_121

    goto :goto_125

    :catch_121
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_125
    :goto_125
    if-eqz p4, :cond_132

    :try_start_127
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12d} :catch_12e

    goto :goto_132

    :catch_12e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_132
    :goto_132
    return-void

    :catchall_133
    move-exception p1

    :goto_134
    if-eqz v0, :cond_13e

    :try_start_136
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_13e

    :catch_13a
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13e
    :goto_13e
    if-eqz p2, :cond_14b

    :try_start_140
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_146} :catch_147

    goto :goto_14b

    :catch_147
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14b
    :goto_14b
    if-eqz p4, :cond_158

    :try_start_14d
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_153} :catch_154

    goto :goto_158

    :catch_154
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_158
    :goto_158
    throw p1
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 5

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/d/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_26
    return-void
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 5

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/d/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_26
    return-void
.end method

.method private a(Ljava/util/Map;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    new-array p1, v0, [B

    return-object p1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "utf-8"

    if-eqz v2, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_57

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_5b

    :cond_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5b
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/chuanglan/shanyan_sdk/d/f;Ljava/util/Map;Lcom/chuanglan/shanyan_sdk/d/b;Ljava/lang/Boolean;Ljava/lang/String;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chuanglan/shanyan_sdk/d/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chuanglan/shanyan_sdk/d/b;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/d/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_fc
    .catchall {:try_start_1 .. :try_end_e} :catchall_f8

    :try_start_e
    invoke-virtual {v1, p6}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, p7}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-direct {p0, v1}, Lcom/chuanglan/shanyan_sdk/d/c;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    sget-object p6, Lcom/chuanglan/shanyan_sdk/d/f;->a:Lcom/chuanglan/shanyan_sdk/d/f;

    if-ne p1, p6, :cond_23

    const-string p1, "GET"

    invoke-virtual {v1, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object p2, v0

    goto/16 :goto_c5

    :cond_23
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_f3
    .catchall {:try_start_e .. :try_end_27} :catchall_ee

    const-string p4, "Content-Type"

    const-string p6, "POST"

    if-eqz p1, :cond_a8

    :try_start_2d
    invoke-virtual {v1, p6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/chuanglan/shanyan_sdk/d/c;->b(Ljava/util/Map;)[B

    move-result-object p1

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/d;->a()Ljava/lang/String;

    move-result-object p2

    const/16 p6, 0x10

    const/4 p7, 0x0

    invoke-virtual {p2, p7, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    const/4 v3, 0x1

    invoke-virtual {p5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, p7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/u;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/chuanglan/shanyan_sdk/utils/u;->a([BLjava/security/PublicKey;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p6}, Lcom/chuanglan/shanyan_sdk/utils/b;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const-string p6, "application/json"

    invoke-virtual {v1, p4, p6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "Content-Encoding"

    const-string p6, "gzip"

    invoke-virtual {v1, p4, p6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "Data-Key"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p4, p5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "sdkVersion"

    const-string p5, "2.3.3.9"

    invoke-virtual {v1, p4, p5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_97

    new-array p1, p7, [B

    invoke-virtual {p3, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a([B)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_8e} :catch_f3
    .catchall {:try_start_2d .. :try_end_8e} :catchall_ee

    :try_start_8e
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_96
    return-void

    :cond_97
    :try_start_97
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9b} :catch_f3
    .catchall {:try_start_97 .. :try_end_9b} :catchall_ee

    :try_start_9b
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_a5
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a2

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_c5

    :catchall_a2
    move-exception p1

    move-object p4, v0

    goto :goto_f1

    :catch_a5
    move-exception p1

    move-object p4, v0

    goto :goto_f6

    :cond_a8
    :try_start_a8
    invoke-virtual {v1, p6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/chuanglan/shanyan_sdk/d/c;->a(Ljava/util/Map;)[B

    move-result-object p1

    const-string p2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, p4, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Length"

    array-length p4, p1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p2, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c2} :catch_f3
    .catchall {:try_start_a8 .. :try_end_c2} :catchall_ee

    :try_start_c2
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_c5
    invoke-virtual {p3, v1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljavax/net/ssl/HttpsURLConnection;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c8} :catch_ea
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_e6

    :try_start_c8
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d0
    if-eqz v0, :cond_dd

    :try_start_d2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d8} :catch_d9

    goto :goto_dd

    :catch_d9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_dd
    :goto_dd
    if-eqz p2, :cond_132

    :try_start_df
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e5} :catch_12e

    goto :goto_132

    :catchall_e6
    move-exception p1

    move-object p4, p2

    move-object p2, v0

    goto :goto_f1

    :catch_ea
    move-exception p1

    move-object p4, p2

    move-object p2, v0

    goto :goto_f6

    :catchall_ee
    move-exception p1

    move-object p2, v0

    move-object p4, p2

    :goto_f1
    move-object v0, v1

    goto :goto_134

    :catch_f3
    move-exception p1

    move-object p2, v0

    move-object p4, p2

    :goto_f6
    move-object v0, v1

    goto :goto_ff

    :catchall_f8
    move-exception p1

    move-object p2, v0

    move-object p4, p2

    goto :goto_134

    :catch_fc
    move-exception p1

    move-object p2, v0

    move-object p4, p2

    :goto_ff
    :try_start_ff
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p5, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_ff .. :try_end_10e} :catchall_133

    if-eqz v0, :cond_118

    :try_start_110
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_114

    goto :goto_118

    :catch_114
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_118
    :goto_118
    if-eqz p2, :cond_125

    :try_start_11a
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_120} :catch_121

    goto :goto_125

    :catch_121
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_125
    :goto_125
    if-eqz p4, :cond_132

    :try_start_127
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12d} :catch_12e

    goto :goto_132

    :catch_12e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_132
    :goto_132
    return-void

    :catchall_133
    move-exception p1

    :goto_134
    if-eqz v0, :cond_13e

    :try_start_136
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_13e

    :catch_13a
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13e
    :goto_13e
    if-eqz p2, :cond_14b

    :try_start_140
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_146} :catch_147

    goto :goto_14b

    :catch_147
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14b
    :goto_14b
    if-eqz p4, :cond_158

    :try_start_14d
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_153} :catch_154

    goto :goto_158

    :catch_154
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_158
    :goto_158
    throw p1
.end method

.method private b(Ljava/util/Map;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/b;->b(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Lcom/chuanglan/shanyan_sdk/d/f;Ljava/util/Map;Lcom/chuanglan/shanyan_sdk/d/b;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chuanglan/shanyan_sdk/d/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chuanglan/shanyan_sdk/d/b;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/d/c;->c:Landroid/content/Context;

    const-string v1, "initTimeOut"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0x1388

    const/16 v1, 0x61a8

    const/16 v7, 0x1388

    const/16 v8, 0x61a8

    goto :goto_26

    :cond_18
    mul-int/lit16 v0, v0, 0x3e8

    sget v1, Lcom/chuanglan/shanyan_sdk/b;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v7, v0

    move v8, v7

    :goto_26
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/d/c;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    if-eqz v0, :cond_3a

    invoke-direct/range {v1 .. v8}, Lcom/chuanglan/shanyan_sdk/d/c;->b(Lcom/chuanglan/shanyan_sdk/d/f;Ljava/util/Map;Lcom/chuanglan/shanyan_sdk/d/b;Ljava/lang/Boolean;Ljava/lang/String;II)V

    goto :goto_3d

    :cond_3a
    invoke-direct/range {v1 .. v8}, Lcom/chuanglan/shanyan_sdk/d/c;->a(Lcom/chuanglan/shanyan_sdk/d/f;Ljava/util/Map;Lcom/chuanglan/shanyan_sdk/d/b;Ljava/lang/Boolean;Ljava/lang/String;II)V

    :goto_3d
    return-void
.end method
