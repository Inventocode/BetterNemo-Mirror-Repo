.class final Lcom/tencent/smtt/sdk/stat/b$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/stat/b;->a(LMTT/ThirdAppInfoNew;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:LMTT/ThirdAppInfoNew;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;LMTT/ThirdAppInfoNew;)V
    .registers 4

    iput-object p2, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/stat/b$1;->b:LMTT/ThirdAppInfoNew;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget-object v0, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/stat/b$1;->b:LMTT/ThirdAppInfoNew;

    iget-object v1, v1, LMTT/ThirdAppInfoNew;->sGuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/stat/b$1;->b:LMTT/ThirdAppInfoNew;

    invoke-static {}, Lcom/tencent/smtt/utils/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LMTT/ThirdAppInfoNew;->sCpu:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    return-void

    :cond_18
    sget-object v0, Lcom/tencent/smtt/sdk/stat/b;->a:[B

    const/4 v1, 0x0

    const-string v2, "utf-8"

    const-string v3, "sdkreport"

    if-nez v0, :cond_31

    :try_start_21
    const-string v0, "65dRa93L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/stat/b;->a:[B
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_29} :catch_2a

    goto :goto_31

    :catch_2a
    sput-object v1, Lcom/tencent/smtt/sdk/stat/b;->a:[B

    const-string v0, "Post failed -- get POST_DATA_KEY failed!"

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_31
    sget-object v0, Lcom/tencent/smtt/sdk/stat/b;->a:[B

    if-nez v0, :cond_3b

    const-string v0, "Post failed -- POST_DATA_KEY is null!"

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_deskey_token"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_6b

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    :cond_6b
    move-object v0, v5

    move-object v8, v0

    :goto_6d
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v9, 0x60

    if-ne v4, v9, :cond_8c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v9, 0x18

    if-eq v4, v9, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 v4, 0x0

    goto :goto_8d

    :cond_8c
    :goto_8c
    const/4 v4, 0x1

    :goto_8d
    :try_start_8d
    invoke-static {}, Lcom/tencent/smtt/utils/m;->a()Lcom/tencent/smtt/utils/m;

    move-result-object v9

    if-eqz v4, :cond_af

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/tencent/smtt/utils/m;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/smtt/utils/g;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c2

    :cond_af
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/tencent/smtt/utils/m;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_c2
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    const-string v9, "POST"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_d2} :catch_219
    .catch Ljava/lang/AssertionError; {:try_start_8d .. :try_end_d2} :catch_203
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8d .. :try_end_d2} :catch_1ed

    invoke-virtual {v8, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v8, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v6, 0x4e20

    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-le v6, v7, :cond_ed

    const-string v6, "Connection"

    const-string v7, "close"

    invoke-virtual {v8, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ed
    :try_start_ed
    iget-object v6, p0, Lcom/tencent/smtt/sdk/stat/b$1;->b:LMTT/ThirdAppInfoNew;

    iget-object v7, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/tencent/smtt/sdk/stat/b;->b(LMTT/ThirdAppInfoNew;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f5} :catch_f6

    goto :goto_fa

    :catch_f6
    move-exception v6

    invoke-static {v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :goto_fa
    if-nez v1, :cond_102

    const-string v0, "post -- jsonData is null!"

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_102
    :try_start_102
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v4, :cond_115

    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/tencent/smtt/utils/g;->a([B)[B

    move-result-object v2

    goto :goto_119

    :cond_115
    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/g;->a([BLjava/lang/String;)[B

    move-result-object v2
    :try_end_119
    .catchall {:try_start_102 .. :try_end_119} :catchall_1ec

    :goto_119
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v8, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Content-Length"

    invoke-virtual {v8, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x7e

    :try_start_12c
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v7, 0xc8

    if-ne v2, v7, :cond_171

    const-string v2, "Post successful!"

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIGNATURE is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SIGNATURE"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v0, v4}, Lcom/tencent/smtt/sdk/stat/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/smtt/sdk/stat/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->clearUploadCode()V

    return-void

    :cond_171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Post failed -- not 200 code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    :try_end_1b7
    .catchall {:try_start_12c .. :try_end_1b7} :catchall_1b8

    return-void

    :catchall_1b8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post failed -- exceptions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/stat/b$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :catchall_1ec
    return-void

    :catch_1ed
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post failed -- NoClassDefFoundError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_203
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post failed -- AssertionError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_219
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post failed -- IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
