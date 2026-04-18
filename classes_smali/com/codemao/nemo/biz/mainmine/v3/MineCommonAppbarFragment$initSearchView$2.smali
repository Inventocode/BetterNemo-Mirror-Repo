.class public final Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;
.super Ljava/lang/Object;
.source "MineCommonAppbarFragment.kt"

# interfaces
.implements Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->initSearchView(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $rootView:Landroid/view/View;

.field final synthetic $searchView:Landroid/view/View;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment<",
            "TBinding;TBindingPad;TViewModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment<",
            "TBinding;TBindingPad;TViewModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;->$searchView:Landroid/view/View;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;->$rootView:Landroid/view/View;

    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get2Activity()Landroid/app/Activity;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public get2Intent()Landroid/content/Intent;
    .registers 4

    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/activity/NativeSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getChildView()Landroid/view/View;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;->$searchView:Landroid/view/View;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 3

    .line 66
    const-class v0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClass.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;->$rootView:Landroid/view/View;

    return-object v0
.end method
