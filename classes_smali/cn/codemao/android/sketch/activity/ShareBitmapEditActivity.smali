.class public Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;
.super Lcn/codemao/android/sketch/activity/BaseActivity;
.source "ShareBitmapEditActivity.java"


# instance fields
.field private btnSure:Landroid/widget/ImageView;

.field private fileName:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private offsetX:F

.field private offsetY:F

.field private outEdgeRect:Landroid/graphics/RectF;

.field public permissions:[Ljava/lang/String;

.field private rlBack:Landroid/widget/RelativeLayout;

.field private screenHeight:I

.field private screenWitdh:I

.field private shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

.field private toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

.field private tvDes:Landroid/widget/TextView;

.field private zoomScale:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/BaseActivity;-><init>()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 254
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->permissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)I
    .registers 1

    .line 38
    iget p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenWitdh:I

    return p0
.end method

.method static synthetic access$002(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenWitdh:I

    return p1
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)Lcn/codemao/android/sketch/view/ShareEditView;
    .registers 1

    .line 38
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->saveAsFile()V

    return-void
.end method

.method static synthetic access$1100(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)Lcn/codemao/android/sketch/utils/ToastUtils;
    .registers 1

    .line 38
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)I
    .registers 1

    .line 38
    iget p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenHeight:I

    return p0
.end method

.method static synthetic access$202(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenHeight:I

    return p1
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->initLocation()V

    return-void
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 38
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->rlBack:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 38
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->btnSure:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)Landroid/widget/TextView;
    .registers 1

    .line 38
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->tvDes:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)Landroid/graphics/RectF;
    .registers 1

    .line 38
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->outEdgeRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$800(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->saveBitmap()V

    return-void
.end method

.method static synthetic access$902(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 38
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private initAssetImg(Ljava/lang/String;)V
    .registers 3

    .line 177
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 179
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 180
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-nez v0, :cond_24

    .line 183
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->finish()V

    return-void

    .line 187
    :cond_24
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/ShareEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2e
    return-void
.end method

.method private initData()V
    .registers 4

    .line 133
    new-instance v0, Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/utils/ToastUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->imagePath:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "savePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->fileName:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "zoomScale"

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->zoomScale:F

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "offsetX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->offsetX:F

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "offsetY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->offsetY:F

    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenHeight:I

    .line 140
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenWitdh:I

    return-void
.end method

.method private initFileImg(Ljava/lang/String;)V
    .registers 6

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 146
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->finish()V

    goto :goto_67

    .line 150
    :cond_1a
    :try_start_1a
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 151
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 153
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 154
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 155
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 156
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 157
    iget v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenWitdh:I

    div-int/2addr v1, v3

    iget v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenHeight:I

    div-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 158
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 159
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 160
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5d

    .line 164
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->finish()V

    return-void

    .line 169
    :cond_5d
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/ShareEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_67
    return-void
.end method

.method private initLocation()V
    .registers 7

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->outEdgeRect:Landroid/graphics/RectF;

    .line 63
    iget v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenHeight:I

    int-to-float v2, v1

    const v3, 0x3f1a9fbe  # 0.604f

    mul-float v2, v2, v3

    .line 64
    iget v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->screenWitdh:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    const v5, 0x3f7126e9  # 0.942f

    mul-float v5, v5, v2

    .line 67
    iput v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v2

    .line 68
    iput v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    .line 69
    iput v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v5

    .line 70
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private initView()V
    .registers 6

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 75
    sget v1, Lcn/codemao/android/sketch/R$layout;->activity_share_bitmap_edit:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 76
    sget v1, Lcn/codemao/android/sketch/R$id;->share_edit_view:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/ShareEditView;

    iput-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    .line 77
    sget v1, Lcn/codemao/android/sketch/R$id;->btn_share_edit_back:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    sget v1, Lcn/codemao/android/sketch/R$id;->btn_share_edit_sure:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->btnSure:Landroid/widget/ImageView;

    .line 79
    sget v1, Lcn/codemao/android/sketch/R$id;->rl_share_edit_back:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->rlBack:Landroid/widget/RelativeLayout;

    .line 80
    sget v1, Lcn/codemao/android/sketch/R$id;->rootview:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 81
    sget v1, Lcn/codemao/android/sketch/R$id;->tv_des:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->tvDes:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41800000  # 16.0f

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    iget v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->offsetX:F

    iget v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->offsetY:F

    iget v4, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->zoomScale:F

    invoke-virtual {v1, v2, v3, v4}, Lcn/codemao/android/sketch/view/ShareEditView;->initOffsetAndScale(FFF)V

    .line 84
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$1;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$1;-><init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 106
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/view/ShareEditView;->setOrientation(I)V

    .line 108
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->rlBack:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$2;-><init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->btnSure:Landroid/widget/ImageView;

    new-instance v1, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$3;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$3;-><init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 121
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->finish()V

    goto :goto_ad

    .line 124
    :cond_90
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->imagePath:Ljava/lang/String;

    const-string v1, "asset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 125
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->imagePath:Ljava/lang/String;

    const-string v1, "asset:/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->initAssetImg(Ljava/lang/String;)V

    goto :goto_ad

    .line 127
    :cond_a8
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->imagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->initFileImg(Ljava/lang/String;)V

    :goto_ad
    return-void
.end method

.method private saveAsFile()V
    .registers 5

    .line 218
    :try_start_0
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 219
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    return-void

    .line 222
    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 228
    :cond_2d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 232
    :cond_36
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 233
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->fileName:Ljava/lang/String;

    const-string v2, ".webp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x64

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->fileName:Ljava/lang/String;

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_5a

    .line 236
    :cond_52
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_61

    .line 234
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 238
    :goto_61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 239
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/ShareEditView;->getShareBitmapEditInfo()Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;

    move-result-object v1

    const-string v2, "resultInfo"

    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 243
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 244
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_88

    .line 245
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    :cond_88
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->finish()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8c

    goto :goto_9f

    :catch_8c
    move-exception v0

    .line 249
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_failed_to_save_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9f
    return-void
.end method

.method private saveBitmap()V
    .registers 4

    .line 196
    new-instance v0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$4;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$4;-><init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)V

    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->permissions:[Ljava/lang/String;

    const/16 v2, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcn/codemao/android/sketch/activity/BaseActivity;->requestPermission(ILcn/codemao/android/sketch/listener/PermissionListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkMorePermission([Ljava/lang/String;)Z
    .registers 6

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 264
    :goto_a
    array-length v3, p1

    if-ge v2, v3, :cond_1a

    .line 265
    aget-object v3, p1, v2

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_17

    const/4 p1, 0x1

    goto :goto_1b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-eqz p1, :cond_1e

    return v0

    :cond_1e
    return v1
.end method

.method public finish()V
    .registers 3

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 286
    sget v0, Lcn/codemao/android/sketch/R$anim;->fade_in:I

    sget v1, Lcn/codemao/android/sketch/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->initData()V

    .line 57
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 279
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/ShareEditView;->onDestroy()V

    .line 280
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
