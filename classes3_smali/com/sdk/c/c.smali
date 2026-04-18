.class public Lcom/sdk/c/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/c/c;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p3

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8b

    int-to-long v9, v2

    const/4 v8, 0x1

    move-object/from16 v2, p2

    check-cast v2, Lcom/sdk/a/c;

    const-wide/16 v11, 0x0

    move-object v3, v2

    move-wide v4, v9

    move-wide v6, v11

    :try_start_12
    invoke-virtual/range {v3 .. v8}, Lcom/sdk/a/c;->a(JJZ)Z

    move-result v3

    if-nez v3, :cond_19

    return-object v1

    :cond_19
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_8b

    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v14, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2c
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_81

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_43

    goto :goto_71

    :cond_43
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0x64

    if-ge v4, v7, :cond_52

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v5, v3

    goto :goto_71

    :cond_52
    const/4 v7, 0x0

    :goto_53
    if-ge v7, v4, :cond_71

    add-int/lit8 v8, v7, 0x64

    if-ge v8, v4, :cond_5b

    move v15, v8

    goto :goto_5c

    :cond_5b
    move v15, v4

    :goto_5c
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v0, v1

    add-long/2addr v5, v0

    move-object/from16 v0, p3

    move v7, v8

    const/4 v1, 0x0

    goto :goto_53

    :cond_71
    :goto_71
    add-long/2addr v11, v5

    const/4 v8, 0x0

    move-object v3, v2

    move-wide v4, v9

    move-wide v6, v11

    invoke-virtual/range {v3 .. v8}, Lcom/sdk/a/c;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_7d

    goto :goto_81

    :cond_7d
    move-object/from16 v0, p3

    const/4 v1, 0x0

    goto :goto_2c

    :cond_81
    :goto_81
    move-wide v6, v11

    const/4 v8, 0x1

    move-object v3, v2

    move-wide v4, v9

    invoke-virtual/range {v3 .. v8}, Lcom/sdk/a/c;->a(JJZ)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_88} :catch_89

    goto :goto_98

    :catch_89
    move-exception v0

    goto :goto_8d

    :catch_8b
    move-exception v0

    const/4 v13, 0x0

    :goto_8d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sdk/c/c;->a:Ljava/lang/Boolean;

    const-string v2, "StringDownloadHandler"

    invoke-static {v2, v0, v1}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_98
    if-nez v13, :cond_9c

    const/4 v1, 0x0

    goto :goto_a4

    :cond_9c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_a4
    return-object v1
.end method
