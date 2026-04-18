.class public Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;
.super Lcn/codemao/android/sketch/activity/BaseActivity;
.source "ShareBitmapEditActivityPortrait.java"


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

.field private rootView:Landroid/widget/RelativeLayout;

.field private screenHeight:I

.field private screenWitdh:I

.field private shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

.field private toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

.field private tvDes:Landroid/widget/TextView;

.field private zoomScale:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/BaseActivity;-><init>()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 250
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->permissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I
    .registers 1

    .line 35
    iget p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenWitdh:I

    return p0
.end method

.method static synthetic access$002(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;I)I
    .registers 2

    .line 35
    iput p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenWitdh:I

    return p1
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Lcn/codemao/android/sketch/view/ShareEditView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->saveAsFile()V

    return-void
.end method

.method static synthetic access$1100(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Lcn/codemao/android/sketch/utils/ToastUtils;
    .registers 1

    .line 35
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I
    .registers 1

    .line 35
    iget p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenHeight:I

    return p0
.end method

.method static synthetic access$202(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;I)I
    .registers 2

    .line 35
    iput p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenHeight:I

    return p1
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->initLocation()V

    return-void
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 35
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->rlBack:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/widget/ImageView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->btnSure:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/widget/TextView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->tvDes:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/graphics/RectF;
    .registers 1

    .line 35
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->outEdgeRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$800(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->saveBitmap()V

    return-void
.end method

.method static synthetic access$902(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private initAssetImg(Ljava/lang/String;)V
    .registers 3

    .line 173
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 175
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 176
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-nez v0, :cond_24

    .line 179
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->finish()V

    return-void

    .line 183
    :cond_24
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/ShareEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2e
    return-void
.end method

.method private initData()V
    .registers 4

    .line 129
    new-instance v0, Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/utils/ToastUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->imagePath:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "savePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->fileName:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "zoomScale"

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->zoomScale:F

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "offsetX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->offsetX:F

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "offsetY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->offsetY:F

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenHeight:I

    .line 136
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenWitdh:I

    return-void
.end method

.method private initFileImg(Ljava/lang/String;)V
    .registers 6

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 142
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->finish()V

    goto :goto_67

    .line 146
    :cond_1a
    :try_start_1a
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 147
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 149
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 150
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 151
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 152
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 153
    iget v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenWitdh:I

    div-int/2addr v1, v3

    iget v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenHeight:I

    div-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 154
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 155
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 156
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5d

    .line 160
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->finish()V

    return-void

    .line 165
    :cond_5d
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/ShareEditView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_67
    return-void
.end method

.method private initLocation()V
    .registers 6

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->outEdgeRect:Landroid/graphics/RectF;

    .line 59
    iget v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenWitdh:I

    int-to-float v2, v1

    const v3, 0x3f3851ec  # 0.72f

    mul-float v2, v2, v3

    int-to-float v1, v1

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    const v4, 0x3f7126e9  # 0.942f

    mul-float v4, v4, v2

    .line 63
    iput v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 64
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 65
    iget v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->screenHeight:I

    int-to-float v2, v1

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    .line 66
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v1

    const v2, -0x42820c4a  # -0.062f

    mul-float v1, v1, v2

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 71
    sget v0, Lcn/codemao/android/sketch/R$layout;->activity_share_bitmap_edit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 72
    sget v0, Lcn/codemao/android/sketch/R$id;->share_edit_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/ShareEditView;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    .line 73
    sget v0, Lcn/codemao/android/sketch/R$id;->btn_share_edit_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    sget v0, Lcn/codemao/android/sketch/R$id;->btn_share_edit_sure:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->btnSure:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_share_edit_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->rlBack:Landroid/widget/RelativeLayout;

    .line 76
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_des:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->tvDes:Landroid/widget/TextView;

    .line 77
    sget v0, Lcn/codemao/android/sketch/R$id;->rootview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->rootView:Landroid/widget/RelativeLayout;

    .line 78
    sget v1, Lcn/codemao/android/sketch/R$mipmap;->bg_share_edit_por:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 79
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    iget v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->offsetX:F

    iget v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->offsetY:F

    iget v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->zoomScale:F

    invoke-virtual {v0, v1, v2, v3}, Lcn/codemao/android/sketch/view/ShareEditView;->initOffsetAndScale(FFF)V

    .line 80
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;-><init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 103
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/ShareEditView;->setOrientation(I)V

    .line 104
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->rlBack:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$2;-><init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->btnSure:Landroid/widget/ImageView;

    new-instance v1, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$3;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$3;-><init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 117
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->finish()V

    goto :goto_ab

    .line 120
    :cond_8e
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->imagePath:Ljava/lang/String;

    const-string v1, "asset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 121
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->imagePath:Ljava/lang/String;

    const-string v1, "asset:/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->initAssetImg(Ljava/lang/String;)V

    goto :goto_ab

    .line 123
    :cond_a6
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->imagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->initFileImg(Ljava/lang/String;)V

    :goto_ab
    return-void
.end method

.method private saveAsFile()V
    .registers 5

    .line 214
    :try_start_0
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 215
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    return-void

    .line 218
    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 222
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 224
    :cond_2d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 228
    :cond_36
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 229
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->fileName:Ljava/lang/String;

    const-string v2, ".webp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x64

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->fileName:Ljava/lang/String;

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_5a

    .line 232
    :cond_52
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_61

    .line 230
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 234
    :goto_61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 235
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/ShareEditView;->getShareBitmapEditInfo()Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;

    move-result-object v1

    const-string v2, "resultInfo"

    .line 238
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 239
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 240
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_88

    .line 241
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    :cond_88
    invoke-virtual {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->finish()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8c

    goto :goto_9f

    :catch_8c
    move-exception v0

    .line 245
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_failed_to_save_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9f
    return-void
.end method

.method private saveBitmap()V
    .registers 4

    .line 192
    new-instance v0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$4;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$4;-><init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V

    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->permissions:[Ljava/lang/String;

    const/16 v2, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcn/codemao/android/sketch/activity/BaseActivity;->requestPermission(ILcn/codemao/android/sketch/listener/PermissionListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkMorePermission([Ljava/lang/String;)Z
    .registers 6

    .line 256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 260
    :goto_a
    array-length v3, p1

    if-ge v2, v3, :cond_1a

    .line 261
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

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 282
    sget v0, Lcn/codemao/android/sketch/R$anim;->fade_in:I

    sget v1, Lcn/codemao/android/sketch/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 51
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->initData()V

    .line 53
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 275
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->shareEditView:Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/ShareEditView;->onDestroy()V

    .line 276
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
