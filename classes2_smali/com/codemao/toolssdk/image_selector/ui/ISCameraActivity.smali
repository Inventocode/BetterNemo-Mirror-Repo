.class public Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ISCameraActivity.java"


# instance fields
.field private config:Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;

.field private cropImageFile:Ljava/io/File;

.field private tempPhotoFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private camera()V
    .registers 6

    const-string v0, "android.permission.CAMERA"

    .line 81
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez v1, :cond_b2

    .line 83
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_b2

    .line 89
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 92
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->createRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/LogUtils;->e(Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->createFile(Ljava/io/File;)Ljava/lang/String;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".image_provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    .line 96
    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    .line 102
    invoke-virtual {p0, v3, v1, v4}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_80

    :cond_95
    const-string v2, "output"

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 106
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b1

    .line 108
    :cond_9f
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$string;->toolsdk_open_camera_failure:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_b1
    return-void

    .line 85
    :cond_b2
    :goto_b2
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private complete(Lcom/codemao/toolssdk/image_selector/bean/Image;)V
    .registers 4

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_e

    .line 162
    iget-object p1, p1, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    const/4 p1, -0x1

    .line 164
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private crop(Ljava/lang/String;)V
    .registers 6

    .line 113
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->createRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->cropImageFile:Ljava/io/File;

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->getImageContentUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v1, "true"

    .line 117
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;

    iget p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;->aspectX:I

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;

    iget p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;->aspectY:I

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;

    iget p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;->outputX:I

    const-string v1, "outputX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;

    iget p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;->outputY:I

    const-string v1, "outputY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "scale"

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "scaleUpIfNeeded"

    .line 123
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "return-data"

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->cropImageFile:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "output"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "outputFormat"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "noFaceDetection"

    .line 127
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getImageContentUri(Ljava/io/File;)Landroid/net/Uri;
    .registers 10

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    const-string v4, "_data=? "

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 140
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 141
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v0, "content://media/external/images/media"

    .line 142
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 146
    :cond_4c
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 147
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    .line 148
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_61

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_61
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_6c
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    if-ne p2, p3, :cond_1e

    .line 173
    new-instance p1, Lcom/codemao/toolssdk/image_selector/bean/Image;

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->cropImageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->cropImageFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->complete(Lcom/codemao/toolssdk/image_selector/bean/Image;)V

    goto :goto_5e

    :cond_1e
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5b

    if-ne p2, p3, :cond_48

    .line 176
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    if-eqz p1, :cond_5e

    .line 177
    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;

    iget-boolean p2, p2, Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;->needCrop:Z

    if-eqz p2, :cond_35

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->crop(Ljava/lang/String;)V

    goto :goto_5e

    .line 181
    :cond_35
    new-instance p2, Lcom/codemao/toolssdk/image_selector/bean/Image;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/codemao/toolssdk/image_selector/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->complete(Lcom/codemao/toolssdk/image_selector/bean/Image;)V

    goto :goto_5e

    .line 185
    :cond_48
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 186
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->tempPhotoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 188
    :cond_57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5e

    .line 191
    :cond_5b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5e
    :goto_5e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    const v0, 0x33333333

    const/4 v1, 0x1

    .line 69
    invoke-static {p0, v0, v1}, Lcom/codemao/toolssdk/image_selector/utils/StatusBarCompat;->compatTransStatusBar(Landroid/app/Activity;IZ)V

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISCameraConfig;

    if-nez p1, :cond_1b

    return-void

    .line 76
    :cond_1b
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->camera()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 197
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_7

    goto :goto_29

    .line 200
    :cond_7
    array-length p1, p3

    const/4 v0, 0x0

    if-lt p1, p2, :cond_18

    aget p1, p3, v0

    if-nez p1, :cond_18

    const/4 p1, 0x1

    aget p1, p3, p1

    if-nez p1, :cond_18

    .line 201
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISCameraActivity;->camera()V

    goto :goto_29

    .line 203
    :cond_18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_camera_denied:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_29
    return-void
.end method
