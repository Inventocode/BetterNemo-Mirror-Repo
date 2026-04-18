.class public abstract Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;
.super Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;
.source "CppWebViewBiz.kt"


# instance fields
.field private stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;


# direct methods
.method public static synthetic $r8$lambda$QA7uKqXuXysCkOeORGl1pMGNYHU(Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->keyboardListener$lambda$0(Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    .line 39
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 42
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "系统字体大小："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    .line 39
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 42
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "系统字体大小："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    .line 39
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 42
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "系统字体大小："

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    return-void
.end method

.method private final createStateView()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-nez v0, :cond_12

    new-instance v0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;-><init>(Landroid/content/Context;)V

    :cond_12
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    return-void
.end method

.method private final keyboardListener()V
    .registers 3

    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static final keyboardListener$lambda$0(Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "insets.getInsets(WindowInsetsCompat.Type.ime())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v0

    .line 182
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    if-ge p1, v0, :cond_23

    const/16 p1, 0x1e

    .line 184
    :cond_23
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postSoftKeyboardChangedEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;I)V

    .line 185
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyboard height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public getAgentCacheDir()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    const-string v1, "unknow"

    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/uploadAgent/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnterFrom()Ljava/lang/String;
    .registers 2

    .line 201
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBiz;->getEnterFrom()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getHeaderToken()Ljava/lang/String;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getUserToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const-string v0, ""

    :cond_e
    return-object v0
.end method

.method public getToolType()Ljava/lang/String;
    .registers 2

    .line 197
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getUploadCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 63
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getLifecycleCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public getWorkTypeAndEnterFrom()Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_b

    move-object v1, v2

    :cond_b
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->getEnterFrom()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    goto :goto_13

    :cond_12
    move-object v2, v3

    :goto_13
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public initKeyboardListener()V
    .registers 1

    .line 166
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->keyboardListener()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 205
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->onDestroy()V

    :cond_a
    return-void
.end method

.method public removeKeyboardListener()V
    .registers 4

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Landroid/app/Activity;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-eqz v0, :cond_19

    .line 192
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 193
    :cond_19
    invoke-static {v2, p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->removeLayoutChangeListener(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public abstract synthetic setAccountListener(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V
.end method

.method public abstract synthetic setBindPhoneResult(Z)V
.end method

.method public setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBiz;->setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V

    :cond_9
    return-void
.end method

.method public setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBiz;->setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V

    :cond_9
    return-void
.end method

.method public abstract synthetic setLoginResult(Z)V
.end method

.method public setPythonCapture(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBiz;->setPythonCapture(Lkotlin/jvm/functions/Function1;)V

    :cond_9
    return-void
.end method

.method public setStateButtonsListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->createStateView()V

    .line 131
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->setButtonsOnClickListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V

    :cond_f
    return-void
.end method

.method public setVideoPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBiz;->setVideoPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V

    :cond_9
    return-void
.end method
