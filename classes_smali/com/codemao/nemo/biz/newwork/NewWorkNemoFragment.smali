.class public final Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;
.super Lcom/ljwx/basefragment/BaseBindingFragment;
.source "NewWorkNemoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/basefragment/BaseBindingFragment<",
        "Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewWorkNemoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewWorkNemoFragment.kt\ncom/codemao/nemo/biz/newwork/NewWorkNemoFragment\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n+ 3 View.kt\ncom/ljwx/baseapp/extensions/ViewKt\n*L\n1#1,67:1\n15#2,7:68\n15#2,7:75\n15#2,7:82\n15#2,7:89\n6#3,2:96\n6#3,2:98\n*S KotlinDebug\n*F\n+ 1 NewWorkNemoFragment.kt\ncom/codemao/nemo/biz/newwork/NewWorkNemoFragment\n*L\n26#1:68,7\n31#1:75,7\n36#1:82,7\n42#1:89,7\n52#1:96,2\n53#1:98,2\n*E\n"
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private enableUserInfoChangeListener:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;->_$_findViewCache:Ljava/util/Map;

    const v0, 0x7f0d0164

    .line 21
    invoke-direct {p0, v0}, Lcom/ljwx/basefragment/BaseBindingFragment;-><init>(I)V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;->enableUserInfoChangeListener:Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public commonStep2InitView()V
    .registers 5

    .line 51
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep2InitView()V

    .line 52
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;->landscapeContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "mBinding.landscapeContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x8

    .line 6
    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;->verticalContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "mBinding.verticalContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_36

    :cond_34
    const/16 v2, 0x8

    .line 6
    :goto_36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected getEnableUserInfoChangeListener()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;->enableUserInfoChangeListener:Z

    return v0
.end method

.method public final getViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "创作入口"

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;

    iget-object p1, p1, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;->teachContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p2, "mBinding.teachContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment$onViewCreated$1;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;)V

    .line 20
    new-instance v0, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;

    iget-object p1, p1, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;->formTemplateContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p2, "mBinding.formTemplateContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment$onViewCreated$2;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;)V

    .line 20
    new-instance v0, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;

    iget-object p1, p1, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;->verticalContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p2, "mBinding.verticalContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment$onViewCreated$3;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;)V

    .line 20
    new-instance v0, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;

    iget-object p1, p1, Lcom/codemao/nemo/databinding/FragmentNewWorkNemoBinding;->landscapeContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p2, "mBinding.landscapeContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment$onViewCreated$4;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;)V

    .line 20
    new-instance v0, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public userInfoChange(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;I)V
    .registers 3

    .line 61
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseToolsFragment;->userInfoChange(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;I)V

    .line 62
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkNemoFragment;->commonStep2InitView()V

    return-void
.end method
