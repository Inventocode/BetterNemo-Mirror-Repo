.class public final Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;
.super Lcom/ljwx/baseactivity/BaseBindingActivity;
.source "UserRelatedAgreementActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseactivity/BaseBindingActivity<",
        "Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserRelatedAgreementActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserRelatedAgreementActivity.kt\ncom/codemao/nemo/biz/user/UserRelatedAgreementActivity\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n*L\n1#1,42:1\n15#2,7:43\n15#2,7:50\n15#2,7:57\n15#2,7:64\n15#2,7:71\n15#2,7:78\n*S KotlinDebug\n*F\n+ 1 UserRelatedAgreementActivity.kt\ncom/codemao/nemo/biz/user/UserRelatedAgreementActivity\n*L\n22#1:43,7\n25#1:50,7\n28#1:57,7\n31#1:64,7\n34#1:71,7\n37#1:78,7\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v0, 0x7f0d006b

    .line 11
    invoke-direct {p0, v0}, Lcom/ljwx/baseactivity/BaseBindingActivity;-><init>(I)V

    return-void
.end method


# virtual methods
.method public commonStep4SetViewListener()V
    .registers 7

    .line 21
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep4SetViewListener()V

    .line 22
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;->userAgreement:Lcom/ljwx/view/SplitTextView;

    const-string v1, "mBinding.userAgreement"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$1;-><init>(Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;->privacyPolicy:Lcom/ljwx/view/SplitTextView;

    const-string v1, "mBinding.privacyPolicy"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$2;-><init>(Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;->kidsProtect:Lcom/ljwx/view/SplitTextView;

    const-string v1, "mBinding.kidsProtect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$3;-><init>(Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;->policySummary:Lcom/ljwx/view/SplitTextView;

    const-string v1, "mBinding.policySummary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$4;-><init>(Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;->collectChecklist:Lcom/ljwx/view/SplitTextView;

    const-string v1, "mBinding.collectChecklist"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$5;-><init>(Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/ActivityUserRelatedAgreementBinding;->sharedList:Lcom/ljwx/view/SplitTextView;

    const-string v1, "mBinding.sharedList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$6;-><init>(Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 14
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseBindingActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseActivity;->setStatusBarTransparent(Z)V

    const v0, 0x7f060194

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/ljwx/baseactivity/BaseActivity;->setStatusBar(IZ)Lcom/ljwx/baseapp/view/IViewStatusBar;

    .line 17
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->enableCommonSteps()V

    return-void
.end method
