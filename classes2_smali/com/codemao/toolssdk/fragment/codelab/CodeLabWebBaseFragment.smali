.class public Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;
.super Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;
.source "CodeLabWebBaseFragment.kt"


# instance fields
.field private fileUrl:Ljava/lang/String;

.field private projectCode:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

.field private testUrl:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$showErrorLoad(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;I)V
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->showErrorLoad(I)V

    return-void
.end method

.method private final createManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
    .registers 10

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 59
    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;

    invoke-direct {v1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;-><init>()V

    .line 60
    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->setContext(Landroid/content/Context;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 61
    new-instance v8, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const-string v2, "CODE_LAB"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsWebView(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->token:Ljava/lang/String;

    const-wide/32 v3, 0x756b5b3

    const-string v5, "ljwx"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->token:Ljava/lang/String;

    const-string v3, ".codemao.cn"

    invoke-direct {v1, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setCookie(Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 65
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->build()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    .line 68
    :cond_52
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    return-object v0
.end method

.method private final getParams()V
    .registers 4

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    sget-object v2, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->token:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_26

    sget-object v2, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_PROJECT_CODE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->projectCode:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3a

    sget-object v2, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_PROJECT_ID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    move-object v0, v1

    :goto_3b
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->projectId:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4e

    sget-object v2, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_FILE_URL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_4e
    move-object v0, v1

    :goto_4f
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->fileUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_61

    sget-object v1, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_TEST_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_61
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->testUrl:Ljava/lang/String;

    return-void
.end method

.method private final getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;
    .registers 2

    .line 96
    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment$getSessionListener$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment$getSessionListener$1;-><init>(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;)V

    return-object v0
.end method


# virtual methods
.method public executeLoad()V
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->showLoadingDialog()V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->fileUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->loadCreatePage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public exitPage()V
    .registers 2

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final getCppManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    return-object v0
.end method

.method public loadCreatePage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 86
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->projectCode:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->projectId:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    if-nez v0, :cond_23

    goto :goto_5a

    :cond_23
    if-eqz p2, :cond_2e

    .line 88
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    :goto_2f
    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->testUrl:Ljava/lang/String;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3c

    :cond_3b
    const/4 v1, 0x1

    :cond_3c
    if-nez v1, :cond_4d

    .line 89
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz p1, :cond_65

    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->testUrl:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->token:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->loadFullTestUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 91
    :cond_4d
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz v1, :cond_65

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork$DefaultImpls;->loadUrl$default(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_65

    .line 87
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz p1, :cond_65

    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->projectCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->projectId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->loadCodeLabProject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget p2, Lcom/codemao/toolssdk/R$layout;->toolsdk_fragment_code_lab_web:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 37
    sget p2, Lcom/codemao/toolssdk/R$id;->webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->destroy()V

    :cond_a
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->getParams()V

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->createManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    .line 45
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBaseFragment;->executeLoad()V

    return-void
.end method
