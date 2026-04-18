.class public Lcom/codemao/nemo/activity/UserAvatarEditActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "UserAvatarEditActivity.java"


# instance fields
.field private degree:I

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private fileName:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field private loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mNeedUpload:Z

.field public permissions:[Ljava/lang/String;

.field private screenHeight:I

.field private screenWitdh:I

.field private shareEditView:Lcom/codemao/nemo/view/CircleEditView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 70
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->permissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/UserAvatarEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/UserAvatarEditActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->updateAvatar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/UserAvatarEditActivity;)Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method private initAssetImg(Ljava/lang/String;)V
    .registers 10

    .line 230
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 233
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 234
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 235
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-nez v7, :cond_1f

    const-string/jumbo p1, "请传入正确的图片目录"

    .line 237
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->finish()V

    return-void

    .line 242
    :cond_1f
    iget p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->degree:I

    if-nez p1, :cond_29

    .line 243
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->shareEditView:Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {p1, v7}, Lcom/codemao/nemo/view/CircleEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_57

    .line 245
    :cond_29
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 246
    iget p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->degree:I

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->shareEditView:Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CircleEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_57

    .line 251
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_57
    :goto_57
    return-void
.end method

.method private initBase64(Ljava/lang/String;)V
    .registers 13

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string/jumbo v1, "请传入正确的图片目录"

    if-nez v0, :cond_16

    .line 180
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->finish()V

    goto/16 :goto_b7

    .line 184
    :cond_16
    :try_start_16
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 185
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 186
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 187
    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 188
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 189
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 190
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 191
    iget v4, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->screenWitdh:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->screenHeight:I

    div-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 192
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 193
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 194
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    :goto_53
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 199
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 201
    :cond_5d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 203
    array-length v2, p1

    invoke-static {p1, v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_7f

    .line 205
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->finish()V

    return-void

    .line 210
    :cond_7f
    iget v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->degree:I

    if-nez v0, :cond_89

    .line 211
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->shareEditView:Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CircleEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b7

    .line 213
    :cond_89
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 214
    iget v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->degree:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->shareEditView:Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CircleEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_b2} :catch_b3

    goto :goto_b7

    :catch_b3
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b7
    :goto_b7
    return-void
.end method

.method private initData()V
    .registers 4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/edited_avatar.jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->fileName:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->imagePath:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "degree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->degree:I

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_upload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->mNeedUpload:Z

    .line 113
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->screenHeight:I

    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->screenWitdh:I

    return-void
.end method

.method private initFileImg(Ljava/lang/String;)V
    .registers 13

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string/jumbo v1, "请传入正确的图片目录"

    if-nez v0, :cond_15

    .line 136
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->finish()V

    goto :goto_88

    .line 140
    :cond_15
    :try_start_15
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 141
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 143
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 144
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 145
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 146
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 147
    iget v4, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->screenWitdh:I

    div-int/2addr v2, v4

    iget v4, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->screenHeight:I

    div-int/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 148
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 149
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 150
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_50

    .line 153
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->finish()V

    return-void

    .line 158
    :cond_50
    iget v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->degree:I

    if-nez v0, :cond_5a

    .line 159
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->shareEditView:Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CircleEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_88

    .line 161
    :cond_5a
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 162
    iget v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->degree:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->shareEditView:Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CircleEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_88

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_88
    :goto_88
    return-void
.end method

