.class public Lcn/codemao/android/sketch/activity/CharacterEditActivity;
.super Lcn/codemao/android/sketch/SketchActivity;
.source "CharacterEditActivity.java"


# instance fields
.field private imgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;-><init>()V

    return-void
.end method

.method private initAssetImg(Ljava/lang/String;)V
    .registers 3

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 98
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-nez v0, :cond_24

    .line 102
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 106
    :cond_24
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->addEditBitmap(Landroid/graphics/Bitmap;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2e
    return-void
.end method

.method private initFileImg()V
    .registers 7

    const-string v0, "imagePath"

    .line 63
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/codemao/android/sketch/activity/CharacterEditActivity;->imgUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 65
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7c

    .line 69
    :cond_1e
    :try_start_1e
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 70
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 72
    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 74
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 75
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 76
    iget v5, p0, Lcn/codemao/android/sketch/SketchActivity;->screenWitdh:I

    div-int/2addr v3, v5

    iget v5, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    div-int/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 77
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    add-int/2addr v1, v2

    .line 78
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 79
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_72

    .line 82
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 86
    :cond_72
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->addEditBitmap(Landroid/graphics/Bitmap;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7c
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 30
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/SketchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "imagePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/activity/CharacterEditActivity;->imgUrl:Ljava/lang/String;

    .line 32
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x19

    if-ne p1, v2, :cond_3d

    .line 33
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_figure:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_cut_out:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_eraser:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_83

    .line 38
    :cond_3d
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_center:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_figure:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_cut_out:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_eraser:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    sget p1, Lcn/codemao/android/sketch/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->roleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_83
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/CharacterEditActivity;->imgUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 50
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_b5

    .line 53
    :cond_9a
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/CharacterEditActivity;->imgUrl:Ljava/lang/String;

    const-string v0, "asset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 54
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/CharacterEditActivity;->imgUrl:Ljava/lang/String;

    const-string v0, "asset:/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/activity/CharacterEditActivity;->initAssetImg(Ljava/lang/String;)V

    goto :goto_b5

    .line 56
    :cond_b2
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/CharacterEditActivity;->initFileImg()V

    :goto_b5
    return-void
.end method
