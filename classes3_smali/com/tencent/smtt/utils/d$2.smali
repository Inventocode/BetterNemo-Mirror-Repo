.class final Lcom/tencent/smtt/utils/d$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/utils/d;->a(Ljava/lang/String;Lcom/tencent/smtt/utils/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/smtt/utils/d$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/tencent/smtt/utils/d$a;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/utils/d$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/utils/d$2;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://soft.tbs.imtt.qq.com/17421/tbs_res_imtt_tbs_DebugPlugin_DebugPlugin.tbs"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_60
    .catchall {:try_start_1 .. :try_end_1e} :catchall_5d

    :try_start_1e
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/smtt/utils/d$2;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/smtt/utils/FileUtil;->d(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    const/16 v3, 0x2000

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2f
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_42

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    mul-int/lit8 v6, v5, 0x64

    div-int/2addr v6, v2

    iget-object v7, p0, Lcom/tencent/smtt/utils/d$2;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-interface {v7, v6}, Lcom/tencent/smtt/utils/d$a;->a(I)V

    goto :goto_2f

    :cond_42
    iget-object v2, p0, Lcom/tencent/smtt/utils/d$2;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-interface {v2}, Lcom/tencent/smtt/utils/d$a;->a()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_47} :catch_58
    .catchall {:try_start_1e .. :try_end_47} :catchall_53

    :try_start_47
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_76

    goto :goto_7a

    :catchall_53
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_7c

    :catch_58
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_62

    :catchall_5d
    move-exception v2

    move-object v1, v0

    goto :goto_7c

    :catch_60
    move-exception v2

    move-object v1, v0

    :goto_62
    :try_start_62
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, Lcom/tencent/smtt/utils/d$2;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-interface {v3, v2}, Lcom/tencent/smtt/utils/d$a;->a(Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_7b

    :try_start_6a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_72
    :try_start_72
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_7a

    :catch_76
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7a
    return-void

    :catchall_7b
    move-exception v2

    :goto_7c
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_84
    :try_start_84
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8c
    throw v2
.end method
