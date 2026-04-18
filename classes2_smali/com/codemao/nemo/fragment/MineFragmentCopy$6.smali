.class Lcom/codemao/nemo/fragment/MineFragmentCopy$6;
.super Ljava/lang/Object;
.source "MineFragmentCopy.java"

# interfaces
.implements Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MineFragmentCopy;->createPresenter()Lcom/giu/xzz/mvp/BasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$6;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get2Activity()Landroid/app/Activity;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$6;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public get2Intent()Landroid/content/Intent;
    .registers 4

    .line 373
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$6;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/activity/NativeSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getChildView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 378
    const-class v0, Lcom/codemao/nemo/fragment/MineFragmentCopy$6;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$6;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->root:Landroid/view/View;

    return-object v0
.end method
