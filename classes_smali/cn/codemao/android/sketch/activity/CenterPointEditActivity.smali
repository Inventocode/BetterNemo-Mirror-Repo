.class public Lcn/codemao/android/sketch/activity/CenterPointEditActivity;
.super Lcn/codemao/android/sketch/SketchActivity;
.source "CenterPointEditActivity.java"


# instance fields
.field private dx:F

.field private dy:F

.field private imgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;-><init>()V

    return-void
.end method

.method private initAssetImg(Ljava/lang/String;)V
    .registers 4

    .line 92
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 94
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 95
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-nez v0, :cond_24

    .line 98
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 102
    :cond_24
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->addEditBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    iget v0, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->dx:F

    iget v1, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->dy:F

    invoke-virtual {p1, v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setCenterXY(FF)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_37
    return-void
.end method

.method private initFileImg()V
    .registers 6

    const-string v0, "imagePath"

    .line 58
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->imgUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 60
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_84

    .line 64
    :cond_1e
    :try_start_1e
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 65
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 66
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 67
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 69
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 70
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 71
    iget v4, p0, Lcn/codemao/android/sketch/SketchActivity;->screenWitdh:I

    div-int/2addr v2, v4

    iget v4, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    div-int/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 72
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 73
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_71

    .line 78
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 82
    :cond_71
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->addEditBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    iget v1, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->dx:F

    iget v2, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->dy:F

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->setCenterXY(FF)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_84
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 33
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/SketchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "imagePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->imgUrl:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "centerDx"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->dx:F

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "centerDy"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->dy:F

    .line 37
    sget p1, Lcn/codemao/android/sketch/R$id;->bottom_rg:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    sget p1, Lcn/codemao/android/sketch/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_adjust_center_point:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->imgUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 45
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_90

    .line 48
    :cond_75
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->imgUrl:Ljava/lang/String;

    const-string v0, "asset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 49
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->imgUrl:Ljava/lang/String;

    const-string v0, "asset:/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->initAssetImg(Ljava/lang/String;)V

    goto :goto_90

    .line 51
    :cond_8d
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/CenterPointEditActivity;->initFileImg()V

    :goto_90
    return-void
.end method
