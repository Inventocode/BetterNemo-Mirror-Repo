.class public Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment;
.super Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;
.source "CTAIKidsWebBizFragment.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment;->getCppManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    move-result-object p1

    if-eqz p1, :cond_13

    sget-object p2, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment$onViewCreated$1;->INSTANCE:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment$onViewCreated$1;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->setVideoPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V

    :cond_13
    return-void
.end method
