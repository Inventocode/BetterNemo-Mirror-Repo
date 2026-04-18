.class public final Lcom/codemao/toolssdk/activity/PlayerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/PlayerActivity$Companion;
    }
.end annotation


# instance fields
.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

.field private cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

.field private enableResetBtn:Z

.field private enableVirtualKeyboardBtn:Z


# direct methods
.method public static synthetic $r8$lambda$07GcaVsVLZeEWNlfH0KU0NoJwkY(Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/PlayerActivity;->onCreate$lambda$2(Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4H6g9wH7kDgCxlr4jrRN2rClukI(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/PlayerActivity;->onCreate$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CDgovLw8RYAMiThGlKzraeEEybQ(Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/PlayerActivity;->onCreate$lambda$3(Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0uBDeN8xviYj6gngpS2y9XF9zc(Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/PlayerActivity;->onCreate$lambda$0(Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/activity/PlayerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/PlayerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableResetBtn:Z

    .line 33
    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableVirtualKeyboardBtn:Z

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/codemao/toolssdk/activity/PlayerActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    return-object p0
.end method

.method private final checkVirtualBtn(Z)V
    .registers 4

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_16

    .line 119
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez p1, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_e

    :cond_d
    move-object v0, p1

    :goto_e
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->enableVirtualBtn:Landroid/widget/Button;

    const-string v0, "隐藏虚拟键盘"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 121
    :cond_16
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez p1, :cond_1e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1f

    :cond_1e
    move-object v0, p1

    :goto_1f
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->enableVirtualBtn:Landroid/widget/Button;

    const-string v0, "显示虚拟键盘"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_26
    return-void
.end method

.method private final checkWebBtn()V
    .registers 5

    .line 105
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableResetBtn:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_17

    .line 106
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez v0, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->showResetBtn:Landroid/widget/Button;

    const-string v3, "隐藏Web重置按钮"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 108
    :cond_17
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez v0, :cond_1f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->showResetBtn:Landroid/widget/Button;

    const-string v3, "显示Web重置按钮"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_26
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableVirtualKeyboardBtn:Z

    if-eqz v0, :cond_3b

    .line 111
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez v0, :cond_32

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_33

    :cond_32
    move-object v1, v0

    :goto_33
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->showVirtualKeyboardBtn:Landroid/widget/Button;

    const-string v1, "隐藏Web虚拟键盘按钮"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4b

    .line 113
    :cond_3b
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez v0, :cond_43

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_44

    :cond_43
    move-object v1, v0

    :goto_44
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->showVirtualKeyboardBtn:Landroid/widget/Button;

    const-string v1, "显示Web虚拟键盘按钮"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_4b
    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez p0, :cond_f

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerKnWork;->resetPlayer()V

    :cond_1a
    return-void
.end method

.method private static final onCreate$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V
    .registers 4

    const-string p2, "$virtualEnable"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-boolean p2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 86
    iget-object p2, p1, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez p2, :cond_1a

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1a
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p2

    if-eqz p2, :cond_27

    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerKnWork;->enableVirtualKeyBoardBtn(Z)V

    .line 87
    :cond_27
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/activity/PlayerActivity;->checkVirtualBtn(Z)V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-boolean p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableResetBtn:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableResetBtn:Z

    .line 91
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez p1, :cond_15

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_15
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableResetBtn:Z

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableVirtualKeyboardBtn:Z

    invoke-interface {p1, v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerKnWork;->setPlayer(ZZ)V

    .line 92
    :cond_24
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/PlayerActivity;->checkWebBtn()V

    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/codemao/toolssdk/activity/PlayerActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-boolean p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableVirtualKeyboardBtn:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableVirtualKeyboardBtn:Z

    .line 96
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez p1, :cond_15

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_15
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableResetBtn:Z

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->enableVirtualKeyboardBtn:Z

    invoke-interface {p1, v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerKnWork;->setPlayer(ZZ)V

    .line 97
    :cond_24
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/PlayerActivity;->checkWebBtn()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15

    .line 38
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    const-string v0, "binding"

    const/4 v1, 0x0

    if-nez p1, :cond_1b

    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1b
    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "workId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    new-instance p1, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Builder;

    invoke-direct {p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Builder;-><init>()V

    .line 45
    invoke-virtual {p1, p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->setContext(Landroid/content/Context;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object p1

    .line 46
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez v2, :cond_3d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3d
    iget-object v2, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-interface {p1, v2}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsWebView(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object p1

    .line 47
    new-instance v2, Lcom/codemao/toolssdk/activity/PlayerActivity$onCreate$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/activity/PlayerActivity$onCreate$1;-><init>(Lcom/codemao/toolssdk/activity/PlayerActivity;)V

    invoke-interface {p1, v2}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v5

    .line 74
    sget-object p1, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object p1

    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    goto :goto_5b

    :cond_5a
    move-object v7, v1

    :goto_5b
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const-string v6, "KN_PLAYER"

    invoke-static/range {v5 .. v12}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase$DefaultImpls;->setToolsData$default(Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->build2()Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    move-result-object v3

    .line 44
    iput-object v3, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v3, :cond_76

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 76
    invoke-static/range {v3 .. v8}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork$DefaultImpls;->loadUrl$default(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 78
    :cond_76
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez p1, :cond_7e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_7e
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->resetBtn:Landroid/widget/Button;

    new-instance v2, Lcom/codemao/toolssdk/activity/PlayerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/activity/PlayerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/PlayerActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, v2}, Lcom/codemao/toolssdk/activity/PlayerActivity;->checkVirtualBtn(Z)V

    .line 83
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/PlayerActivity;->checkWebBtn()V

    .line 84
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez v2, :cond_9f

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_9f
    iget-object v2, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->enableVirtualBtn:Landroid/widget/Button;

    new-instance v3, Lcom/codemao/toolssdk/activity/PlayerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, p0}, Lcom/codemao/toolssdk/activity/PlayerActivity$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/activity/PlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez p1, :cond_b1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_b1
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->showResetBtn:Landroid/widget/Button;

    new-instance v2, Lcom/codemao/toolssdk/activity/PlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/activity/PlayerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/PlayerActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    if-nez p1, :cond_c3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_c4

    :cond_c3
    move-object v1, p1

    :goto_c4
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->showVirtualKeyboardBtn:Landroid/widget/Button;

    new-instance v0, Lcom/codemao/toolssdk/activity/PlayerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/PlayerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/PlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 136
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->destroy()V

    :cond_a
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 126
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 127
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/PlayerActivity;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->onStop()V

    :cond_a
    return-void
.end method
