.class public Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;
.super Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;
.source "CTAIKidsWebBaseFragment.kt"


# instance fields
.field private courseUrl:Ljava/lang/String;

.field private sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

.field private testUrl:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$showErrorLoad(Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;I)V
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->showErrorLoad(I)V

    return-void
.end method

.method private final createManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
    .registers 10

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_45

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

    const-string v2, "AI_KIDS"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsWebView(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->token:Ljava/lang/String;

    const-wide/32 v3, 0x756b5b3

    const-string v5, "ljwx"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 65
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->build()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    .line 68
    :cond_45
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    return-object v0
.end method

.method private final getParams()V
    .registers 4

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    sget-object v2, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;->getBUNDLE_KEY_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->token:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_26

    sget-object v2, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;->getBUNDLE_KEY_COURSE_URL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->courseUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_39

    sget-object v1, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebFragment$Companion;->getBUNDLE_KEY_TEST_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_39
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->testUrl:Ljava/lang/String;

    return-void
.end method

.method private final getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;
    .registers 2

    .line 93
    new-instance v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1;-><init>(Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;)V

    return-object v0
.end method


# virtual methods
.method public executeLoad()V
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->showLoadingDialog()V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 78
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->courseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->loadCreatePage(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public exitPage()V
    .registers 2

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final getCppManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    return-object v0
.end method

.method public loadCreatePage(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    .line 85
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->testUrl:Ljava/lang/String;

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :cond_1b
    if-nez v0, :cond_2c

    .line 86
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->testUrl:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->loadFullTestUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 88
    :cond_2c
    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz v2, :cond_38

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork$DefaultImpls;->loadUrl$default(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget p2, Lcom/codemao/toolssdk/R$layout;->toolsdk_fragment_code_lab_web:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 39
    sget p2, Lcom/codemao/toolssdk/R$id;->webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 151
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->destroy()V

    :cond_a
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 141
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 142
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->onResume()V

    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 146
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 147
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->onStop()V

    :cond_a
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->getParams()V

    .line 46
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->createManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    .line 47
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->executeLoad()V

    return-void
.end method
