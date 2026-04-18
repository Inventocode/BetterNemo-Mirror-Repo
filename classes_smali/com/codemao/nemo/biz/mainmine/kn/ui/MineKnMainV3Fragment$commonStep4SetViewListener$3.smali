.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep4SetViewListener$3;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnMainV3Fragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->commonStep4SetViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep4SetViewListener$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 204
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep4SetViewListener$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 4

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep4SetViewListener$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->access$getTopTabLayout(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result p1

    if-ne p1, v1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_2e

    .line 206
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep4SetViewListener$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->access$getTopTabLayout(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_3d

    .line 208
    :cond_2e
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep4SetViewListener$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->access$getTopTabLayout(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_3d
    :goto_3d
    return-void
.end method
