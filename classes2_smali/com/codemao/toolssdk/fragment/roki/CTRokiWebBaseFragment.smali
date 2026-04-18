.class public Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;
.super Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;
.source "CTRokiWebBaseFragment.kt"


# instance fields
.field private sdkManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

.field private simple:Ljava/lang/Boolean;

.field private testUrl:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

.field private workId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSimple$p(Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;)Ljava/lang/Boolean;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->simple:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$showErrorLoad(Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;I)V
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->showErrorLoad(I)V

    return-void
.end method

.method private final createManager()Lcom/codemao/toolssdk/manager/CMToolsManager;
    .registers 10

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 60
    new-instance v1, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    invoke-direct {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;-><init>()V

    .line 61
    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setContext(Landroid/content/Context;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v0

    .line 62
    new-instance v8, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const-string v2, "ROKI"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setToolsWebView(Lcom/codemao/toolssdk/view/ToolsWebView;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    .line 66
    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->token:Ljava/lang/String;

    .line 67
    sget-object v3, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v4

    goto :goto_3a

    :cond_38
    const-wide/16 v4, -0x1

    .line 68
    :goto_3a
    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUsername()Ljava/lang/String;

    move-result-object v3

    goto :goto_46

    :cond_45
    const/4 v3, 0x0

    .line 65
    :goto_46
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v0

    .line 72
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->build()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    .line 75
    :cond_5b
    sget-object v0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;->setTestManager(Lcom/codemao/toolssdk/manager/CMToolsManager;)V

    .line 76
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    return-object v0
.end method

.method private final getParams()V
    .registers 4

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    sget-object v2, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getBUNDLE_KEY_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->token:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_26

    sget-object v2, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getBUNDLE_KEY_WORK_ID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->workId:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3a

    sget-object v2, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getBUNDLE_KEY_TEST_URL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    move-object v0, v1

    :goto_3b
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->testUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_52

    sget-object v1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getBUNDLE_KEY_SIMPLE()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_52
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->simple:Ljava/lang/Boolean;

    return-void
.end method

.method private final getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;
    .registers 2

    .line 101
    new-instance v0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;-><init>(Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;)V

    return-object v0
.end method


# virtual methods
.method public executeLoad()V
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->showLoadingDialog()V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 86
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->workId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->loadCreatePage(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public exitPage()V
    .registers 2

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public loadCreatePage(Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    .line 93
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
    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->testUrl:Ljava/lang/String;

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :cond_1b
    if-nez v0, :cond_2a

    .line 94
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz p1, :cond_3a

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->testUrl:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadTestFullUrl(Ljava/lang/String;)V

    goto :goto_3a

    .line 96
    :cond_2a
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v1, :cond_3a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadUrl$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;ILjava/lang/Object;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget p2, Lcom/codemao/toolssdk/R$layout;->toolsdk_fragment_create_bcm:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 39
    sget p2, Lcom/codemao/toolssdk/R$id;->webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/view/ToolsWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 147
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 148
    sget-object v0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;->setTestManager(Lcom/codemao/toolssdk/manager/CMToolsManager;)V

    .line 149
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->destroy()V

    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 137
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 138
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->onResume()V

    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 143
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->sdkManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->onStop()V

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
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->getParams()V

    .line 46
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->createManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    .line 47
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->executeLoad()V

    return-void
.end method