.method private initView()V
    .registers 4

    const v0, 0x7f0a012d

    .line 118
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CircleEditView;

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->shareEditView:Lcom/codemao/nemo/view/CircleEditView;

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "请传入正确的图片目录"

    .line 120
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->finish()V

    goto :goto_4a

    .line 122
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->imagePath:Ljava/lang/String;

    const-string v1, "asset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->imagePath:Ljava/lang/String;

    const-string v1, "asset:/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->initAssetImg(Ljava/lang/String;)V

    goto :goto_4a

    .line 124
    :cond_35
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->imagePath:Ljava/lang/String;

    const-string v1, ".cover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->imagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->initBase64(Ljava/lang/String;)V

    goto :goto_4a

    .line 127
    :cond_45
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->imagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->initFileImg(Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method private saveAsFile()V
    .registers 5

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "请传入目标目录"

    .line 289
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 294
    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 297
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 300
    :cond_2d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 304
    :cond_36
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 305
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->fileName:Ljava/lang/String;

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x50

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->fileName:Ljava/lang/String;

    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_5a

    .line 308
    :cond_52
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_61

    .line 306
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 310
    :goto_61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 311
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 312
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 313
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 315
    :cond_74
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->mNeedUpload:Z

    if-eqz v0, :cond_7e

    .line 316
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->fileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->uploadImage(Ljava/lang/String;)V

    goto :goto_a6

    .line 318
    :cond_7e
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/codemao/nemo/event/UserAvatarEditEvents;->creatAvatarEditEvent(Ljava/lang/String;)Lcom/codemao/nemo/event/UserAvatarEditEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->finish()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8e} :catch_8f

    goto :goto_a6

    :catch_8f
    move-exception v0

    .line 322
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 323
    iget-boolean v1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->mNeedUpload:Z

    if-eqz v1, :cond_9d

    const-string/jumbo v1, "图片上传失败"

    goto :goto_a0

    :cond_9d
    const-string/jumbo v1, "图片保存失败"

    :goto_a0
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a6
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    .line 94
    invoke-static {p0, p1, p2, v0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->start(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 6

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "imagePath"

    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "degree"

    .line 88
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "img_upload"

    .line 89
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAvatar(Ljava/lang/String;)V
    .registers 4

    .line 369
    new-instance v0, Lcn/codemao/android/account/bean/UpdateInformationVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/UpdateInformationVO;-><init>()V

    .line 370
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/UpdateInformationVO;->avatar_url(Ljava/lang/String;)Lcn/codemao/android/account/bean/UpdateInformationVO;

    .line 371
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity$3;-><init>(Lcom/codemao/nemo/activity/UserAvatarEditActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->updateUserAvatar(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private uploadImage(Ljava/lang/String;)V
    .registers 5

    const-string v0, "1001"

    const-string v1, ".jpg"

    const-string v2, "0"

    .line 329
    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/util/BcmHelper;->getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 330
    new-instance v1, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity$1;-><init>(Lcom/codemao/nemo/activity/UserAvatarEditActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method cancel(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->finish()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0033

    return v0
.end method

.method public finish()V
    .registers 3

    .line 425
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    const v0, 0x7f01002f

    const v1, 0x7f010028

    .line 426
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "用户头像编辑页"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 449
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_18

    const/16 v0, 0x2766

    if-ne p1, v0, :cond_18

    .line 451
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 454
    :cond_18
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 100
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->permissions:[Ljava/lang/String;

    .line 102
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 103
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->initData()V

    .line 104
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->shareEditView:Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CircleEditView;->onDestroy()V

    .line 418
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v0, :cond_c

    .line 419
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 421
    :cond_c
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 438
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 439
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 440
    array-length p1, p3

    if-lez p1, :cond_17

    aget p1, p3, v1

    if-nez p1, :cond_17

    .line 441
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->saveBitmap()V

    goto :goto_1d

    :cond_17
    const-string/jumbo p1, "无访问权限，图片保存失败"

    .line 443
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1d
    return-void
.end method

.method saveBitmap()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 262
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 263
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 266
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->permissions:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 267
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez v0, :cond_20

    .line 268
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "正在上传"

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 270
    :cond_20
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_33

    .line 271
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 273
    :cond_33
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->shareEditView:Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CircleEditView;->getFinalBackGroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 274
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->saveAsFile()V

    goto :goto_4a

    .line 276
    :cond_3f
    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->permissions:[Ljava/lang/String;

    const-string v3, "TYPE_SAVE_PHOTO"

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method public uploadBcmFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 353
    new-instance v0, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v0}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    .line 354
    new-instance v4, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;

    invoke-direct {v4, p0, p4, p2}, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;-><init>(Lcom/codemao/nemo/activity/UserAvatarEditActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    return-void
.end method
