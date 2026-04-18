.class public Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ISListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/codemao/toolssdk/image_selector/common/Callback;


# instance fields
.field private btnConfirm:Landroid/widget/TextView;

.field private config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

.field private cropImagePath:Ljava/lang/String;

.field private fragment:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

.field private ivArrowDown:Landroid/widget/ImageView;

.field private ivBack:Landroid/widget/ImageView;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rlTitleBar:Landroid/view/View;

.field private title:Ljava/lang/String;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$oJhZYuXAL9HSAQ9pfGHsEBwS_bY(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsbWzHfk6A9C6bKnwXBLrwAFuac(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->lambda$initNotchScreen$0(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->result:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    return-object p0
.end method

.method private crop(Ljava/lang/String;)V
    .registers 6

    .line 320
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

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->cropImagePath:Ljava/lang/String;

    .line 323
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->getImageContentUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v2, "true"

    .line 325
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->aspectX:I

    const-string v2, "aspectX"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->aspectY:I

    const-string v2, "aspectY"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->outputX:I

    const-string v2, "outputX"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->outputY:I

    const-string v2, "outputY"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "scale"

    const/4 v2, 0x1

    .line 330
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "scaleUpIfNeeded"

    .line 331
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "return-data"

    const/4 v3, 0x0

    .line 332
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "output"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 334
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "outputFormat"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "noFaceDetection"

    .line 335
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private fullScreen()V
    .registers 3

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private hideBottomUIMenu()V
    .registers 5

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_28

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 119
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    const/4 v3, 0x2

    .line 120
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_2c

    :cond_28
    const/16 v2, 0x1002

    .line 123
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :cond_2c
    :goto_2c
    const/16 v2, 0x1c

    if-lt v1, v2, :cond_33

    const/4 v1, 0x1

    .line 126
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 128
    :cond_33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private initNotchScreen()V
    .registers 3

    .line 157
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 185
    sget v0, Lcom/codemao/toolssdk/R$id;->ivArrowDown:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->ivArrowDown:Landroid/widget/ImageView;

    .line 187
    sget v0, Lcom/codemao/toolssdk/R$id;->rlTitleBar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->rlTitleBar:Landroid/view/View;

    .line 188
    sget v0, Lcom/codemao/toolssdk/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    .line 190
    sget v0, Lcom/codemao/toolssdk/R$id;->btnConfirm:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->btnConfirm:Landroid/widget/TextView;

    .line 191
    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;)V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/ViewUtilsKt;->setOnClickListenerWithoutShake(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 219
    sget v0, Lcom/codemao/toolssdk/R$id;->ivBack:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->ivBack:Landroid/widget/ImageView;

    .line 220
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;)V

    .line 227
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->ivArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_album_all_picture:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->title:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    if-eqz v0, :cond_78

    .line 232
    iget-boolean v1, v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->multiSelect:Z

    if-eqz v1, :cond_6c

    .line 233
    iget-boolean v0, v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->rememberSelected:Z

    if-nez v0, :cond_68

    .line 234
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    :cond_68
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->setConfirmText()V

    goto :goto_78

    .line 238
    :cond_6c
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->btnConfirm:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_78
    :goto_78
    return-void
.end method

.method private synthetic lambda$initNotchScreen$0(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 4

    .line 160
    iget-boolean v0, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->hasNotch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_20

    .line 162
    iget-object v0, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 163
    iget-object p1, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 166
    :cond_20
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float v0, v1

    const/high16 v1, 0x41800000  # 16.0f

    .line 167
    invoke-static {p0, v1}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 168
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 2

    .line 223
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->fragment:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    if-eqz p1, :cond_7

    .line 224
    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->showOrDismissFolderPopupWindow()V

    :cond_7
    return-void
.end method

.method private setConfirmText()V
    .registers 8

    .line 245
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget v0, v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->maxNum:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_37

    .line 246
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->btnConfirm:Landroid/widget/TextView;

    sget v3, Lcom/codemao/toolssdk/R$string;->toolsdk_confirm_format:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget-object v5, v5, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->btnText:Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget v6, v6, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->maxNum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_37
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_40

    const/4 v1, 0x1

    .line 249
    :cond_40
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->btnConfirm:Landroid/widget/TextView;

    if-eqz v1, :cond_4c

    const-string v1, "#FFFFFFFF"

    goto :goto_4e

    :cond_4c
    const-string v1, "#33FFFFFF"

    :goto_4e
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static startForResult(Landroid/app/Activity;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;I)V
    .registers 5

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config"

    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    sget p1, Lcom/codemao/toolssdk/R$anim;->toolsdk_from_bottom:I

    sget p2, Lcom/codemao/toolssdk/R$anim;->toolsdk_material_exit_empty:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static startForResult(Landroid/app/Fragment;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;I)V
    .registers 6

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcom/codemao/toolssdk/R$anim;->toolsdk_from_bottom:I

    sget p2, Lcom/codemao/toolssdk/R$anim;->toolsdk_material_exit_empty:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static startForResult(Landroidx/fragment/app/Fragment;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;I)V
    .registers 6

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/codemao/toolssdk/R$anim;->toolsdk_from_bottom:I

    sget p2, Lcom/codemao/toolssdk/R$anim;->toolsdk_material_exit_empty:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 4

    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 400
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->result:Ljava/util/ArrayList;

    sget-object v2, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->result:Ljava/util/ArrayList;

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 402
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 403
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->finish()V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 409
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 410
    sget v0, Lcom/codemao/toolssdk/R$anim;->toolsdk_exit_bottom:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getConfig()Lcom/codemao/toolssdk/image_selector/config/ISListConfig;
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    return-object v0
.end method

.method public getImageContentUri(Ljava/io/File;)Landroid/net/Uri;
    .registers 10

    .line 340
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 341
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

    if-eqz v1, :cond_49

    .line 343
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 344
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 345
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v0, "content://media/external/images/media"

    .line 346
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 347
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

    .line 349
    :cond_49
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 350
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 351
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_64
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    if-ne p2, v0, :cond_15

    .line 366
    sget-object v1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->cropImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->multiSelect:Z

    .line 368
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->exit()V

    :cond_15
    const/4 v1, 0x2

    const-string v2, "type"

    const-string v3, "result"

    if-ne p1, v1, :cond_40

    if-ne p2, v0, :cond_40

    const-string v1, "data"

    .line 371
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;

    .line 372
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 373
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 374
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 376
    sget-object v1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 377
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->finish()V

    :cond_40
    const/4 v1, 0x3

    if-ne p1, v1, :cond_70

    if-ne p2, v0, :cond_70

    .line 380
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 381
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->result:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 382
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->result:Ljava/util/ArrayList;

    sget-object v5, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 383
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->result:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 384
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v3, "actor"

    .line 385
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 387
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 388
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->finish()V

    .line 390
    :cond_70
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->setConfirmText()V

    .line 391
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->fragment:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    if-eqz v0, :cond_7a

    .line 392
    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 394
    :cond_7a
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 443
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 445
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCameraShot(Ljava/io/File;)V
    .registers 3

    if-eqz p1, :cond_21

    .line 300
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget-boolean v0, v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCrop:Z

    if-eqz v0, :cond_10

    .line 301
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->crop(Ljava/lang/String;)V

    goto :goto_21

    .line 303
    :cond_10
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->multiSelect:Z

    .line 305
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->exit()V

    :cond_21
    :goto_21
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 256
    sget v0, Lcom/codemao/toolssdk/R$id;->ivBack:I

    if-ne p1, v0, :cond_b

    .line 257
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->onBackPressed()V

    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 174
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->fragment:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    if-eqz v0, :cond_15

    .line 176
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    const/4 p1, 0x5

    .line 177
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->setLayoutManager(I)V

    goto :goto_15

    :cond_11
    const/4 p1, 0x3

    .line 179
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->setLayoutManager(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 133
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->hideBottomUIMenu()V

    .line 135
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->fullScreen()V

    .line 136
    sget p1, Lcom/codemao/toolssdk/R$layout;->toolsdk_activity_img_sel:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    .line 139
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x21

    if-lt p1, v1, :cond_33

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 140
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_5f

    :cond_33
    if-ge p1, v1, :cond_45

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 141
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_45

    .line 143
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_5f

    .line 145
    :cond_45
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->instance()Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->fragment:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/codemao/toolssdk/R$id;->fmImageList:I

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->fragment:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 149
    :goto_5f
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->initView()V

    .line 150
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->isSdCardAvailable()Z

    move-result p1

    if-nez p1, :cond_76

    .line 151
    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_sd_disable:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 153
    :cond_76
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->initNotchScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 450
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDismissFolderPopup()V
    .registers 4

    .line 278
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->ivArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onFolderSelected(Ljava/lang/String;)V
    .registers 3

    .line 283
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->title:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onImageSelected(Ljava/lang/String;)V
    .registers 2

    .line 289
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->setConfirmText()V

    return-void
.end method

.method public onImageUnselected(Ljava/lang/String;)V
    .registers 2

    .line 294
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->setConfirmText()V

    return-void
.end method

.method public onPreviewChanged(IIZ)V
    .registers 5

    if-eqz p3, :cond_1c

    .line 313
    iget-object p3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 315
    :cond_1c
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_23
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 415
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    goto :goto_33

    .line 418
    :cond_7
    array-length p1, p3

    const/4 v0, 0x0

    if-lt p1, p2, :cond_26

    aget p1, p3, v0

    if-nez p1, :cond_26

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$id;->fmImageList:I

    invoke-static {}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->instance()Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_33

    .line 421
    :cond_26
    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_storage_denied:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_33
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 437
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "config"

    .line 438
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 431
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 432
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    const-string v1, "config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onShowFolderPopup()V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->ivArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000  # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onSingleImageSelected(Ljava/lang/String;)V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget-boolean v0, v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCrop:Z

    if-eqz v0, :cond_a

    .line 264
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->crop(Ljava/lang/String;)V

    goto :goto_12

    .line 266
    :cond_a
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->exit()V

    :goto_12
    return-void
.end method
