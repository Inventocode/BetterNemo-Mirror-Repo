.class public final Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ISImageCutOutActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$Companion;


# instance fields
.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

.field private imagePath:Ljava/lang/String;

.field private isEraserSelected:Z

.field private isPencilSelected:Z

.field private final normalColor:I

.field private final selectColor:I


# direct methods
.method public static synthetic $r8$lambda$0g_1NNFvW_NCmdbqUG1M-18ujNY(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$8(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2ghaNq4E11R3gOlfmZDfxuxQwq4(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$10(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2qfQVyGwpitpt2IlFg5TbaFJyys(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$5$lambda$4(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$44tIFU8IZk0vySmdC9JPsEFzfMs(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$13(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4NA9pXZlfYrC8xaUvAWHU5KVcvs(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initNotchScreen$lambda$0(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8jOqvWodVY1TigKnWipm_DdL3Ak(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$5(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8yzVWP-0rySTNEa_OrCyedB9Y3Y(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initData$lambda$2(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9nc30nKbgPmobsH1PKdMSPEmB9Q(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$12(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F_wSPFLDBtwPf3vG7iYqWS3I2t0(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$6(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q79mz67-NwoZD01_QNwcMOVdkxs(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$7(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W8t6T7tg2k2WC4kDQR0ZCPmpjgc(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$9(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y1PlKTzHgEA-OEc1d-Q5psWqlyA(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$3(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pW2Zigv79ME2NYLx_iGOtk7Ir54(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView$lambda$11(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uGxwhcS23rWMqivFB1gHn6QQiCM(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initData$lambda$1(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->Companion:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "#FF8C7EFF"

    .line 45
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->selectColor:I

    const-string v0, "#FFFFFFFF"

    .line 46
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->normalColor:I

    return-void
.end method

.method public static final synthetic access$dismissPenRangeWindow(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->dismissPenRangeWindow()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    return-object p0
.end method

.method public static final synthetic access$getImagePath$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setCorrectBtnEnable(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Z)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->setCorrectBtnEnable(Z)V

    return-void
.end method

.method private final dismissPenRangeWindow()V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_a

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->layoutPenRange:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private final fullScreen()V
    .registers 3

    .line 50
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

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2b

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 59
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_23
    if-nez v2, :cond_26

    goto :goto_2f

    :cond_26
    const/4 v3, 0x2

    .line 60
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_2f

    :cond_2b
    const/16 v2, 0x1002

    .line 64
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_2f
    const/16 v2, 0x1c

    if-lt v1, v2, :cond_36

    const/4 v1, 0x1

    .line 68
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 71
    :cond_36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private final initData()V
    .registers 5

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->imagePath:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda13;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_1f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initData$2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initData$2;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setGenerateBitmapCallback(Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;)V

    .line 118
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_31

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_32

    :cond_31
    move-object v1, v0

    :goto_32
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda12;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final initData$lambda$1(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->imagePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 105
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p0, :cond_17

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_17
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->initBitmap(Landroid/graphics/Bitmap;)V

    :cond_1c
    return-void
.end method

.method private static final initData$lambda$2(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_10
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgPencil:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 120
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgRange2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 121
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p0, :cond_2a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    move-object v1, p0

    :goto_2b
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgEraser:Landroid/view/View;

    const/high16 v0, 0x41a00000  # 20.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private final initNotchScreen()V
    .registers 3

    .line 85
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda10;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    return-void
.end method

.method private static final initNotchScreen$lambda$0(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 88
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

    .line 90
    iget-object v0, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 91
    iget-object p1, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    .line 94
    :goto_2f
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_3a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x41300000  # 11.0f

    .line 95
    invoke-static {p0, v3}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 96
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p0, :cond_59

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5a

    :cond_59
    move-object v1, p0

    :goto_5a
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private final initView()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivCorrect:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_2f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivUndo:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_41

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_41
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivReverse:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_53

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_53
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvPrevew:Landroid/widget/TextView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_65

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_65
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setOperateListener(Lcom/codemao/toolssdk/image_selector/widget/OperateListener;)V

    .line 202
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_77

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_77
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgPencil:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_89

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_89
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgEraser:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_9b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgRange1:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_ad

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_ad
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgRange2:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_bf

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_bf
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgRange3:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->setCorrectBtnEnable(Z)V

    .line 256
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_d5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_d5
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivReverse:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_e4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_e5

    :cond_e4
    move-object v1, v0

    :goto_e5
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivUndo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private static final initView$lambda$10(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isEraserSelected:Z

    if-nez p1, :cond_26

    const/4 p1, 0x1

    .line 220
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isEraserSelected:Z

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isPencilSelected:Z

    .line 222
    sget p1, Lcom/codemao/toolssdk/R$id;->click_bg_eraser:I

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->showPenRangeWindow(I)V

    .line 223
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_1e

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1e
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    sget-object v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->ERASER:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setCurrentDrawType(Lcom/codemao/toolssdk/image_selector/widget/DrawType;)V

    goto :goto_35

    .line 225
    :cond_26
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isPenRangeWindowShow()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 226
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->dismissPenRangeWindow()V

    goto :goto_35

    .line 228
    :cond_30
    sget p1, Lcom/codemao/toolssdk/R$id;->click_bg_eraser:I

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->showPenRangeWindow(I)V

    .line 231
    :goto_35
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->notifyPencilUI()V

    .line 232
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->notifyEraserUI()V

    return-void
.end method

.method private static final initView$lambda$11(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_10
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->vRange1:Landroid/view/View;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_item_pen_range_select:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 236
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_1f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1f
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->vRange2:Landroid/view/View;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_item_pen_range:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 237
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_2e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2e
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->vRange3:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 238
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_3b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3c

    :cond_3b
    move-object v0, p1

    :goto_3c
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    const/high16 v0, 0x41200000  # 10.0f

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setStrokeWidth(F)V

    .line 239
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->saveStrokeWidth(F)V

    return-void
.end method

.method private static final initView$lambda$12(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_10
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->vRange1:Landroid/view/View;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_item_pen_range:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_1f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1f
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->vRange2:Landroid/view/View;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_item_pen_range_select:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_2e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2e
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->vRange3:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 245
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_3b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3c

    :cond_3b
    move-object v0, p1

    :goto_3c
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    const/high16 v0, 0x41a00000  # 20.0f

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setStrokeWidth(F)V

    .line 246
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->saveStrokeWidth(F)V

    return-void
.end method

.method private static final initView$lambda$13(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_10
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->vRange1:Landroid/view/View;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_item_pen_range:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_1f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1f
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->vRange2:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_2c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2c
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->vRange3:Landroid/view/View;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_item_pen_range_select:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_3b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3c

    :cond_3b
    move-object v0, p1

    :goto_3c
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    const/high16 v0, 0x41f00000  # 30.0f

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setStrokeWidth(F)V

    .line 253
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->saveStrokeWidth(F)V

    return-void
.end method

.method private static final initView$lambda$3(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->finish()V

    return-void
.end method

.method private static final initView$lambda$5(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_f

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_f
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->cutOutBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_18

    return-void

    .line 135
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getImageCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getRandomImageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, v0, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$$ExternalSyntheticLambda11;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    invoke-static {v1}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final initView$lambda$5$lambda$4(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 4

    const-string v0, "$bitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 138
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "data"

    .line 139
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 140
    invoke-virtual {p2, p1, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 141
    invoke-virtual {p2}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->finish()V

    return-void
.end method

.method private static final initView$lambda$6(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_f

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_f
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->undo()V

    .line 146
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->dismissPenRangeWindow()V

    return-void
.end method

.method private static final initView$lambda$7(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_f

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_f
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reverse()V

    .line 150
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->dismissPenRangeWindow()V

    return-void
.end method

.method private static final initView$lambda$8(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p1, :cond_55

    if-eq p1, v0, :cond_19

    const/4 v3, 0x3

    if-eq p1, v3, :cond_19

    goto/16 :goto_93

    .line 162
    :cond_19
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_21

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_21
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setShowCutoutPreview(Z)V

    .line 163
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_2e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2e
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvPrevew:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 164
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_3b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3b
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvPrevew:Landroid/widget/TextView;

    const-string p2, "#FFFFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p0, :cond_4e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4f

    :cond_4e
    move-object v1, p0

    :goto_4f
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivCorrect:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_93

    .line 155
    :cond_55
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->dismissPenRangeWindow()V

    .line 156
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_60

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_60
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvPrevew:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPressed(Z)V

    .line 157
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_6d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_6d
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvPrevew:Landroid/widget/TextView;

    const-string v3, "#FF191A2A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_80

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_80
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setShowCutoutPreview(Z)V

    .line 159
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p0, :cond_8d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8e

    :cond_8d
    move-object v1, p0

    :goto_8e
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivCorrect:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_93
    return v0
.end method

.method private static final initView$lambda$9(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isPencilSelected:Z

    if-nez p1, :cond_26

    const/4 p1, 0x1

    .line 204
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isPencilSelected:Z

    const/4 p1, 0x0

    .line 205
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isEraserSelected:Z

    .line 206
    sget p1, Lcom/codemao/toolssdk/R$id;->click_bg_pencil:I

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->showPenRangeWindow(I)V

    .line 207
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_1e

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1e
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->manualCutout:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    sget-object v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->PEN:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setCurrentDrawType(Lcom/codemao/toolssdk/image_selector/widget/DrawType;)V

    goto :goto_35

    .line 209
    :cond_26
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isPenRangeWindowShow()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 210
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->dismissPenRangeWindow()V

    goto :goto_35

    .line 212
    :cond_30
    sget p1, Lcom/codemao/toolssdk/R$id;->click_bg_pencil:I

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->showPenRangeWindow(I)V

    .line 215
    :goto_35
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->notifyPencilUI()V

    .line 216
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->notifyEraserUI()V

    return-void
.end method

.method private final isPenRangeWindowShow()Z
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_a

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->layoutPenRange:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private final notifyEraserUI()V
    .registers 5

    .line 327
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isEraserSelected:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_27

    .line 328
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivEraser:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_eraser_selected:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_1e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :goto_1f
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvEraser:Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->selectColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_46

    .line 331
    :cond_27
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_2f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivEraser:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_eraser_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_3e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3e
    move-object v1, v0

    :goto_3f
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvEraser:Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->normalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_46
    return-void
.end method

.method private final notifyPencilUI()V
    .registers 5

    .line 337
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isPencilSelected:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_27

    .line 338
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivPencil:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_pencil_selected:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_1e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :goto_1f
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvPencil:Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->selectColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_46

    .line 341
    :cond_27
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_2f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivPencil:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_pencil_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_3e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3e
    move-object v1, v0

    :goto_3f
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvPencil:Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->normalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_46
    return-void
.end method

.method private final saveStrokeWidth(F)V
    .registers 5

    .line 273
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isPencilSelected:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1a

    .line 274
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgPencil:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_30

    .line 275
    :cond_1a
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isEraserSelected:Z

    if-eqz v0, :cond_30

    .line 276
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_26

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_27

    :cond_26
    move-object v1, v0

    :goto_27
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgEraser:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_30
    :goto_30
    return-void
.end method

.method private final setCorrectBtnEnable(Z)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p1, :cond_32

    .line 262
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_e
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivCorrect:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 263
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1d
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivCorrect:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 264
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_2b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2c

    :cond_2b
    move-object v1, p1

    :goto_2c
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvPrevew:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5f

    .line 266
    :cond_32
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_3a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3a
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivCorrect:Landroid/widget/ImageView;

    const v3, 0x3e99999a  # 0.3f

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 267
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_4a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4a
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivCorrect:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 268
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_57

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_58

    :cond_57
    move-object v1, p1

    :goto_58
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->tvPrevew:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5f
    return-void
.end method

.method private final showPenRangeWindow(I)V
    .registers 13

    .line 281
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->layoutPenRange:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v0, :cond_19

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_19
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgPencil:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v4, :cond_27

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_27
    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgPencil:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v4, :cond_38

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_38
    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->layoutPenRange:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v4, :cond_49

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_49
    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivCorrect:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    sub-int/2addr v0, v4

    if-gez v0, :cond_58

    mul-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x2

    move v9, v0

    goto :goto_59

    :cond_58
    const/4 v9, 0x0

    .line 289
    :goto_59
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 290
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez v4, :cond_66

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_66
    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->constraint:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 292
    sget v10, Lcom/codemao/toolssdk/R$id;->layout_pen_range:I

    const/4 v6, 0x3

    const/4 v8, 0x3

    move-object v4, v0

    move v5, v10

    move v7, p1

    .line 291
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x4

    .line 294
    invoke-virtual {v0, v10, v4, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 297
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_81

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_81
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->constraint:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 299
    iget-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isPencilSelected:Z

    const/high16 v0, 0x41200000  # 10.0f

    if-eqz p1, :cond_a9

    .line 300
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_94

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_94
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgPencil:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Ljava/lang/Float;

    if-eqz v4, :cond_a1

    check-cast p1, Ljava/lang/Float;

    goto :goto_a2

    :cond_a1
    move-object p1, v2

    :goto_a2
    if-eqz p1, :cond_ca

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_cc

    .line 301
    :cond_a9
    iget-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->isEraserSelected:Z

    if-eqz p1, :cond_ca

    .line 302
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_b5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_b5
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgEraser:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Ljava/lang/Float;

    if-eqz v4, :cond_c2

    check-cast p1, Ljava/lang/Float;

    goto :goto_c3

    :cond_c2
    move-object p1, v2

    :goto_c3
    if-eqz p1, :cond_ca

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_cc

    :cond_ca
    const/high16 p1, 0x41200000  # 10.0f

    :goto_cc
    const/4 v4, 0x1

    cmpg-float v0, p1, v0

    if-nez v0, :cond_d3

    const/4 v0, 0x1

    goto :goto_d4

    :cond_d3
    const/4 v0, 0x0

    :goto_d4
    if-eqz v0, :cond_e5

    .line 307
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_de

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_df

    :cond_de
    move-object v2, p1

    :goto_df
    iget-object p1, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgRange1:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_116

    :cond_e5
    const/high16 v0, 0x41a00000  # 20.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_ed

    const/4 v0, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v0, 0x0

    :goto_ee
    if-eqz v0, :cond_ff

    .line 310
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_f8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_f9

    :cond_f8
    move-object v2, p1

    :goto_f9
    iget-object p1, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgRange2:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_116

    :cond_ff
    const/high16 v0, 0x41f00000  # 30.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_106

    const/4 v3, 0x1

    :cond_106
    if-eqz v3, :cond_116

    .line 313
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    if-nez p1, :cond_110

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_111

    :cond_110
    move-object v2, p1

    :goto_111
    iget-object p1, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->clickBgRange3:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_116
    :goto_116
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 127
    sget v0, Lcom/codemao/toolssdk/R$anim;->toolsdk_exit_bottom:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->hideBottomUIMenu()V

    .line 77
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->fullScreen()V

    .line 78
    sget p1, Lcom/codemao/toolssdk/R$layout;->toolsdk_activity_is_cutout:I

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "setContentView(this, R.l…olsdk_activity_is_cutout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    .line 79
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView()V

    .line 80
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initData()V

    .line 81
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initNotchScreen()V

    return-void
.end method
