.class public final Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;
.super Ljava/lang/Object;
.source "Base64ToGallerySaver.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;->INSTANCE:Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final saveBitmapToGallery(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 15

    const-string v0, "关闭输出流"

    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 46
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 47
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_32

    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMG_"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_32
    const-string v3, "_display_name"

    .line 49
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    .line 50
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const-string v5, "is_pending"

    const/16 v6, 0x1d

    if-lt v3, v6, :cond_5d

    .line 53
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p3, "put数据"

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 54
    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const-string p3, "relative_path"

    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a1

    .line 57
    :cond_5d
    sget-object v7, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v8, "创建file"

    invoke-virtual {v7, v8}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 58
    new-instance v7, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v7, v8, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_82

    .line 60
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_82
    new-instance p2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".jpg"

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v7, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_data"

    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a1
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 72
    :try_start_a3
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a9} :catch_107
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_103

    if-eqz v7, :cond_d7

    .line 74
    :try_start_ab
    sget-object v8, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c5} :catch_100
    .catchall {:try_start_ab .. :try_end_c5} :catchall_fd

    if-eqz v9, :cond_d1

    .line 77
    :try_start_c7
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {p1, v8, v10, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_e0

    :catch_cf
    move-exception p1

    goto :goto_10a

    :cond_d1
    const-string p1, "Failed to open output stream."

    .line 80
    invoke-virtual {v8, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d6} :catch_cf
    .catchall {:try_start_c7 .. :try_end_d6} :catchall_156

    goto :goto_df

    .line 83
    :cond_d7
    :try_start_d7
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v4, "Failed to insert media store entry."

    invoke-virtual {p1, v4}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_de} :catch_100
    .catchall {:try_start_d7 .. :try_end_de} :catchall_fd

    move-object v9, p3

    :goto_df
    const/4 v4, 0x0

    :goto_e0
    if-eqz v9, :cond_e5

    .line 88
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 89
    :cond_e5
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    if-lt v3, v6, :cond_fb

    .line 91
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v7, :cond_fb

    .line 94
    invoke-virtual {v1, v7, v2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_fb
    move p2, v4

    goto :goto_13f

    :catchall_fd
    move-exception p1

    move-object v9, p3

    goto :goto_157

    :catch_100
    move-exception p1

    move-object v9, p3

    goto :goto_10a

    :catchall_103
    move-exception p1

    move-object v7, p3

    move-object v9, v7

    goto :goto_157

    :catch_107
    move-exception p1

    move-object v7, p3

    move-object v9, v7

    .line 86
    :goto_10a
    :try_start_10a
    sget-object v3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException while saving image: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V
    :try_end_124
    .catchall {:try_start_10a .. :try_end_124} :catchall_156

    if-eqz v9, :cond_129

    .line 88
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 89
    :cond_129
    invoke-virtual {v3, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 90
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v6, :cond_13f

    .line 91
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v7, :cond_13f

    .line 94
    invoke-virtual {v1, v7, v2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    :cond_13f
    :goto_13f
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "是否成功:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    return p2

    :catchall_156
    move-exception p1

    :goto_157
    if-eqz v9, :cond_15c

    .line 88
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 89
    :cond_15c
    sget-object v3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {v3, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_174

    .line 91
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v7, :cond_174

    .line 94
    invoke-virtual {v1, v7, v2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_174
    throw p1
.end method

.method public static synthetic saveImage$default(Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Z
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 27
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;->saveImage(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final saveImage(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "base64Image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1e

    .line 29
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "Base64 image string is empty."

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    return v1

    .line 33
    :cond_1e
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 34
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;->saveBitmapToGallery(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_35

    .line 39
    :cond_2e
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "Failed to decode Base64 string to Bitmap."

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    :goto_35
    return v1
.end method
