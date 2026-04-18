.class public final Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;
.super Ljava/lang/Object;
.source "DownloadFileUtils.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/DownloadFileUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadFileUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadFileUtils.kt\ncom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"
.end annotation


# instance fields
.field final synthetic $onFailed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onProgress:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $savePath:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$onFailed:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$savePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$onProgress:Lkotlin/jvm/functions/Function3;

    iput-object p5, p0, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    invoke-static {}, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->access$getCallList$p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$onFailed:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1b

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "call"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "response"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->access$getCallList$p()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 42
    new-instance v2, Ljava/io/File;

    iget-object v4, v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$savePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2b
    const/4 v2, 0x0

    .line 48
    :try_start_2c
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_dd

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_e2
    .catchall {:try_start_2c .. :try_end_36} :catchall_de

    if-nez v4, :cond_3a

    goto/16 :goto_dd

    .line 49
    :cond_3a
    :try_start_3a
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    goto :goto_47

    :cond_45
    const-wide/16 v7, 0x0

    .line 50
    :goto_47
    new-instance v3, Ljava/io/File;

    iget-object v9, v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$savePath:Ljava/lang/String;

    iget-object v15, v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$url:Ljava/lang/String;

    const-string v11, "/"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/16 v16, 0x0

    move-object v10, v15

    move-object v5, v15

    move-object/from16 v15, v16

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 52
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 54
    :cond_73
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_78} :catch_d9
    .catchall {:try_start_3a .. :try_end_78} :catchall_d4

    const-wide/16 v9, 0x0

    .line 56
    :cond_7a
    :try_start_7a
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_ab

    const/4 v11, 0x0

    .line 57
    invoke-virtual {v5, v0, v11, v6}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v11, v6

    add-long/2addr v9, v11

    long-to-float v6, v9

    const/high16 v11, 0x3f800000  # 1.0f

    mul-float v6, v6, v11

    long-to-float v11, v7

    div-float/2addr v6, v11

    const/16 v11, 0x64

    int-to-float v11, v11

    mul-float v6, v6, v11

    float-to-int v6, v6

    .line 60
    iget-object v11, v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$onProgress:Lkotlin/jvm/functions/Function3;

    if-eqz v11, :cond_a5

    iget-object v12, v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$url:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v12, v13, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_a5
    invoke-static {}, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->access$isCanceled$p()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 65
    :cond_ab
    invoke-static {}, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->access$isCanceled$p()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 66
    iget-object v0, v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_c0

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c0

    .line 68
    :cond_b9
    iget-object v0, v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_c0

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_c0
    :goto_c0
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_c3} :catch_d2
    .catchall {:try_start_7a .. :try_end_c3} :catchall_cf

    .line 76
    :try_start_c3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 77
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c9} :catch_ca

    goto :goto_f8

    :catch_ca
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f8

    :catchall_cf
    move-exception v0

    move-object v3, v0

    goto :goto_d7

    :catch_d2
    move-exception v0

    goto :goto_db

    :catchall_d4
    move-exception v0

    move-object v3, v0

    move-object v5, v2

    :goto_d7
    move-object v2, v4

    goto :goto_fb

    :catch_d9
    move-exception v0

    move-object v5, v2

    :goto_db
    move-object v2, v4

    goto :goto_e4

    :cond_dd
    :goto_dd
    return-void

    :catchall_de
    move-exception v0

    move-object v3, v0

    move-object v5, v2

    goto :goto_fb

    :catch_e2
    move-exception v0

    move-object v5, v2

    .line 72
    :goto_e4
    :try_start_e4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    iget-object v3, v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;->$onFailed:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_ee

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_f9

    :cond_ee
    if-eqz v2, :cond_f3

    .line 76
    :try_start_f0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_f3
    if-eqz v5, :cond_f8

    .line 77
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f8} :catch_ca

    :cond_f8
    :goto_f8
    return-void

    :catchall_f9
    move-exception v0

    move-object v3, v0

    :goto_fb
    if-eqz v2, :cond_103

    .line 76
    :try_start_fd
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_103

    :catch_101
    move-exception v0

    goto :goto_109

    :cond_103
    :goto_103
    if-eqz v5, :cond_10c

    .line 77
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_108} :catch_101

    goto :goto_10c

    .line 79
    :goto_109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_10c
    :goto_10c
    throw v3
.end method
