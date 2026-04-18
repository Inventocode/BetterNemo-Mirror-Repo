.class public final Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CTCameraCaptureActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCTCameraCaptureActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CTCameraCaptureActivity.kt\ncom/codemao/toolssdk/page/camera/CTCameraCaptureActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,111:1\n41#2,7:112\n*S KotlinDebug\n*F\n+ 1 CTCameraCaptureActivity.kt\ncom/codemao/toolssdk/page/camera/CTCameraCaptureActivity\n*L\n29#1:112,7\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;

.field private static final imageKey:Ljava/lang/String;


# instance fields
.field private final cameraVM$delegate:Lkotlin/Lazy;

.field private containerView:Landroidx/fragment/app/FragmentContainerView;


# direct methods
.method public static synthetic $r8$lambda$eipl8YQn0p61poMaL0gxljZjwtY(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->onCreate$lambda$0(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->Companion:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;

    const-string v0, "imageUrl"

    .line 26
    sput-object v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->imageKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 47
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 29
    iput-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->cameraVM$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getImageKey$cp()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method private final getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->cameraVM$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    return-object v0
.end method

.method private final getFragmentNavigation()Landroidx/fragment/app/FragmentContainerView;
    .registers 4

    .line 57
    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Landroid/view/ViewGroup;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 60
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final hideSystemBars()V
    .registers 3

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 101
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    const/4 v1, 0x2

    .line 103
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    :cond_1d
    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->hideSystemBars()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 35
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->getFragmentNavigation()Landroidx/fragment/app/FragmentContainerView;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->containerView:Landroidx/fragment/app/FragmentContainerView;

    const/4 v1, 0x0

    const-string v2, "containerView"

    if-nez v0, :cond_1a

    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1a
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    if-nez p1, :cond_4a

    .line 40
    sget p1, Lcom/codemao/toolssdk/R$navigation;->toolsdk_navigation_kn_camera_add_material:I

    invoke-static {p1}, Landroidx/navigation/fragment/NavHostFragment;->create(I)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object p1

    const-string v0, "create(R.navigation.tool…n_kn_camera_add_material)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->containerView:Landroidx/fragment/app/FragmentContainerView;

    if-nez v3, :cond_3a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3b

    :cond_3a
    move-object v1, v3

    :goto_3b
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 45
    :cond_4a
    :try_start_4a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    .line 47
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6c} :catch_6c

    .line 51
    :catch_6c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSupportNavigateUp()Z
    .registers 3

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->containerView:Landroidx/fragment/app/FragmentContainerView;

    if-nez v1, :cond_e

    const-string v1, "containerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_e
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 68
    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "supportFragmentManager\n …           .navController"

    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    :goto_36
    return v0
.end method
