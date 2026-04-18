.class public Lcom/codemao/nemo/activity/CoverEditActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "CoverEditActivity.java"


# instance fields
.field private base64Str:Ljava/lang/String;

.field private degree:I

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private fileName:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field private loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field public permissions:[Ljava/lang/String;

.field private screenHeight:I

.field private screenWitdh:I

.field private shareEditView:Lcom/codemao/nemo/view/CoverEditView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->degree:I

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 84
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->permissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/CoverEditActivity;)Lcom/codemao/nemo/view/CoverEditView;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/CoverEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/CoverEditActivity;Ljava/lang/String;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CoverEditActivity;->updateCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/CoverEditActivity;)Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method private getBase64Str(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_47

    .line 361
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_24
    .catchall {:try_start_3 .. :try_end_8} :catchall_22

    .line 362
    :try_start_8
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 364
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 365
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 367
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v2, 0x0

    .line 368
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_20
    .catchall {:try_start_8 .. :try_end_1e} :catchall_37

    move-object v0, v1

    goto :goto_48

    :catch_20
    move-exception p1

    goto :goto_26

    :catchall_22
    move-exception p1

    goto :goto_39

    :catch_24
    move-exception p1

    move-object v1, v0

    .line 371
    :goto_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_37

    if-eqz v1, :cond_56

    .line 375
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 376
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_32

    goto :goto_56

    :catch_32
    move-exception p1

    .line 379
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    :catchall_37
    move-exception p1

    move-object v0, v1

    :goto_39
    if-eqz v0, :cond_46

    .line 375
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 376
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 381
    :cond_46
    :goto_46
    throw p1

    :cond_47
    move-object p1, v0

    :goto_48
    if-eqz v0, :cond_55

    .line 375
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 376
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_55
    :goto_55
    move-object v0, p1

    :cond_56
    :goto_56
    return-object v0
.end method

.method private initAssetImg(Ljava/lang/String;)V
    .registers 10

    .line 246
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 249
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 250
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 251
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-nez v7, :cond_1f

    const-string/jumbo p1, "请传入正确的图片目录"

    .line 253
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->finish()V

    return-void

    .line 258
    :cond_1f
    iget p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->degree:I

    if-nez p1, :cond_29

    .line 259
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {p1, v7}, Lcom/codemao/nemo/view/CoverEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_57

    .line 261
    :cond_29
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 262
    iget p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->degree:I

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 264
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 265
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CoverEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_57

    .line 267
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_57
    :goto_57
    return-void
.end method

.method private initBase64(Ljava/lang/String;)V
    .registers 13

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string/jumbo v1, "请传入正确的图片目录"

    if-nez v0, :cond_16

    .line 196
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->finish()V

    goto/16 :goto_b7

    .line 200
    :cond_16
    :try_start_16
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 201
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 202
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 203
    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 204
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 205
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 206
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 207
    iget v4, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->screenWitdh:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->screenHeight:I

    div-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 208
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 209
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 210
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    :goto_53
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 215
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 217
    :cond_5d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 219
    array-length v2, p1

    invoke-static {p1, v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_7f

    .line 221
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->finish()V

    return-void

    .line 226
    :cond_7f
    iget v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->degree:I

    if-nez v0, :cond_89

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CoverEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b7

    .line 229
    :cond_89
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 230
    iget v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->degree:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CoverEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_b2} :catch_b3

    goto :goto_b7

    :catch_b3
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b7
    :goto_b7
    return-void
.end method

.method private initData()V
    .registers 4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/edited_cover.jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->fileName:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->imagePath:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "degree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->degree:I

    .line 108
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->screenHeight:I

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->screenWitdh:I

    return-void
.end method

.method private initFileImg(Ljava/lang/String;)V
    .registers 13

    .line 152
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string/jumbo v1, "请传入正确的图片目录"

    if-nez v0, :cond_15

    .line 154
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->finish()V

    goto :goto_82

    .line 158
    :cond_15
    :try_start_15
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 159
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 161
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 162
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 163
    iget v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->screenWitdh:I

    iget v4, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->screenHeight:I

    invoke-static {v0, v2, v4}, Lcom/codemao/nemo/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 164
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 165
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 166
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4a

    .line 170
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->finish()V

    return-void

    .line 174
    :cond_4a
    iget v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->degree:I

    if-nez v0, :cond_54

    .line 175
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CoverEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_82

    .line 177
    :cond_54
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 178
    iget v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->degree:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CoverEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_82

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_82
    :goto_82
    return-void
.end method

.method private initHttpImage(Ljava/lang/String;)V
    .registers 3

    .line 136
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/CoverEditActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/CoverEditActivity$1;-><init>(Lcom/codemao/nemo/activity/CoverEditActivity;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    return-void
.end method

.method private initView()V
    .registers 4

    const v0, 0x7f0a0210

    .line 113
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CoverEditView;

    iput-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_29

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    const/high16 v1, 0x43fa0000  # 500.0f

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CoverEditView;->setFinalWitdh(F)V

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    const/high16 v1, 0x43690000  # 233.0f

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CoverEditView;->setFinalHeight(F)V

    .line 120
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "请传入正确的图片目录"

    .line 121
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->finish()V

    goto :goto_78

    .line 123
    :cond_3b
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->imagePath:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->imagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/CoverEditActivity;->initHttpImage(Ljava/lang/String;)V

    goto :goto_78

    .line 125
    :cond_4b
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->imagePath:Ljava/lang/String;

    const-string v1, "asset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->imagePath:Ljava/lang/String;

    const-string v1, "asset:/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/CoverEditActivity;->initAssetImg(Ljava/lang/String;)V

    goto :goto_78

    .line 127
    :cond_63
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->imagePath:Ljava/lang/String;

    const-string v1, ".cover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->imagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/CoverEditActivity;->initBase64(Ljava/lang/String;)V

    goto :goto_78

    .line 130
    :cond_73
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->imagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/CoverEditActivity;->initFileImg(Ljava/lang/String;)V

    :goto_78
    return-void
.end method

.method private saveAsFile()V
    .registers 7

    const-string/jumbo v0, "图片上传失败"

    const-string/jumbo v1, "封面修改失败"

    .line 305
    :try_start_6
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->fileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 306
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v2, :cond_19

    .line 307
    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 308
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 310
    :cond_19
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1c
    return-void

    .line 314
    :cond_1d
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->fileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_36

    .line 317
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 320
    :cond_36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 321
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 324
    :cond_3f
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 325
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->fileName:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x50

    if-nez v2, :cond_63

    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->fileName:Ljava/lang/String;

    const-string v5, ".jpeg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_63

    .line 328
    :cond_5b
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_6a

    .line 326
    :cond_63
    :goto_63
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 330
    :goto_6a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 331
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 333
    iget v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_88

    .line 334
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 335
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    :cond_82
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->fileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/codemao/nemo/activity/CoverEditActivity;->uploadImage(Ljava/lang/String;)V

    goto :goto_bf

    .line 339
    :cond_88
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/codemao/nemo/activity/CoverEditActivity;->getBase64Str(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->base64Str:Ljava/lang/String;

    .line 340
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 341
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    :cond_9d
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->base64Str:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/codemao/nemo/event/WorkCoverEditEvents;->creatCoverEditEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/event/WorkCoverEditEvents;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 344
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->finish()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_af} :catch_b0

    goto :goto_bf

    :catch_b0
    nop

    .line 347
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v2, :cond_bc

    .line 348
    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 349
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 351
    :cond_bc
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_bf
    return-void
.end method

.method private updateCover(Ljava/lang/String;)V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/CoverEditActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/CoverEditActivity$4;-><init>(Lcom/codemao/nemo/activity/CoverEditActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->updateUserCover(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private uploadImage(Ljava/lang/String;)V
    .registers 5

    const-string v0, "1002"

    const-string v1, ".jpg"

    const-string v2, "0"

    .line 386
    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/util/BcmHelper;->getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 387
    new-instance v1, Lcom/codemao/nemo/activity/CoverEditActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/CoverEditActivity$2;-><init>(Lcom/codemao/nemo/activity/CoverEditActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method cancel(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->finish()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0043

    return v0
.end method

.method public finish()V
    .registers 3

    .line 497
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    const v0, 0x7f01002f

    const v1, 0x7f010028

    .line 498
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "作品封面编辑页"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 528
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_17

    const/16 p2, 0x2766

    if-ne p1, p2, :cond_17

    .line 530
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 96
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->permissions:[Ljava/lang/String;

    .line 98
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 99
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->initData()V

    .line 100
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 492
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CoverEditView;->onDestroy()V

    .line 493
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 509
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 510
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 511
    array-length p1, p3

    if-lez p1, :cond_37

    aget p1, p3, v1

    if-nez p1, :cond_37

    .line 512
    iget p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->type:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2b

    .line 513
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez p1, :cond_26

    .line 514
    new-instance p1, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo p2, "图片上传中"

    invoke-direct {p1, p0, p2}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 516
    :cond_26
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 518
    :cond_2b
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/CoverEditView;->getFinalBackGroundBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 519
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->saveAsFile()V

    goto :goto_3d

    :cond_37
    const-string/jumbo p1, "无访问权限，图片保存失败"

    .line 521
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3d
    return-void
.end method

.method saveBitmap(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 279
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 280
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 283
    :cond_a
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->permissions:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 284
    iget p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->type:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2a

    .line 285
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez p1, :cond_25

    .line 286
    new-instance p1, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v0, "图片上传中"

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 288
    :cond_25
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 290
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->shareEditView:Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/CoverEditView;->getFinalBackGroundBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 291
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoverEditActivity;->saveAsFile()V

    goto :goto_41

    .line 293
    :cond_36
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    const/16 v0, 0x67

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoverEditActivity;->permissions:[Ljava/lang/String;

    const-string v2, "TYPE_SAVE_PHOTO"

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    :goto_41
    return-void
.end method

.method public uploadBcmFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 414
    new-instance v0, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v0}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    .line 415
    new-instance v4, Lcom/codemao/nemo/activity/CoverEditActivity$3;

    invoke-direct {v4, p0, p4, p2}, Lcom/codemao/nemo/activity/CoverEditActivity$3;-><init>(Lcom/codemao/nemo/activity/CoverEditActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    return-void
.end method
