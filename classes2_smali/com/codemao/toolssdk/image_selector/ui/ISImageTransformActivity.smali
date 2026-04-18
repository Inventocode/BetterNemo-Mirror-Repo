.class public final Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ISImageTransformActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$Companion;


# instance fields
.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

.field private imagePath:Ljava/lang/String;

.field private isLandscape:Z


# direct methods
.method public static synthetic $r8$lambda$G2EQ_AUkHuiuBjO06-oU2B9Xzyw(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initView$lambda$6(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NPQhPUjq2qPJXLV4Eu63OqwKXJw(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initView$lambda$4(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XOVslherG14CzuyPUUUFe3UYGj4(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initView$lambda$5(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aZ3s62TeblN2WsL2u1ZeI6zCI8o(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initView$lambda$3$lambda$2(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bA2R44GKG7iXT5d63u8WK6f3iDU(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initView$lambda$3(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mojg7hz6-GECLtVh5wmX-ukMMkw(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initNotchScreen$lambda$0(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yHGqbjnG_G8-mnHAmTNfklpyxks(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initView$lambda$1(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->Companion:Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final fullScreen()V
    .registers 3

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private final hideBottomUIMenu()V
    .registers 5

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2b

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 64
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_23
    if-nez v2, :cond_26

    goto :goto_2f

    :cond_26
    const/4 v3, 0x2

    .line 65
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_2f

    :cond_2b
    const/16 v2, 0x1002

    .line 68
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_2f
    const/16 v2, 0x1c

    if-lt v1, v2, :cond_36

    const/4 v1, 0x1

    .line 72
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 75
    :cond_36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private final initData()V
    .registers 5

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->imagePath:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isLandscape"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->isLandscape:Z

    .line 113
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_24

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_24
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    iget-boolean v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->isLandscape:Z

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->setLandscape(Z)V

    .line 114
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez v0, :cond_33

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_34

    :cond_33
    move-object v1, v0

    :goto_34
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->setImagePath(Ljava/lang/String;)V

    return-void
.end method

.method private final initNotchScreen()V
    .registers 3

    .line 94
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    return-void
.end method

.method private static final initNotchScreen$lambda$0(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 98
    iget-boolean v2, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->hasNotch:Z

    if-ne v2, v0, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_17

    iget-object v2, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_2e

    .line 100
    iget-object v0, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 101
    iget-object p1, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    .line 104
    :goto_2f
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_3a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x41300000  # 11.0f

    .line 105
    invoke-static {p0, v3}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 106
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez p0, :cond_59

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5a

    :cond_59
    move-object v1, p0

    :goto_5a
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private final initView()V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez v0, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->btnConfirm:Landroid/widget/TextView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez v0, :cond_2f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->clickBgTransformHorizontal:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez v0, :cond_41

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_41
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->clickBgTransformRotate:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez v0, :cond_53

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_54

    :cond_53
    move-object v1, v0

    :goto_54
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->clickBgTransformVertical:Landroid/view/View;

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initView$lambda$1(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->finish()V

    return-void
.end method

.method private static final initView$lambda$3(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 121
    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_internet_error:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;II)V

    return-void

    .line 124
    :cond_12
    new-instance p1, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final initView$lambda$3$lambda$2(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_10
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getFinalBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->imagePath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez v0, :cond_23

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_23
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->computeOffset()Landroid/graphics/PointF;

    move-result-object v0

    .line 128
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez v3, :cond_31

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_32

    :cond_31
    move-object v1, v3

    :goto_32
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->computeScale()F

    move-result v6

    .line 129
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;

    const/4 v3, 0x0

    .line 130
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->imagePath:Ljava/lang/String;

    .line 131
    new-instance v5, Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v2, v0}, Lcom/codemao/toolssdk/model/dsbridge/PointBody;-><init>(FF)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v1

    .line 129
    invoke-direct/range {v2 .. v8}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/PointBody;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "data"

    .line 135
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 136
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->finish()V

    return-void
.end method

.method private static final initView$lambda$4(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez p0, :cond_f

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->transformHorizontal()V

    return-void
.end method

.method private static final initView$lambda$5(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez p0, :cond_f

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->transformRotate()V

    return-void
.end method

.method private static final initView$lambda$6(Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez p0, :cond_f

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->transformVertical()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4a

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4a

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-nez v2, :cond_25

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_25
    iget-object v2, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_49

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    if-nez v2, :cond_3d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3e

    :cond_3d
    move-object v3, v2

    :goto_3e
    iget-object v2, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;->imageTransformV:Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4a

    :cond_49
    return v0

    .line 158
    :cond_4a
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .registers 3

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 90
    sget v0, Lcom/codemao/toolssdk/R$anim;->toolsdk_exit_right:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->hideBottomUIMenu()V

    .line 81
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->fullScreen()V

    .line 82
    sget p1, Lcom/codemao/toolssdk/R$layout;->toolsdk_activity_is_transform:I

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "setContentView(this, R.l…dk_activity_is_transform)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;

    .line 83
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initView()V

    .line 84
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initData()V

    .line 85
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->initNotchScreen()V

    return-void
.end method
