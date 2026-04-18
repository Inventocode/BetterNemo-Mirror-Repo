.class final Lcom/lxj/xpopup/util/XPopupUtils$2;
.super Ljava/lang/Object;
.source "XPopupUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/util/XPopupUtils;->saveBmpToAlbum(Landroid/content/Context;Lcom/lxj/xpopup/interfaces/XPopupImageLoader;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageLoader:Lcom/lxj/xpopup/interfaces/XPopupImageLoader;

.field final synthetic val$uri:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/interfaces/XPopupImageLoader;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$uri",
            "val$context",
            "val$imageLoader"
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$imageLoader:Lcom/lxj/xpopup/interfaces/XPopupImageLoader;

    iput-object p2, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$uri:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "is_pending"

    .line 417
    iget-object v1, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$imageLoader:Lcom/lxj/xpopup/interfaces/XPopupImageLoader;

    iget-object v2, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$uri:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/lxj/xpopup/interfaces/XPopupImageLoader;->getImageFile(Landroid/content/Context;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 419
    iget-object v0, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    sget v1, Lcom/lxj/xpopup/R$string;->xpopup_image_not_exist:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 423
    :cond_1a
    :try_start_1a
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 425
    :cond_34
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getImageType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v2, v4, :cond_ad

    .line 427
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 428
    :cond_64
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 430
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_6c} :catch_154

    .line 431
    :try_start_6c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->access$300(Ljava/io/OutputStream;Ljava/io/InputStream;)Z
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_a1

    .line 432
    :try_start_74
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 435
    iget-object v1, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_9f} :catch_154

    goto/16 :goto_13a

    :catchall_a1
    move-exception v1

    .line 430
    :try_start_a2
    throw v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception v2

    .line 432
    :try_start_a4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_ac

    :catchall_a8
    move-exception v0

    :try_start_a9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ac
    throw v2

    .line 438
    :cond_ad
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_display_name"

    .line 439
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    const-string v4, "image/*"

    .line 440
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 443
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_d3

    .line 445
    :cond_d1
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_d3
    const-string v4, "relative_path"

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 448
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    iget-object v4, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_114

    .line 451
    iget-object v0, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    sget v1, Lcom/lxj/xpopup/R$string;->xpopup_saved_fail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 455
    :cond_114
    iget-object v4, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 456
    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_11e} :catch_154

    .line 457
    :try_start_11e
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5, v6}, Lcom/lxj/xpopup/util/XPopupUtils;->access$300(Ljava/io/OutputStream;Ljava/io/InputStream;)Z
    :try_end_126
    .catchall {:try_start_11e .. :try_end_126} :catchall_146

    if-eqz v5, :cond_12b

    .line 458
    :try_start_128
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 460
    :cond_12b
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const/4 v1, 0x0

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 463
    invoke-virtual {v4, v3, v2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 465
    :goto_13a
    iget-object v0, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    sget v1, Lcom/lxj/xpopup/R$string;->xpopup_saved_to_gallery:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->access$200(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_145} :catch_154

    goto :goto_163

    :catchall_146
    move-exception v0

    .line 456
    :try_start_147
    throw v0
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_148

    :catchall_148
    move-exception v1

    if-eqz v5, :cond_153

    .line 458
    :try_start_14b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_14e
    .catchall {:try_start_14b .. :try_end_14e} :catchall_14f

    goto :goto_153

    :catchall_14f
    move-exception v2

    :try_start_150
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_153
    :goto_153
    throw v1
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_154} :catch_154

    :catch_154
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    iget-object v0, p0, Lcom/lxj/xpopup/util/XPopupUtils$2;->val$context:Landroid/content/Context;

    sget v1, Lcom/lxj/xpopup/R$string;->xpopup_saved_fail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    :goto_163
    return-void
.end method
